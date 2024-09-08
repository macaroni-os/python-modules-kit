# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Updated configparser from stdlib for earlier Pythons."
HOMEPAGE="None https://pypi.org/project/configparser/"
SRC_URI="https://files.pythonhosted.org/packages/a5/2e/a8d83652990ecb5df54680baa0c53d182051d9e164a25baa0582363841d1/configparser-7.1.0.tar.gz -> configparser-7.1.0.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/backports[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/configparser-7.1.0"

post_src_install() {
	# This is installed by backports:
	rm -f ${D}/usr/lib*/python*/site-packages/backports/__init__.py
}
