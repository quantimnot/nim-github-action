# Variables that can be overridden like `make -e variable=value`.

# Where transient files are generated.
out = out

# This `makefile` program saves state files here.
state_dir = $(out)/make/state

# These are some important build states:
# Build directories are ready.
dirs.done = $(state_dir)/dirs.done
# Dependencies are ready.
deps.done = $(state_dir)/deps.done
# Project is initialized.
init.done = $(state_dir)/init.done

# nim compiler output directory
nimout = $(out)/nim

# nim compiler cache directory
nimcache = $(out)/nimcache

# Nodejs dependencies
node_modules = $(out)/node_modules
node_package_manager = yarn
node_package_manager_run_option = run
node_package_manager_modules_folder_option = --modules-folder "$(node_modules)"
node_package_manager_install_dependencies = $(node_package_manager)
node_package_manager_lock_file = yarn.lock
node_package_manager_run = $(node_package_manager) $(node_package_manager_modules_folder_option) $(node_package_manager_run_option)
