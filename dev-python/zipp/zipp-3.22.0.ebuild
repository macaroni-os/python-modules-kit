# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Backport of pathlib-compatible object wrapper for zip files"
HOMEPAGE="https://github.com/jaraco/zipp"
SRC_URI="https://files.pythonhosted.org/packages/12/b6/7b3d16792fdf94f146bed92be90b4eb4563569eca91513c8609aebf0c167/zipp-3.22.0.tar.gz -> zipp-3.22.0.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/toml[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/zipp-3.22.0"

src_prepare() {
	sed -i -e 's/license = "MIT"/license = { text = "MIT" }/' pyproject.toml || die
	distutils-r1_src_prepare
}
