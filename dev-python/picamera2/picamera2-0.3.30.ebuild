# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/8d/81/713990c74e3f29a8d0f3f338b611146067745895bb252f0ec9692e10587a/picamera2-0.3.30.tar.gz -> picamera2-0.3.30.tar.gz
"
SLOT="0"
LICENSE="BSD 2-Clause License"
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.30"
