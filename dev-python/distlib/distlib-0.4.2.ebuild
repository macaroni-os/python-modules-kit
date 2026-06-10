# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Distribution utilities"
HOMEPAGE="https://github.com/pypa/distlib"
SRC_URI="https://files.pythonhosted.org/packages/46/8d/873e9252ea2c0e0c857884e0a2899ec43ade132345df1925ef24cbe64f18/distlib-0.4.2.tar.gz -> distlib-0.4.2.tar.gz
"
SLOT="0"
LICENSE="PSF-2.0"
KEYWORDS="*"
S="${WORKDIR}/distlib-0.4.2"
