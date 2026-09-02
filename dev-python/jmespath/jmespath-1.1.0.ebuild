# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="JSON Matching Expressions"
HOMEPAGE="https://github.com/jmespath/jmespath.py"
SRC_URI="https://files.pythonhosted.org/packages/d3/59/322338183ecda247fb5d1763a6cbe46eff7222eaeebafd9fa65d4bf5cb11/jmespath-1.1.0.tar.gz -> jmespath-1.1.0.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/jmespath-1.1.0"
