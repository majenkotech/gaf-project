DESTDIR?=/usr
install:
	install -m 755 gaf-project ${DESTDIR}/bin
	install -m 644 gaf-project.desktop ${DESTDIR}/share/applications
	install -m 644 gaf-project.png ${DESTDIR}/share/icons
	mkdir -p ${DESTDIR}/share/gaf-project
	cp -R icons ${DESTDIR}/share/gaf-project/
	xdg-icon-resource install --size 512 ${DESTDIR}/share/icons/gaf-project.png gaf-project
	xdg-desktop-menu install --novendor ${DESTDIR}/share/applications/gaf-project.desktop

