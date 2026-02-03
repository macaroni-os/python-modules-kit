# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/b1/f3/4cb82c4d39b5573fd19257c6ff08b99b5506a0201d8bbb1cf8f1c67cd8c9/picamera2-0.3.34.tar.gz -> picamera2-0.3.34.tar.gz
"
SLOT="0"
LICENSE="BSD 2-Clause License"
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.34"
