# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="General purpose exceptions for Zope packages"
HOMEPAGE="https://pypi.org/project/zope.exceptions/ https://github.com/zopefoundation/zope.exceptions"
SRC_URI="https://files.pythonhosted.org/packages/b5/56/88fc930a2be7842f761e39a5eedd4a00b10caebe3b463d281751a8e7e22c/zope.exceptions-5.1.tar.gz -> zope.exceptions-5.1.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/zope-testrunner[${PYTHON_USEDEP}] )"

S="${WORKDIR}/${MY_P}"

distutils_enable_tests setup.py

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}