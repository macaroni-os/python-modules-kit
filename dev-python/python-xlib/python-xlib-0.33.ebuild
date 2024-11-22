# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1 virtualx

DESCRIPTION="A fully functional X client library for Python, written in Python"
HOMEPAGE="https://github.com/python-xlib/python-xlib"
SRC_URI="https://github.com/python-xlib/python-xlib/tarball/4e8bbf8fc4941e5da301a8b3db8d27e98de68666 -> python-xlib-0.33-4e8bbf8.tar.gz
"

DEPEND="
	doc? ( sys-apps/texinfo )
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"

IUSE="doc"
SLOT="0"
LICENSE="LGPL-2+"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/python-xlib-* "$S" || die
	fi
}

python_compile_all() {
	use doc && emake -C doc/info
}

python_install_all() {
	use doc && doinfo doc/info/*.info
	distutils-r1_python_install_all
}
