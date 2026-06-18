# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The ultra-reliable, fast ASGI+WSGI framework for building data plane APIs at scale."
HOMEPAGE="https://falconframework.org"
SRC_URI="https://files.pythonhosted.org/packages/a0/02/a51af369a4feded77801d744f2d4669c7fa0a294bc117acf6ee06439937b/falcon-4.3.1.tar.gz -> falcon-4.3.1.tar.gz
"
BDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/falcon-4.3.1"
