# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="httplib2 caching for requests"
HOMEPAGE="https://pypi.org/project/CacheControl/"
SRC_URI="https://files.pythonhosted.org/packages/58/3a/0cbeb04ea57d2493f3ec5a069a117ab467f85e4a10017c6d854ddcbff104/cachecontrol-0.14.3.tar.gz -> cachecontrol-0.14.3.tar.gz
"
RDEPEND="

	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
"
BDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cachecontrol-0.14.3"

src_prepare() {
	sed -i -e 's/license = "Apache-2.0"/license = { text = "Apache-2.0" }/' \
		-e '/^license-files.*/d' \
		pyproject.toml || die
	distutils-r1_src_prepare
}

