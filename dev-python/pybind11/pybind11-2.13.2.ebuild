# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="Seamless operability between C++11 and Python"
HOMEPAGE="https://github.com/pybind/pybind11 https://pypi.org/project/pybind11/"
SRC_URI="https://files.pythonhosted.org/packages/f5/93/2432663146193e5df82583fd880a7a5f05750b954b85f59bbb9137c54fd1/pybind11-2.13.2.tar.gz -> pybind11-2.13.2.tar.gz"

DEPEND=""
RDEPEND="dev-cpp/eigen:3"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pybind11-2.13.2"

python_install() {
	distutils-r1_python_install
	doheader -r "${S}"/pybind11/include/*
	insinto /usr/share/cmake
	doins -r "${S}"/pybind11/share/cmake/*
}
