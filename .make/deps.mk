$(deps.done): $(node_package_manager_lock_file) .make/var.mk .make/deps.mk
	touch "$(@)"
