# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface for c-ares"
HOMEPAGE="http://github.com/saghul/pycares"
SRC_URI="https://files.pythonhosted.org/packages/df/a0/9c823651872e6a0face3f0311de2a40c8bbcb9c8dcb15680bd019ac56ac7/pycares-5.0.1.tar.gz -> pycares-5.0.1.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
BDEPEND="
	virtual/python-cffi[${PYTHON_USEDEP}]
	net-dns/c-ares:=
"
RDEPEND="
	virtual/python-cffi[${PYTHON_USEDEP}]
	net-dns/c-ares:=
dev-python/idna[${PYTHON_USEDEP}]
"
S="${WORKDIR}/pycares-5.0.1"
