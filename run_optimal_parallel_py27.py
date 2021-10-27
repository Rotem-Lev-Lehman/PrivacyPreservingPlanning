import multiprocessing as mp
from multiprocessing import Manager
import itertools
import subprocess
try:
    from pathlib import Path
except ImportError:
    from pathlib2 import Path  # python 2 backport
import time
import os
from os import listdir
from os.path import isfile, join
import sys


def get_free_sympa_planners(free_sympa_files):
    sympa1 = free_sympa_files.get()
    sympa2 = sympa1 + 1

    return sympa1, sympa2


def create_free_sympa_files(start_sympa, end_sympa):
    sympa_files = Manager().Queue()
    amount_of_sympa_files = end_sympa + 1 - start_sympa
    half_amount = amount_of_sympa_files // 2
    for i in range(start_sympa, end_sympa, 2):
        sympa_files.put(i)
    return sympa_files, half_amount


def release_sympa_planners(free_sympa_files, sympa1, sympa2):
    free_sympa_files.put(sympa1)


def run_optimal_planner(results_dir, errors_dir, free_sympa_files, domain, problem):
    optimal_planner_num = '2'
    ff_and_sympa_selector_num = '0'
    args_row = 'run ' + str(domain) + ' p ' + str(problem)
    sympa1, sympa2 = get_free_sympa_planners(free_sympa_files)
    args_list = ['dotnet', 'run', '--no-build', optimal_planner_num, 's', ff_and_sympa_selector_num, 'd', str(domain), 'p', str(problem), 'sympa', str(sympa1), str(sympa2)]
    print('running process ' + args_row + ', with SymPA files: ' + str(sympa1) + ', ' + str(sympa2))
    try:

        output_filename = args_row.replace(' ', '_')
        with open(results_dir + '/' + output_filename + '.txt', 'w') as results_file:
            with open(errors_dir + '/' + output_filename + '.txt', 'w') as errors_file:
                subprocess.call(args_list, stdout=results_file, stderr=errors_file, universal_newlines=True)

        print('done ' + output_filename)
    except Exception as e:
        print(e)
    release_sympa_planners(free_sympa_files, sympa1, sympa2)


def run_optimal_planner_without_sympa(results_dir, errors_dir, domain, problem):
    optimal_planner_num = '2'
    ff_selector_num = '3'
    args_row = 'run ' + str(domain) + ' p ' + str(problem)
    args_list = ['dotnet', 'run', '--no-build', optimal_planner_num, 's', ff_selector_num, 'd', str(domain), 'p', str(problem)]
    print('running process ' + args_row + ', without SymPA files')
    try:
        output_filename = args_row.replace(' ', '_')
        with open(results_dir + '/' + output_filename + '.txt', 'w') as results_file:
            with open(errors_dir + '/' + output_filename + '.txt', 'w') as errors_file:
                subprocess.call(args_list, stdout=results_file, stderr=errors_file, universal_newlines=True)

        print('done ' + output_filename)
    except Exception as e:
        print(e)


def get_parameters_from_filename(filename):
    s = filename.split('.txt')[0].split('_')
    domain = int(s[1])
    problem = int(s[3])
    return domain, problem


def get_already_done_problems():
    if os.path.isdir(results_dir):
        all_files = [f for f in listdir(results_dir) if isfile(join(results_dir, f))]
        done_problems = [get_parameters_from_filename(f) for f in all_files]
        return done_problems
    return []


def get_all_domains(domains_to_run):
    # domains = list(range(0, 6))  # [0, 5] + 11
    # domains.append(11)
    domains = [int(d) for d in domains_to_run]
    return domains


def get_problems(n):
    return list(range(n))


def get_all_problems():
    problems = {
        0: get_problems(20),
        1: get_problems(20),
        2: get_problems(20),
        3: get_problems(20),
        4: get_problems(21),  # logistics has 21 problems and not 20
        5: get_problems(20),
        11: get_problems(20)
    }
    return problems


def get_all_possible_arguments(domains_to_run, free_sympa_files):
    domains = get_all_domains(domains_to_run)
    problems = get_all_problems()
    all_args = get_all_parameters(results_dir, errors_dir, free_sympa_files, domains, problems)

    done_probs = get_already_done_problems()
    all_args_to_run = [t for t in all_args if t not in done_probs]
    return all_args_to_run


def get_all_possible_arguments_without_sympa(domains_to_run):
    domains = get_all_domains(domains_to_run)
    problems = get_all_problems()
    all_args = get_all_parameters_without_sympa(results_dir, errors_dir, domains, problems)

    done_probs = get_already_done_problems()
    all_args_to_run = [t for t in all_args if t not in done_probs]
    return all_args_to_run


def get_all_parameters(results_dir, errors_dir, free_sympa_files, domains, problems):
    all_params = []
    for d in domains:
        d_list = [d]
        p_list = problems[d]
        all_params += get_all_permutations([results_dir], [errors_dir], [free_sympa_files], d_list, p_list)

    return all_params


def get_all_parameters_without_sympa(results_dir, errors_dir, domains, problems):
    all_params = []
    for d in domains:
        d_list = [d]
        p_list = problems[d]
        all_params += get_all_permutations_without_sympa([results_dir], [errors_dir], d_list, p_list)

    return all_params


def get_all_permutations(results_dir, errors_dir, sympa, domains, problems):
    all_lists = [results_dir, errors_dir, sympa, domains, problems]
    return list(itertools.product(*all_lists))


