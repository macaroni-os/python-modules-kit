# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Setuptools extension for CalVer package versions"
HOMEPAGE="https://github.com/di/calver"
SRC_URI="https://files.pythonhosted.org/packages/4f/1e/6cdde2a9cbd1bd2fad6fab0d005b1c10b4161823656ddb19ccc3adcbd5af/calver-2025.4.17.tar.gz -> calver-2025.4.17.tar.gz
"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/calver-2025.4.17"

src_prepare() {
	sed -i -e 's/license = "Apache-2.0"/license = { text = "Apache-2.0" }/' pyproject.toml || die
	distutils-r1_src_prepare
}

