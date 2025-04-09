# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Define boolean algebras, create and parse boolean expressions and create custom boolean DSL."
HOMEPAGE="https://github.com/bastikr/boolean.py https://pypi.org/project/boolean.py/"
SRC_URI="https://files.pythonhosted.org/packages/c4/cf/85379f13b76f3a69bca86b60237978af17d6aa0bc5998978c3b8cf05abb2/boolean_py-5.0.tar.gz -> boolean_py-5.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/boolean_py-5.0"