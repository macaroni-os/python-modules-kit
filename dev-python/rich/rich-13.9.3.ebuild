# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal"
HOMEPAGE="https://github.com/Textualize/rich https://pypi.org/project/rich/"
SRC_URI="https://files.pythonhosted.org/packages/d9/e9/cf9ef5245d835065e6673781dbd4b8911d352fb770d56cf0879cf11b7ee1/rich-13.9.3.tar.gz -> rich-13.9.3.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/markdown-it-py[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rich-13.9.3"