# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A pure Python interface for the Raspberry Pi camera module."
HOMEPAGE="http://picamera.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/79/c4/80afe871d82ab1d5c9d8f0c0258228a8a0ed96db07a78ef17e7fba12fda8/picamera-1.13.tar.gz -> picamera-1.13.tar.gz
"
SLOT="0"
LICENSE="BSD License"
KEYWORDS="*"
S="${WORKDIR}/picamera-1.13"

src_prepare() {
		distutils-r1_src_prepare
		sed -e "s/^ *if not is_raspberry_pi():/if False:/" \
				-e "s/raise ValueError('Unable to determine if this system is a Raspberry Pi')/print('picamera: skipping Raspberry Pi hardware check via ebuild')/" \
				-i setup.py || die
}

