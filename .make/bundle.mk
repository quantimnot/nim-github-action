# The `ncc` program bundles the node dependencies together.
# This is useful for a GitHub Action because repo space is preserved.

bundle = $(node_package_manager_run) ncc build --out "$(@D)"

# `$(node_package_manager_lock_file)` as a dependency here, represents the node dependencies
$(out)/bundle/main.js/index.js: $(nimout)/main.js .make/bundle.mk .make/var.mk $(node_package_manager_lock_file)
	$(bundle) "$(nimout)/main.js"