def get_all_permutations_without_sympa(results_dir, errors_dir, domains, problems):
    all_lists = [results_dir, errors_dir, domains, problems]
    return list(itertools.product(*all_lists))


def run_all_cppp_processes(free_sympa_files, num_of_sympa_parallel, domains_to_run):
    # num_of_cpus = mp.cpu_count()
    num_of_cpus = 128
    # mem = virtual_memory()
    # mem = 494
    # ram_size_in_gb = mem.total / math.pow(2, 30)  # total physical memory available
    ram_size_in_gb = 400
    print('Running the CPPP project on ' + str(num_of_cpus) + ' CPUs on parallel, with ' + str(ram_size_in_gb) + ' GB of RAM available')

    print('Applying domains:')
    print(get_all_domains(domains_to_run))

    all_arguments = get_all_possible_arguments(domains_to_run, free_sympa_files)
    n = len(all_arguments)
    print('Total amount of permutations is ' + str(n))  # 588

    ram_for_each_process = 8
    cpus_for_each_process = 8
    ram_limit = int(ram_size_in_gb // ram_for_each_process)
    cpu_limit = int(num_of_cpus // cpus_for_each_process)
    sympa_limit = int(num_of_sympa_parallel)
    num_of_parallel_jobs = min(ram_limit, cpu_limit, sympa_limit)
    print('RAM limit = ' + str(ram_limit) + ', CPUs limit = ' + str(cpu_limit) + ', SymPA limit = ' + str(sympa_limit))
    print('So the number of jobs that can be executed in parallel is ' + str(num_of_parallel_jobs))
    print('We will have a maximal amount of repetitions of ' + str(n / num_of_parallel_jobs))

    # Results dir:
    Path(results_dir).mkdir(parents=True, exist_ok=True)
    Path(errors_dir).mkdir(parents=True, exist_ok=True)
    pool = mp.Pool(processes=num_of_parallel_jobs)
    print('Running all CPPP processes now...')
    for args_perm in all_arguments:
       pool.apply_async(run_optimal_planner, args=args_perm)
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 0, 0))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 0, 1))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 0, 2))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 0, 3))
    #
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 1, 0))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 1, 1))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 1, 2))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 1, 3))

    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 2, 0))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 2, 1))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 2, 2))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 2, 3))
    #
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 3, 0))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 3, 1))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 3, 2))
    # pool.apply_async(run_optimal_planner, args=(free_sympa_files, 3, 3))

    print('Applied all of the jobs into the thread-pool')
    pool.close()
    print('Waiting for all processes to finish...')
    pool.join()
    print('All done :)')


def run_all_cppp_processes_without_sympa(domains_to_run):
    # num_of_cpus = mp.cpu_count()
    num_of_cpus = 128
    # mem = virtual_memory()
    # mem = 494
    # ram_size_in_gb = mem.total / math.pow(2, 30)  # total physical memory available
    ram_size_in_gb = 400
    print('Running the CPPP project on ' + str(num_of_cpus) + ' CPUs on parallel, with ' + str(ram_size_in_gb) + ' GB of RAM available')

    print('Applying domains:')
    print(get_all_domains(domains_to_run))

    all_arguments = get_all_possible_arguments_without_sympa(domains_to_run)
    n = len(all_arguments)
    print('Total amount of permutations is ' + str(n))  # 588

    ram_for_each_process = 8
    cpus_for_each_process = 8
    ram_limit = int(ram_size_in_gb // ram_for_each_process)
    cpu_limit = int(num_of_cpus // cpus_for_each_process)
    num_of_parallel_jobs = min(ram_limit, cpu_limit)
    print('RAM limit = ' + str(ram_limit) + ', CPUs limit = ' + str(cpu_limit))
    print('So the number of jobs that can be executed in parallel is ' + str(num_of_parallel_jobs))
    print('We will have a maximal amount of repetitions of ' + str(n / num_of_parallel_jobs))

    # Results dir:
    Path(results_dir).mkdir(parents=True, exist_ok=True)
    Path(errors_dir).mkdir(parents=True, exist_ok=True)
    pool = mp.Pool(processes=num_of_parallel_jobs)
    print('Running all CPPP processes now...')
    for args_perm in all_arguments:
       pool.apply_async(run_optimal_planner_without_sympa, args=args_perm)

    print('Applied all of the jobs into the thread-pool')
    pool.close()
    print('Waiting for all processes to finish...')
    pool.join()
    print('All done :)')


if __name__ == '__main__':
    using_sympa = True

    output_main_dir = 'optimal_out_3'
    results_dir = output_main_dir + '/results'
    errors_dir = output_main_dir + '/errors'

    if using_sympa:
        # start_sympa = int(sys.argv[1])
        # end_sympa = int(sys.argv[2])
        # domains_to_run = sys.argv[3:]
        start_sympa = 0
        end_sympa = 31
        domains_to_run = ['1', '2']
        free_sympa_files, num_of_sympa_parallel = create_free_sympa_files(start_sympa, end_sympa)
        print('SymPA files used = ' + str(start_sympa) + ' <= f <= ' + str(end_sympa))
        print('domains we will run = ' + str(domains_to_run))

        run_all_cppp_processes(free_sympa_files, num_of_sympa_parallel, domains_to_run)
    else:
        domains_to_run = sys.argv[1:]
        print('domains we will run = ' + str(domains_to_run))
        run_all_cppp_processes_without_sympa(domains_to_run)
