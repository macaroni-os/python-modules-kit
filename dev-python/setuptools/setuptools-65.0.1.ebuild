# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pypa/setuptools https://pypi.org/project/setuptools/"
SRC_URI="https://files.pythonhosted.org/packages/02/10/be08cf9b821236bcc312a6104fb586bbeb692a50b1714ade91b9e28c2db4/setuptools-65.0.1.tar.gz -> setuptools-65.0.1.tar.gz
"

DEPEND="
	app-arch/unzip"
RDEPEND="python_targets_python2_7? ( dev-python/setuptools-compat )"
PDEPEND=">=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools-65.0.1"

SETUPTOOLS_USE_DISTUTILS=stdlib
python_install() {
	export DISTRIBUTE_DISABLE_VERSIONED_EASY_INSTALL_SCRIPT=1
	distutils-r1_python_install
	# Remove any wrapper
	if [ "$PN"  == 'setuptools-compat' ]; then
		rm -rf ${D}/usr/bin
	fi

}