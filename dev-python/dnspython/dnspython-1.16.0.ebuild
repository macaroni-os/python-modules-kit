# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1 vcs-snapshot

GIT_COMMIT="be7e71e54a6edc87ead1b15af8981b8921e0e83d"

DESCRIPTION="DNS toolkit for Python"
HOMEPAGE="http://www.dnspython.org/ https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/ec/c5/14bcd63cb6d06092a004793399ec395405edf97c2301dfdc146dfbd5beed/dnspython-1.16.0.zip"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE="examples test"

RDEPEND="dev-python/pycryptodome[${PYTHON_USEDEP}]
	>=dev-python/ecdsa-0.13[${PYTHON_USEDEP}]
	>=dev-python/idna-2.1[${PYTHON_USEDEP}]
	!dev-python/dnspython:py2
	!dev-python/dnspython:py3"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

# For testsuite
DISTUTILS_IN_SOURCE_BUILD=1

python_test() {
	cd tests || die
	"${PYTHON}" utest.py || die "tests failed under ${EPYTHON}"
	einfo "Testsuite passed under ${EPYTHON}"
}

python_install_all() {
	distutils-r1_python_install_all
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
}