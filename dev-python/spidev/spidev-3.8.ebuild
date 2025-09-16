# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python bindings for Linux SPI access through spidev"
HOMEPAGE="http://github.com/doceme/py-spidev"
SRC_URI="https://files.pythonhosted.org/packages/67/87/039b6eeea781598015b538691bc174cc0bf77df9d4d2d3b8bf9245c0de8c/spidev-3.8.tar.gz -> spidev-3.8.tar.gz
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/spidev-3.8"
