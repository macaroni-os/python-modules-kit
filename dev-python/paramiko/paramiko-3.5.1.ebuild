# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="SSH2 protocol library"
HOMEPAGE="https://paramiko.org https://pypi.org/project/paramiko/"
SRC_URI="https://files.pythonhosted.org/packages/7d/15/ad6ce226e8138315f2451c2aeea985bf35ee910afb477bae7477dc3a8f3b/paramiko-3.5.1.tar.gz -> paramiko-3.5.1.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/bcrypt-3.1.3[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5[${PYTHON_USEDEP}]
	>=dev-python/pynacl-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-0.1.7[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/paramiko-3.5.1"