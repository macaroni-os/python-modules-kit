# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python code static checker"
HOMEPAGE="None https://pypi.org/project/pylint/"
SRC_URI="https://files.pythonhosted.org/packages/69/a7/113d02340afb9dcbb0c8b25454e9538cd08f0ebf3e510df4ed916caa1a89/pylint-3.3.6.tar.gz -> pylint-3.3.6.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/astroid[${PYTHON_USEDEP}]
	dev-python/isort[${PYTHON_USEDEP}]
	dev-python/mccabe[${PYTHON_USEDEP}]
	dev-python/tomlkit[${PYTHON_USEDEP}]
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="doc test"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/pylint-3.3.6"