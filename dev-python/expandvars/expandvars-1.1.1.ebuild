# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Expand system variables Unix style"
HOMEPAGE="https://github.com/sayanarijit/expandvars"
SRC_URI="https://files.pythonhosted.org/packages/dc/c9/c0a46f462058446aafe953bf76a957c17f78550216a95fbded2270f83117/expandvars-1.1.1.tar.gz -> expandvars-1.1.1.tar.gz
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/expandvars-1.1.1"
