import math
import multiprocessing as mp
import itertools
from psutil import virtual_memory
import subprocess
from pathlib import Path
import sys


def run_cppp_project(planner, selector, domain, percentage):
    args_row = f'run {planner} s {selector} d {domain} p {percentage}'
    args_list = ['dotnet', 'run', '--no-build', str(planner), 's', str(selector), 'd', str(domain), 'p', str(percentage)]
    print(f'running process {args_row}')
    try:
        result = subprocess.run(args_list, capture_output=True, text=True)
        output_filename = args_row.replace(' ', '_')
        with open(f'results/{output_filename}.txt', 'w') as text_file:
            text_file.write(result.stdout)
        with open(f'errors/{output_filename}.txt', 'w') as text_file:
            text_file.write(result.stderr)
        print(f'done {output_filename}')
    except Exception as e:
        print(e)


def get_all_planners(planner_to_run):
    # return list(range(0, 2))  # [0, 1]
    return [int(planner_to_run)]


def get_all_selectors():
    return list(range(0, 4))  # [0, 3]


def get_all_domains():
    domains = list(range(0, 6))  # [0, 5] + 11
    domains.append(11)
    return domains


def get_all_percentages():
    return list(range(0, 101, 5))  # [0, 100] (with jumps of 5)


def get_all_possible_arguments(planner_to_run):
    planners = get_all_planners(planner_to_run)
    selectors = get_all_selectors()
    domains = get_all_domains()
    percentages = get_all_percentages()
    all_args = get_all_permutations(planners, selectors, domains, percentages)
    return all_args


def get_all_permutations(planners, selectors, domains, percentages):
    all_lists = [planners, selectors, domains, percentages]
    return list(itertools.product(*all_lists))


def run_all_cppp_processes(planner_to_run):
    # num_of_cpus = mp.cpu_count()
    num_of_cpus = 128
    # mem = virtual_memory()
    # mem = 494
    # ram_size_in_gb = mem.total / math.pow(2, 30)  # total physical memory available
    ram_size_in_gb = 494
    print(f'Running the CPPP project on {num_of_cpus} CPUs on parallel, with {ram_size_in_gb} GB of RAM available')

    print('Applying selectors:')
    print(get_all_selectors())
    print('Applying domains:')
    print(get_all_domains())
    print('Applying percentages:')
    print(get_all_percentages())

    all_arguments = get_all_possible_arguments(planner_to_run)
    n = len(all_arguments)
    print(f'Total amount of permutations is {n}')

    ram_for_each_process = 6
    cpus_for_each_process = 4
    ram_limit = int(ram_size_in_gb // ram_for_each_process)
    cpu_limit = int(num_of_cpus // cpus_for_each_process)
    num_of_parallel_jobs = min(ram_limit, cpu_limit)
    print(f'RAM limit = {ram_limit}, and CPUs limit = {cpu_limit}')
    print(f'So the number of jobs that can be executed in parallel is {num_of_parallel_jobs}')
    print(f'We will have a maximal amount of repetitions of {n / num_of_parallel_jobs}')

    # Results dir:
    Path("results").mkdir(parents=True, exist_ok=True)
    Path("errors").mkdir(parents=True, exist_ok=True)
    pool = mp.Pool(processes=num_of_parallel_jobs)
    print('Running all CPPP processes now...')
    for args_perm in all_arguments:
       pool.apply_async(run_cppp_project, args=args_perm)
    # pool.apply_async(run_cppp_project, args=(0, 0, 0, 100))
    # pool.apply_async(run_cppp_project, args=(0, 0, 0, 95))
    # pool.apply_async(run_cppp_project, args=(0, 1, 0, 95))
    # pool.apply_async(run_cppp_project, args=(1, 0, 0, 95))

    print('Applied all of the jobs into the thread-pool')
    pool.close()
    print('Waiting for all processes to finish...')
    pool.join()
    print('All done :)')


if __name__ == '__main__':
    run_all_cppp_processes(sys.argv[1])
