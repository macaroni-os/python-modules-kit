# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python bindings generator for C/C++ libraries"
HOMEPAGE="None https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/e3/11/1ad8d00e08f26eaa45c48c085b8fdb6aba32b5c96e601d96b4b821a5b88e/sip-6.11.0.tar.gz -> sip-6.11.0.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-7[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.11.0"