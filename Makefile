all:
	@echo "try 'make install'"

FILES = bash_aliases \
	gitconfig \
	vimrc

install:
	for f in $(FILES); do \
		cat $$f > ~/.$$f; \
	done

pull:
	for f in $(FILES); do \
		cat ~/.$$f > $$f; \
	done
