nim = nim js -o:"$(@)" --nimcache:"$(nimcache)"

$(nimout)/main.js: main.nim .make/nim.mk .make/var.mk
	$(nim) main.nim
