# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Expand system variables Unix style"
HOMEPAGE="https://github.com/sayanarijit/expandvars"
SRC_URI="https://files.pythonhosted.org/packages/93/a7/997a548c9ed679d7b93c87e091eba591e7cd9fd82ca727136b4b5b9e24cd/expandvars-1.0.0.tar.gz -> expandvars-1.0.0.tar.gz
"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/expandvars-1.0.0"
