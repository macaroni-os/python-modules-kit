# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Collection of utilities for publishing packages on PyPI"
HOMEPAGE="https://twine.readthedocs.io/ https://github.com/pypa/twine https://pypi.org/project/twine/"
SRC_URI="https://files.pythonhosted.org/packages/7e/2f/e2a91a8ab97e8c9830ce297132631aef5dcd599f076123d1ebb26f1941b6/twine-3.1.1.tar.gz -> twine-3.1.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"

CDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
BDEPEND="${CDEPEND}
	test? (
		dev-python/jaraco-envs[${PYTHON_USEDEP}]
		dev-python/jaraco-functools[${PYTHON_USEDEP}]
		dev-python/munch[${PYTHON_USEDEP}]
		dev-python/portend[${PYTHON_USEDEP}]
		dev-python/pretend[${PYTHON_USEDEP}]
		dev-python/pypiserver[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)
"
RDEPEND="${CDEPEND}
	>=dev-python/tqdm-4.14[${PYTHON_USEDEP}]
	>=dev-python/pkginfo-1.4.2[${PYTHON_USEDEP}]
	>=dev-python/readme_renderer-21.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
	>=dev-python/requests-toolbelt-0.8.0[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' python3_{6,7} pypy{,3})
	>=dev-python/keyring-15.1[${PYTHON_USEDEP}]
"

RESTRICT="!test? ( test )"

python_prepare_all() {
	# avoid a setuptools_scm dependency
	sed -i "s:use_scm_version=True:version='${PV}',name='${PN//-/.}':" setup.py || die
	sed -r -i "s:setuptools(_|-)scm[[:space:]]*([><=]{1,2}[[:space:]]*[0-9.a-zA-Z]+|)[[:space:]]*::" \
		setup.cfg || die

	# requires internet
	rm -f tests/test_integration.py || die

	distutils-r1_python_prepare_all
}

python_test() {
	distutils_install_for_testing
	pytest -vv || die "Tests fail with ${EPYTHON}"
}