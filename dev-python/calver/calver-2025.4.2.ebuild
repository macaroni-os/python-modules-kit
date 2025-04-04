# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Setuptools extension for CalVer package versions"
HOMEPAGE="https://github.com/di/calver"
SRC_URI="https://files.pythonhosted.org/packages/ee/28/c6c465ab2ce1882eb1ba8e0f173c1613f509eba3c60eb916fcb9b704238c/calver-2025.4.2.tar.gz -> calver-2025.4.2.tar.gz
"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/calver-2025.4.2"

src_prepare() {
	sed -i -e 's/license = "Apache-2.0"/license = { text = "Apache-2.0" }/' pyproject.toml || die
	distutils-r1_src_prepare
}

