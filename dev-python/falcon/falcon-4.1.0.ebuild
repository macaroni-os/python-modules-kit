# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The ultra-reliable, fast ASGI+WSGI framework for building data plane APIs at scale."
HOMEPAGE="https://falconframework.org"
SRC_URI="https://files.pythonhosted.org/packages/90/85/a4abc8357f6bc6b6b0b3d80e2c319c895900c518a3528279a222d7a53b7e/falcon-4.1.0.tar.gz -> falcon-4.1.0.tar.gz
"
BDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/falcon-4.1.0"
