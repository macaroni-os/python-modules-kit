# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/ac/cb/30e77272e014ee505d2c31f5ef1c6054582b0c94b4ad9f87330d723f0b65/picamera2-0.3.39.tar.gz -> picamera2-0.3.39.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.39"
