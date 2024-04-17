import pstats

# python3 -m cProfile -o parse_canset.prof parse_canset.py 4
# Load the profiling data
profile = pstats.Stats("parse_canset.prof")

# Sort the data by cumulative time
profile.sort_stats("cumulative")

# Print the statistics
# profile.print_stats()

# If you want to analyze a specific function, you can use:
profile.strip_dirs().print_callees("get_prms")
