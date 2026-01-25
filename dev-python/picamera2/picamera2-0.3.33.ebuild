# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/b0/83/91266631d0c040354a72be85751054f7f70270840f4e2539f72d5539d017/picamera2-0.3.33.tar.gz -> picamera2-0.3.33.tar.gz
"
SLOT="0"
LICENSE="BSD 2-Clause License"
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.33"
