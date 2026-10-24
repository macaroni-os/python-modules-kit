# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Python bindings for the Brotli compression library"
HOMEPAGE="https://github.com/google/brotli"
SRC_URI="https://files.pythonhosted.org/packages/cf/81/1546c983678a9b4e77cb4718eaedd1b2caf24a6cdbf1eb8775938d22aff7/brotli-1.2.1.tar.gz -> brotli-1.2.1.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/brotli-1.2.1"
