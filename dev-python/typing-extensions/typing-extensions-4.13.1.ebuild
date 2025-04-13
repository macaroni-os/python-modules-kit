# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Backported and Experimental Type Hints for Python 3.8+"
HOMEPAGE="None https://pypi.org/project/typing-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/76/ad/cd3e3465232ec2416ae9b983f27b9e94dc8171d56ac99b345319a9475967/typing_extensions-4.13.1.tar.gz -> typing_extensions-4.13.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/typing_extensions-4.13.1"