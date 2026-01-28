# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
inherit flag-o-matic libtool distutils-r1

DESCRIPTION="XSLT libraries Python bindings"
HOMEPAGE="https://gitlab.gnome.org/GNOME/libxslt"
SRC_URI="https://download.gnome.org/sources/libxslt/1.1/libxslt-1.1.45.tar.xz -> libxslt-1.1.45.tar.xz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="+crypt static-libs"
RDEPEND="=dev-libs/libxslt-1.1.45:=[crypt?]
	
"
DEPEND="${RDEPEND}
	
"
S="${WORKDIR}/libxslt-1.1.45"
src_prepare() {
	default
	elibtoolize
}
src_configure() {
	# Remove this after upstream merge request to add AC_SYS_LARGEFILE lands:
	# https://gitlab.gnome.org/GNOME/libxslt/-/merge_requests/55
	append-lfs-flags
	ECONF_SOURCE="${S}" econf \
	  --with-python \
	  $(use_with crypt crypto) \
	  $(use_enable static-libs static)
	( cd ${S}/python && ./generator.py ) || die
	export S="${S}/python"
	distutils-r1_src_configure
}
src_compile() {
	distutils-r1_src_compile
}
src_install() {
	distutils-r1_src_install
}


# vim: filetype=ebuild
