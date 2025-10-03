# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Generate and parse RFC 3339 timestamps"
HOMEPAGE="https://github.com/kurtraschke/pyrfc3339"
SRC_URI="https://files.pythonhosted.org/packages/b4/7f/3c194647ecb80ada6937c38a162ab3edba85a8b6a58fa2919405f4de2509/pyrfc3339-2.1.0.tar.gz -> pyrfc3339-2.1.0.tar.gz
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyrfc3339-2.1.0"
