# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Backported and Experimental Type Hints for Python 3.9+"
HOMEPAGE="https://pypi.org/project/typing-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz -> typing_extensions-4.16.0.tar.gz
"
SLOT="0"
LICENSE="PSF-2"
KEYWORDS="*"
S="${WORKDIR}/typing_extensions-4.16.0"
