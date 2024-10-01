# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal"
HOMEPAGE="https://github.com/Textualize/rich https://pypi.org/project/rich/"
SRC_URI="https://files.pythonhosted.org/packages/b3/78/87d00a1df7c457ad9aa0139f01b8a11c67209f27f927c503b0109bf2ed6c/rich-13.9.1.tar.gz -> rich-13.9.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/markdown-it-py[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rich-13.9.1"