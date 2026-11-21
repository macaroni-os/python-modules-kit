# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Micro subset of unicode data files for linkify-it-py projects."
HOMEPAGE="https://github.com/tsutsu3/uc.micro-py"
SRC_URI="https://files.pythonhosted.org/packages/91/7a/146a99696aee0609e3712f2b44c6274566bc368dfe8375191278045186b8/uc-micro-py-1.0.3.tar.gz -> uc-micro-py-1.0.3.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/uc-micro-py-1.0.3"
