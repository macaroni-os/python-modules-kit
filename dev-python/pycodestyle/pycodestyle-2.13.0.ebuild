# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python style guide checker"
HOMEPAGE="https://pycodestyle.pycqa.org/ https://pypi.org/project/pycodestyle/"
SRC_URI="https://files.pythonhosted.org/packages/04/6e/1f4a62078e4d95d82367f24e685aef3a672abfd27d1a868068fed4ed2254/pycodestyle-2.13.0.tar.gz -> pycodestyle-2.13.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pycodestyle-2.13.0"