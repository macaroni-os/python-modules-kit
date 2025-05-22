# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A pure-Python, bring-your-own-I/O implementation of HTTP/1.1"
HOMEPAGE="https://github.com/python-hyper/h11 https://pypi.org/project/h11/"
SRC_URI="https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz -> h11-0.16.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/h11-0.16.0"