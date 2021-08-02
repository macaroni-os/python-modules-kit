# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The Real First Universal Charset Detector"
HOMEPAGE="https://github.com/ousret/charset_normalizer"
SRC_URI="https://files.pythonhosted.org/packages/e7/4e/2af0238001648ded297fb54ceb425ca26faa15b341b4fac5371d3938666e/charset-normalizer-2.0.4.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/charset_normalizer-2.0.4"

src_unpack() {
	default
	mv ${WORKDIR}/charset-normalizer-* ${S} || die
}
src_prepare() {
	sed -i -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
