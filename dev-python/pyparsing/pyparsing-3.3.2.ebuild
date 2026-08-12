# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="pyparsing - Classes and methods to define and execute parsing grammars"
HOMEPAGE="https://github.com/pyparsing/pyparsing https://pypi.org/project/pyparsing/"
SRC_URI="https://files.pythonhosted.org/packages/f3/91/9c6ee907786a473bf81c5f53cf703ba0957b23ab84c264080fb5a450416f/pyparsing-3.3.2.tar.gz -> pyparsing-3.3.2.tar.gz
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyparsing-3.3.2"
