# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Links recognition library with FULL unicode support."
HOMEPAGE="https://github.com/tsutsu3/linkify-it-py"
SRC_URI="https://files.pythonhosted.org/packages/2a/ae/bb56c6828e4797ba5a4821eec7c43b8bf40f69cda4d4f5f8c8a2810ec96a/linkify-it-py-2.0.3.tar.gz -> linkify-it-py-2.0.3.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="
dev-python/uc-micro-py[${PYTHON_USEDEP}]
"
DEPEND="

dev-python/uc-micro-py[${PYTHON_USEDEP}]
"
S="${WORKDIR}/linkify-it-py-2.0.3"
