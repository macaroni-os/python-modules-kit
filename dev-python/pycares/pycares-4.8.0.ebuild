# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python interface for c-ares"
HOMEPAGE="https://github.com/saghul/pycares/"
SRC_URI="https://files.pythonhosted.org/packages/19/7a/01ef7ce35fc1312d6c1c07f3b87f329ad6daf41bb9cd57c8f017e0b653fa/pycares-4.8.0.tar.gz -> pycares-4.8.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
# Tests fail with network-sandbox, since they try to resolve google.com
RESTRICT="test"

# uses bundled/patched c-ares
RDEPEND="virtual/python-cffi[${PYTHON_USEDEP}]"
BDEPEND=${RDEPEND}

python_test() {
	"${EPYTHON}" tests/tests.py -v || die
}