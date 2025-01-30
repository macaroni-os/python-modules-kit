# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python driver for MongoDB <http://www.mongodb.org>"
HOMEPAGE="None https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/a0/86/0c89ca3c88818e368e80fb2415e8fd8d7299211ee142128bb7c7d17c3aa4/pymongo-10.10.10.10.tar.gz -> pymongo-10.10.10.10.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/hatch-requirements-txt[${PYTHON_USEDEP}]
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pymongo-10.10.10.10"