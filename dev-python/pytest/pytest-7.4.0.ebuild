# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="pytest: simple powerful testing with Python"
HOMEPAGE="https://docs.pytest.org/en/latest/ https://pypi.org/project/pytest/"
SRC_URI="https://files.pythonhosted.org/packages/a7/f3/dadfbdbf6b6c8b5bd02adb1e08bc9fbb45ba51c68b0893fa536378cdf485/pytest-7.4.0.tar.gz -> pytest-7.4.0.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pytest-compat )
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
	dev-python/iniconfig[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/pluggy-0.12[${PYTHON_USEDEP}]
	<dev-python/pluggy-2[${PYTHON_USEDEP}]
	>=dev-python/py-1.8.2[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' -2 pypy3 python3_6 python3_7)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pytest-7.4.0"

post_src_install() {
	if [ "$PV" == "4.6.9" ]; then
		rm -rf ${D}/usr/bin
	fi
}