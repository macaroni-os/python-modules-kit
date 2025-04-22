# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A fast and thorough lazy object proxy"
HOMEPAGE="https://github.com/ionelmc/python-lazy-object-proxy https://python-lazy-object-proxy.readthedocs.org https://pypi.org/project/lazy-object-proxy/"
SRC_URI="https://files.pythonhosted.org/packages/57/f9/1f56571ed82fb324f293661690635cf42c41deb8a70a6c9e6edc3e9bb3c8/lazy_object_proxy-1.11.0.tar.gz -> lazy_object_proxy-1.11.0.tar.gz"

DEPEND=""
RDEPEND="test? ( dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/lazy_object_proxy-1.11.0"