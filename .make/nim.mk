nim = nim js -o:"$(@)" --nimcache:"$(nimcache)"

$(nimout)/main.js: main.nim .make/nim.mk .make/var.mk
	$(nim) main.nim
$(nimout)/pre.js: pre.nim .make/nim.mk .make/var.mk
	$(nim) pre.nim
$(nimout)/post.js: post.nim .make/nim.mk .make/var.mk
	$(nim) post.nim
