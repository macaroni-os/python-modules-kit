# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A Python bindings generator for C/C++ libraries"
HOMEPAGE="https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/a7/8a/869417bc2ea45a29bc6ed4ee82757e472f0c7490cf5b7ddb82b70806bce4/sip-6.14.0.tar.gz -> sip-6.14.0.tar.gz
"
DEPEND="

dev-python/packaging[${PYTHON_USEDEP}]
"
RDEPEND="
dev-python/packaging[${PYTHON_USEDEP}]
"
BDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.14.0"
