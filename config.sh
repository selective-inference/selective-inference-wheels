# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    :
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    echo "backend : agg" > matplotlibrc
    env USE_SMALL_SAMPLES=1 USE_TEST_SEED=1 nosetests --verbose selection
}
