minimize_js = closure-compiler --js_output_file "$(@)"

main.js: $(out)/bundle/main.js/index.js .make/minimize.mk .make/var.mk
	$(minimize_js) "$(out)/bundle/main.js/index.js"
