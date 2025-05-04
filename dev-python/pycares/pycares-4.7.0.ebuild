# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python interface for c-ares"
HOMEPAGE="https://github.com/saghul/pycares/"
SRC_URI="https://files.pythonhosted.org/packages/9d/cd/dabe7fb5fd0089a1a37ae94e30b2fb094bff098492f1fbdfd8e2969d69a6/pycares-4.7.0.tar.gz -> pycares-4.7.0.tar.gz"

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