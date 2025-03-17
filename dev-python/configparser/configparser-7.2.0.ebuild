# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Updated configparser from stdlib for earlier Pythons."
HOMEPAGE="None https://pypi.org/project/configparser/"
SRC_URI="https://files.pythonhosted.org/packages/8b/ac/ea19242153b5e8be412a726a70e82c7b5c1537c83f61b20995b2eda3dcd7/configparser-7.2.0.tar.gz -> configparser-7.2.0.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/backports[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/configparser-7.2.0"

post_src_install() {
	# This is installed by backports:
	rm -f ${D}/usr/lib*/python*/site-packages/backports/__init__.py
}
