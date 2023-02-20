# The `ncc` program bundles the node dependencies together.
# This is useful for a GitHub Action because repo space is preserved.

bundle = $(node_package_manager_run) ncc build --out "$(@D)"

# `$(node_package_manager_lock_file)` as a dependency here, represents the node dependencies
$(out)/bundle/pre.js/index.js: $(nimout)/pre.js .make/bundle.mk .make/var.mk $(node_package_manager_lock_file)
	$(bundle) "$(nimout)/pre.js"
$(out)/bundle/main.js/index.js: $(nimout)/main.js .make/bundle.mk .make/var.mk $(node_package_manager_lock_file)
	$(bundle) "$(nimout)/main.js"
$(out)/bundle/post.js/index.js: $(nimout)/post.js .make/bundle.mk .make/var.mk $(node_package_manager_lock_file)
	$(bundle) "$(nimout)/post.js"
