# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/95/68/d1625560bee17a1ba81eb3fd4cd76a934c6e194055738ca0621387cc1350/picamera2-0.3.37.tar.gz -> picamera2-0.3.37.tar.gz
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.37"
