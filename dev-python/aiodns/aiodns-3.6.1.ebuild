# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Simple DNS resolver for asyncio"
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/85/2f/9d1ee4f937addda60220f47925dac6c6b3782f6851fd578987284a8d2491/aiodns-3.6.1.tar.gz -> aiodns-3.6.1.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/pycares[${PYTHON_USEDEP}]
"
RDEPEND="
dev-python/pycares[${PYTHON_USEDEP}]
"
S="${WORKDIR}/aiodns-3.6.1"
