# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/58/9a/1e4a8cb27098735b8d6bf1d68e6ed3e2ca758c078fdebb3728334d3381a8/picamera2-0.3.36.tar.gz -> picamera2-0.3.36.tar.gz
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.36"
