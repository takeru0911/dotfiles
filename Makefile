CURL=$(shell which curl)
NPM=$(shell which npm)
PIP=$(shell which pip)
setup:
	cp -r ./.emacs.d ~/
emacs:
	cd /usr/local/src && \
	wget -O- http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.xz | tar xJf - && \
	cd emacs-24.5 && \
	./configure --disable-largefile --with-x-toolkit=motif --without-toolkit-scroll-bars --without-xaw3d --without-xim --without-compress-info --without-sound --without-pop --without-sync-input --without-xpm --without-tiff --without-rsvg --without-gconf --without-gsettings --without-selinux --without-gpm --without-makeinfo --with-x && make && make install
install:
	$(NPM) install -g tern
	/usr/local/bin/git clone git://github.com/clausreinke/typescript-tools.git
	cd typescript-tools && \
	$(NPM) install -g
	$(PIP) install jedi epc
sync:
	rsync -v -r ~/.emacs.d/ ~/dotfiles/.emacs.d/
sync_r:
	rsync -v -r ~/dotfiles/.emacs.d/ ~/.emacs.d/
