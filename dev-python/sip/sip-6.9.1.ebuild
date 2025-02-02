# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python bindings generator for C/C++ libraries"
HOMEPAGE="None https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/e2/83/b23f610ef99fa23aa3c8dcd2ff8536c37b943654405ff4f45f3230327a40/sip-6.9.1.tar.gz -> sip-6.9.1.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-7[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.9.1"