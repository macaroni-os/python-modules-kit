# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/3d/e4/87340556ec4fea46d98ba87fff2f755b7eb5071931d51b698a804e6d8418/picamera2-0.3.38.tar.gz -> picamera2-0.3.38.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.38"
