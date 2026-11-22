# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="A lil' TOML parser (tomllib backport for Python < 3.11)"
HOMEPAGE="https://github.com/hukkin/tomli"
SRC_URI="https://files.pythonhosted.org/packages/b0/78/9ad63712633ed3ab5cc1a648d863d7e7da371e9425e209555a0fe711b695/tomli-2.5.0.tar.gz -> tomli-2.5.0.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/flit_core[${PYTHON_USEDEP}]
"
S="${WORKDIR}/tomli-2.5.0"
