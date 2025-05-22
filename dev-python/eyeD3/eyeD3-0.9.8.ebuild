# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python tool for working with audio files, specifically MP3 files containing ID3 metadata"
HOMEPAGE="None https://pypi.org/project/eyeD3/"
SRC_URI="https://files.pythonhosted.org/packages/3f/db/cabe446d633d24b367445bca5f5a36ab7e1dcb4622095eae3b5c37b9888a/eyed3-0.9.8.tar.gz -> eyed3-0.9.8.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/deprecation[${PYTHON_USEDEP}]
	dev-python/filetype[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="*"
S="${WORKDIR}/eyeD3-0.9.8"