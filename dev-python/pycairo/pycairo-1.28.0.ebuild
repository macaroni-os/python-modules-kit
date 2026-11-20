# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
inherit distutils-r1 meson

DESCRIPTION="Python bindings for cairo"
HOMEPAGE="https://pycairo.readthedocs.io"
SRC_URI="https://github.com/pygobject/pycairo/releases/download/v1.28.0/pycairo-1.28.0.tar.gz -> pycairo-1.28.0.tar.gz"
LICENSE="| ( LGPL-2.1 MPL-1.1 )"
SLOT="0"
KEYWORDS="*"
BDEPEND="virtual/pkgconfig
	
"
RDEPEND="x11-libs/cairo
	
"
DEPEND="${RDEPEND}
	x11-base/xorg-proto
	
"
python_compile() {
	local emesonargs=(
	    -Dpython.bytecompile=2
	    -Dtests=false
	)
	meson_src_configure
	meson_src_compile
}
python_install() {
	meson_src_install
}


# vim: filetype=ebuild
