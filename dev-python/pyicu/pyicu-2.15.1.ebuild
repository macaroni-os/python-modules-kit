# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python extension wrapping the ICU C++ API"
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/pyicu/"
SRC_URI="https://files.pythonhosted.org/packages/35/1b/4438dbdcdbb26aa8d2d44ccfb2bc2e39f6c40fd49bbdae0082ea6c7ef1ff/pyicu-2.15.1.tar.gz -> pyicu-2.15.1.tar.gz"

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
S="${WORKDIR}/PyICU-2.15.1"

DOCS=( CHANGES CREDITS README.md )
