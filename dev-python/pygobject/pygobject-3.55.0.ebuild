# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
inherit meson xdg distutils-r1

DESCRIPTION="Python bindings for GObject Introspection"
HOMEPAGE="https://pygobject.gnome.org/ https://gitlab.gnome.org/GNOME/pygobject/"
SRC_URI="https://download.gnome.org/sources/pygobject/3.55/pygobject-3.55.0.tar.gz -> pygobject-3.55.0.tar.gz"
LICENSE="LGPL-2.1+"
SLOT="3"
KEYWORDS="*"
IUSE="+cairo"
BDEPEND="virtual/pkgconfig
	
"
RDEPEND="dev-libs/glib:2
	dev-libs/gobject-introspection:=
	dev-libs/libffi:=
	cairo? (
	  dev-python/pycairo[${PYTHON_USEDEP}]
	  x11-libs/cairo[glib]
	)
	
"
DEPEND="${RDEPEND}
"
python_configure() {
	local emesonargs=(
	  $(meson_feature cairo pycairo)
	  -Dtests=false
	  -Dpython="${EPYTHON}"
	)
	meson_src_configure
}
python_compile() {
	meson_src_compile
}
python_install() {
	meson_src_install
	python_optimize
}


# vim: filetype=ebuild
