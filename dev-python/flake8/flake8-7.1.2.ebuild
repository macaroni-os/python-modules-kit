# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A wrapper around PyFlakes, pep8 & mccabe"
HOMEPAGE="https://gitlab.com/pycqa/flake8 https://pypi.org/project/flake8/
"
SRC_URI="https://files.pythonhosted.org/packages/58/16/3f2a0bb700ad65ac9663262905a025917c020a3f92f014d2ba8964b4602c/flake8-7.1.2.tar.gz -> flake8-7.1.2.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pyflakes[${PYTHON_USEDEP}]
	dev-python/pycodestyle[${PYTHON_USEDEP}]"
PDEPEND="dev-python/mccabe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/flake8-7.1.2"

src_prepare() {
	# remove version-limited dep
	sed -i -e '/importlib-metadata/d' setup.cfg || die
	distutils-r1_src_prepare
}
