# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Graphviz's Dot"
HOMEPAGE="None https://pypi.org/project/pydot/"
SRC_URI="https://files.pythonhosted.org/packages/d1/c3/6034ed1ebf2e3ba95a0e35fa7c43104e40444c0ed2b5325702c63e824dbf/pydot-4.0.0.tar.gz -> pydot-4.0.0.tar.gz"

DEPEND=""
RDEPEND="
	media-gfx/graphviz
	>=dev-python/pyparsing-2.1.4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pydot-4.0.0"