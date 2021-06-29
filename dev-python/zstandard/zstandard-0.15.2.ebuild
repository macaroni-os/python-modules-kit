# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Zstandard bindings for Python"
HOMEPAGE="https://pypi.org/project/zstandard/ https://github.com/indygreg/python-zstandard"
SRC_URI="https://files.pythonhosted.org/packages/b4/79/7b192e51a2952dee3a3c9dbd9208a9838d8d497745a18a5528e2dbfb465e/zstandard-0.15.2.tar.gz
"

DEPEND="test? ( dev-python/hypothesis[${PYTHON_USEDEP}] )"
RDEPEND="
	python_targets_python2_7? ( dev-python/zstandard-compat )
	dev-python/cffi:=[${PYTHON_USEDEP}]"
IUSE="test python_targets_python2_7"
RESTRICT="!test? ( test )"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/zstandard-0.15.2"

python_compile() {
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}
python_test() {
	esetup.py test
}
