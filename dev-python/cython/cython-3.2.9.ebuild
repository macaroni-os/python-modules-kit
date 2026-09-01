# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/"
SRC_URI="https://files.pythonhosted.org/packages/f6/de/db48b8870e766cfea809986cc50c1e986c663a9ab7bafd0ac1a2512c4a26/cython-3.2.9.tar.gz -> cython-3.2.9.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/cython-3.2.9"
