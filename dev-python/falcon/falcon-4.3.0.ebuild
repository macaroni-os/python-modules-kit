# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The ultra-reliable, fast ASGI+WSGI framework for building data plane APIs at scale."
HOMEPAGE="https://falconframework.org"
SRC_URI="https://files.pythonhosted.org/packages/ae/97/bd655eae515ae6e9efdfd6a60ae8a0d2607c811a45308959e7967b7fde72/falcon-4.3.0.tar.gz -> falcon-4.3.0.tar.gz
"
BDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/falcon-4.3.0"
