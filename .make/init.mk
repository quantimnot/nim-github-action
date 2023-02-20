# Initializes the project.
# - Creates missing directories.
# - Records the time of changes using the `mtime` property of each file/directory.

$(init.done): $(dirs.done) .make/var.mk .make/init.mk
	touch "$(@)"

$(dirs.done):
	mkdir -p "$(state_dir)" "$(nimout)" "$(nimcache)" "$(out)/bundle"
	touch "$(@)"
