# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1 eutils

DESCRIPTION="JSON Web Token implementation in Python"
HOMEPAGE="https://github.com/jpadilla/pyjwt https://pypi.org/project/PyJWT/"
SRC_URI="https://files.pythonhosted.org/packages/fb/68/ce067f09fca4abeca8771fe667d89cc347d1e99da3e093112ac329c6020e/pyjwt-2.9.0.tar.gz -> pyjwt-2.9.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="python_targets_python2_7? ( dev-python/pyjwt-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/PyJWT-2.9.0"

pkg_postinst() {
	elog "Available optional features:"
	optfeature "cryptography" ">=dev-python/cryptography-1.4.0"
	optfeature "flake8" "dev-python/flake8 dev-python/flake8-import-order dev-python/pep8-naming"
}
