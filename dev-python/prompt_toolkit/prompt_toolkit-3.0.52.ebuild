# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Library for building powerful interactive command lines in Python"
HOMEPAGE="https://github.com/prompt-toolkit/python-prompt-toolkit"
SRC_URI="https://files.pythonhosted.org/packages/a1/96/06e01a7b38dce6fe1db213e061a4602dd6032a8a97ef6c1a862537732421/prompt_toolkit-3.0.52.tar.gz -> prompt_toolkit-3.0.52.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
RDEPEND="
>=dev-python/wcwidth-0.1.4[${PYTHON_USEDEP}]
"
DEPEND="

>=dev-python/wcwidth-0.1.4[${PYTHON_USEDEP}]
"
S="${WORKDIR}/prompt_toolkit-3.0.52"
