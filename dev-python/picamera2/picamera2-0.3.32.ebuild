# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/11/a4/1fbb53fadc3c400a5749d3ff9f5fb323a4a40d4677959a2a2be5ac90edbd/picamera2-0.3.32.tar.gz -> picamera2-0.3.32.tar.gz
"
SLOT="0"
LICENSE="BSD 2-Clause License"
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.32"
