# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit python-r1
SLOT="0"
KEYWORDS="*"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS} $(python_gen_cond_dep 'dev-python/typing[${PYTHON_USEDEP}]' -2)"