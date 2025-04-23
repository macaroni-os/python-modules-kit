# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python extension wrapping the ICU C++ API"
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/pyicu/"
SRC_URI="https://files.pythonhosted.org/packages/9f/57/9db810ab75133a1c87ac2e327fb59199d78d233f575fbb63bfd3492b769c/pyicu-2.15.2.tar.gz -> pyicu-2.15.2.tar.gz"

DEPEND=""
RDEPEND="
	dev-libs/icu:="
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/pyicu-2.10-fix_displayoptions.patch
)
S="${WORKDIR}/PyICU-2.15.2"

DOCS=( CHANGES CREDITS README.md )
