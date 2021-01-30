# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/40/a2/0d11187bdde4237a2f5413f3dd47bdce4d198215392cf6c69945e89c6797/importlib_metadata-2.1.1.tar.gz"

DEPEND=""
RDEPEND="!<dev-python/importlib_metadata-3.0.0 
	dev-python/zipp[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/typing-extensions-3.6.4[${PYTHON_USEDEP}]' -3)
	$(python_gen_cond_dep '>=dev-python/configparser-3.5[${PYTHON_USEDEP}]' -2)
	$(python_gen_cond_dep 'dev-python/contextlib2[${PYTHON_USEDEP}]' -2)
	$(python_gen_cond_dep 'dev-python/pathlib2[${PYTHON_USEDEP}]' -2)"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	test? (
		 ${RDEPEND}
		 $(python_gen_cond_dep 'dev-python/importlib_resources[${PYTHON_USEDEP}]' pypy{,3} python{2_7,3_{5,6}})
		 dev-python/packaging[${PYTHON_USEDEP}]
	)"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/importlib_metadata-${PV}"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'
distutils_enable_tests unittest
