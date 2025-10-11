# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Expand system variables Unix style"
HOMEPAGE="https://github.com/sayanarijit/expandvars"
SRC_URI="https://files.pythonhosted.org/packages/9c/64/a9d8ea289d663a44b346203a24bf798507463db1e76679eaa72ee6de1c7a/expandvars-1.1.2.tar.gz -> expandvars-1.1.2.tar.gz
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/expandvars-1.1.2"
