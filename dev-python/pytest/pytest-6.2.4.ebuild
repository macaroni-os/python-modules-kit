# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="pytest: simple powerful testing with Python"
HOMEPAGE="https://docs.pytest.org/en/latest/ https://pypi.org/project/pytest/"
SRC_URI="https://files.pythonhosted.org/packages/5b/98/92bbda5f83ed995ef8953349ef30c77c934abcc251c42ab3d7787a40c49c/pytest-6.2.4.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pytest-compat )
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	dev-python/iniconfig[${PYTHON_USEDEP}]
	>=dev-python/more-itertools-4[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/pluggy-0.12[${PYTHON_USEDEP}]
	<dev-python/pluggy-1[${PYTHON_USEDEP}]
	>=dev-python/py-1.8.2[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' pypy3 python3_7 -2 python3_6
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pytest-6.2.4"

post_src_install() {
	if [ "$PV" == "4.6.9" ]; then
		rm -rf ${D}/usr/bin
	fi
}
