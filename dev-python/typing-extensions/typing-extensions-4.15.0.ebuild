# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Backported and Experimental Type Hints for Python 3.9+"
HOMEPAGE="https://pypi.org/project/typing-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz -> typing_extensions-4.15.0.tar.gz
"
SLOT="0"
LICENSE="PSF-2"
KEYWORDS="*"
S="${WORKDIR}/typing_extensions-4.15.0"
