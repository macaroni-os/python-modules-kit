# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="A module to control Raspberry Pi GPIO channels"
HOMEPAGE="http://sourceforge.net/projects/raspberry-gpio-python/"
SRC_URI="https://files.pythonhosted.org/packages/c4/0f/10b524a12b3445af1c607c27b2f5ed122ef55756e29942900e5c950735f2/RPi.GPIO-0.7.1.tar.gz -> RPi.GPIO-0.7.1.tar.gz
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/RPi.GPIO-0.7.1"
