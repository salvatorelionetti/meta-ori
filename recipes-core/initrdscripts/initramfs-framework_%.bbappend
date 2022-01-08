FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://nbdrootfs"

#PACKAGES_append = " initramfs-module-nbdrootfs "

do_install_append() {
    install -m 0755 ${WORKDIR}/nbdrootfs ${D}/init.d/86-nbdrootfs
}

FILES_${PN}-base += " /init.d/86-nbdrootfs "
#SUMMARY_initramfs-module-nbdrootfs = "initramfs support for nbd"
#RDEPENDS_initramfs-module-nbdrootfs = "${PN}-base"
#FILES_initramfs-module-nbdrootfs = "/init.d/86-nbdrootfs"

#RPROVIDES:${PN} += "initramfs-module-nbdrootfs"
