# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Deal PySol FC Cards"
HOMEPAGE="https://github.com/shlomif/pysol_cards"
SRC_URI="https://files.pythonhosted.org/packages/b8/83/b14bf5b2c8a8c6e6d793c0ebd292e8d82c20e9ee8104045087a1cabc6399/pysol_cards-0.24.0.tar.gz -> pysol_cards-0.24.0.tar.gz
"
LICENSE="3-clause BSD"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/pysol_cards-0.24.0"
