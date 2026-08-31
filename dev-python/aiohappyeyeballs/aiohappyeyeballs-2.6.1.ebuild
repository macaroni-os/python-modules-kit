# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Happy Eyeballs for asyncio"
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/26/30/f84a107a9c4331c14b2b586036f40965c128aa4fee4dda5d3d51cb14ad54/aiohappyeyeballs-2.6.1.tar.gz -> aiohappyeyeballs-2.6.1.tar.gz
"
LICENSE="PSF-2.0"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/aiohappyeyeballs-2.6.1"
