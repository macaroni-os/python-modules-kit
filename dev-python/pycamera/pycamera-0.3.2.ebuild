# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="An easier solution to computer vision."
HOMEPAGE="https://github.com/IsmaeelAkram/pycamera"
SRC_URI="https://files.pythonhosted.org/packages/16/ba/ed0e8f4d6cff7a385b139b33d9db57e56f9566ca99951d8057ce5f8e8888/pycamera-0.3.2.tar.gz -> pycamera-0.3.2.tar.gz
"
CDEPEND="

	media-libs/opencv[python]
"
DEPEND="dev-python/numpy[${PYTHON_USEDEP}]
"
RDEPEND="${CDEPEND}
dev-python/numpy[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pycamera-0.3.2"
