# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library"
HOMEPAGE="https://github.com/RaspberryPi/picamera2"
SRC_URI="https://files.pythonhosted.org/packages/73/1d/2f2e4f4edeae31d34086c850ab6ccd229a7bae8241878b2426949e8eba07/picamera2-0.3.31.tar.gz -> picamera2-0.3.31.tar.gz
"
SLOT="0"
LICENSE="BSD 2-Clause License"
KEYWORDS="*"
S="${WORKDIR}/picamera2-0.3.31"
