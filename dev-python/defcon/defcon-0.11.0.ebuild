# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A set of UFO based objects for use in font editing applications"
HOMEPAGE="https://github.com/robotools/defcon"
SRC_URI="https://files.pythonhosted.org/packages/71/03/ee6ccc93ffd2b50255b058b099ce50f078eb033c150576e276a5577f0ce5/defcon-0.11.0.zip -> defcon-0.11.0.zip"

DEPEND="dev-python/fonttools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/defcon-0.11.0"