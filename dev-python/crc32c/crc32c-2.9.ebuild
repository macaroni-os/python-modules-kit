# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A python package implementing the crc32c algorithm in hardware and software"
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/b8/2a/1b7eadbd3c858204a90406a2a1e0dccd1592f69b77ec278a202fa325c50f/crc32c-2.9.tar.gz -> crc32c-2.9.tar.gz
"
LICENSE="LGPL-2.1-or-later"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/crc32c-2.9"
