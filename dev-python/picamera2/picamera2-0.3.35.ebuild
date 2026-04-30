# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/92/98/1de86dc8c372bf2eaf5cf0b4935dfb00572c9011e63a054efde6003e0d8e/picamera2-0.3.35.tar.gz -> picamera2-0.3.35.tar.gz
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.35"
