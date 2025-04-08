# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Read key-value pairs from a .env file and set them as environment variables"
HOMEPAGE="https://github.com/theskumar/python-dotenv https://pypi.org/project/python-dotenv/"
SRC_URI="https://files.pythonhosted.org/packages/88/2c/7bb1416c5620485aa793f2de31d3df393d3686aa8a8506d11e10e13c5baf/python_dotenv-1.1.0.tar.gz -> python_dotenv-1.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/python_dotenv-1.1.0"

DOCS=( CHANGELOG.md README.md )
python_install() {
	distutils-r1_python_install
	ln -s dotenv "${D}$(python_get_scriptdir)"/python-dotenv || die
}
src_install() {
	distutils-r1_src_install
	mv "${ED}"/usr/bin/{,python-}dotenv || die
}
