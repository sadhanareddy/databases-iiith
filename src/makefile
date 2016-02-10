# build-dir=../build
# # lib-dir=lib
# # build-js-dir=${build-dir}/js
#
# # theme=blue-icon
#
#
all:  help-dir

help-dir:
	mkdir -p /root/.sage/sage_notebook.sagenb/home/pub/
	(rsync -avC lab/* /root/.sage/sage_notebook.sagenb/home/pub/)

#       (touch ${build-dir}; rsync -avC --exclude ${mathjax}.zip lab/* lib/* help themes/${theme}/* ${build-dir})





# don't remove the js directory, since copying it again with mathjax takes too long.
# # http://superuser.com/questions/168130/unix-delete-files-and-folders-excluding-pattern
clean:
	(find ${build-dir} -mindepth 1 -maxdepth 1 ! -name js -print0 | xargs -0n1 rm -rf)










