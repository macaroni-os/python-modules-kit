# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Zstandard bindings for Python"
HOMEPAGE="https://pypi.org/project/zstandard/ https://github.com/indygreg/python-zstandard"
SRC_URI="https://files.pythonhosted.org/packages/a7/b7/0fe8fb6390309f29a3a76c439dd08a73c05473bbaafa7117596ded319f84/zstandard-0.18.0.tar.gz -> zstandard-0.18.0.tar.gz"

DEPEND="test? ( dev-python/hypothesis[${PYTHON_USEDEP}] )"
RDEPEND="
	python_targets_python2_7? ( dev-python/zstandard-compat )
	dev-python/cffi:=[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7 test"
RESTRICT="!test? ( test )"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/zstandard-0.18.0"

python_compile() {
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}
python_test() {
	esetup.py test
}
