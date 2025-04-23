# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A pyunit extension for managing expensive test resources"
HOMEPAGE="https://launchpad.net/testresources"
SRC_URI="https://files.pythonhosted.org/packages/b2/2e/905756faf6bada00adccb5dbc9e5987760675b682f08dd1312a40042a838/testresources-2.0.2.tar.gz -> testresources-2.0.2.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/testtools[${PYTHON_USEDEP}]
		dev-python/fixtures[${PYTHON_USEDEP}]
	)"
RDEPEND=""

python_prepare_all() {
	sed \
		-e 's:testBasicSortTests:_&:g' \
		-i testresources/tests/test_optimising_test_suite.py || die
	distutils-r1_python_prepare_all
}

python_test() {
	nosetests --verbose || die "Tests failed under ${EPYTHON}"
}