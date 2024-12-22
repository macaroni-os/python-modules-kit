# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="None https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/4f/a4/00a9ac1b555294710d4a68d2ce8dfdf39d72aa4d769a7395d05218d88a42/setuptools_scm-8.1.0.tar.gz -> setuptools_scm-8.1.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	test? ( dev-python/build[${PYTHON_USEDEP}] dev-python/typing_extensions[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools_scm-8.1.0"

src_configure() {
	if has_version "<dev-python/setuptools_scm-8"; then # only happens when setuptools_scm-7 is installed (main cause is duplicated entry points in similar fashion as in https://github.com/pypa/setuptools/issues/3649)
		# it could be done better, but only side effect is two aditional internal unused api files added
		# tested with python 3.12 - the duplicated entries where gone and update worked correctly without any quick fixes
		ewarn "adding /src/setuptools_scm/{file_finder_git.py,file_hinder_hg.py} which point to _file_finders.{git,hg} modules due to build tools interaction"
		echo "from ._file_finders.git import *" > ${S}/src/setuptools_scm/file_finder_git.py
		echo "from ._file_finders.hg import *" >  ${S}/src/setuptools_scm/file_finder_hg.py
	fi
	distutils-r1_src_configure
}
