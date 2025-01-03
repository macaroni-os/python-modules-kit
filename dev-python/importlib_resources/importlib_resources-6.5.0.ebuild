# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3+ )
inherit distutils-r1

DESCRIPTION="Read resources from Python packages"
HOMEPAGE="None https://pypi.org/project/importlib-resources/"
SRC_URI="https://files.pythonhosted.org/packages/90/17/f0adf2fda7f289c2a6c0e7d66ab01a47de8f85f91b8c13b533ce74fe7fbc/importlib_resources-6.5.0.tar.gz -> importlib_resources-6.5.0.tar.gz"

DEPEND="
	dev-python/toml[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.4.1[${PYTHON_USEDEP}]"
RDEPEND="$(python_gen_cond_dep 'dev-python/zipp[${PYTHON_USEDEP}]' -3 pypy3)"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/importlib_resources-6.5.0"

distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging
