# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Markdown URL utilities"
HOMEPAGE="https://github.com/executablebooks/mdurl"
SRC_URI="https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz -> mdurl-0.1.2.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/mdurl-0.1.2"
