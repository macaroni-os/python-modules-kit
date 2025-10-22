# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/7b/b1/19587742aad604f1988a8a362e660e8c3ac03adccdb71c96d86526e5eb62/setuptools_scm-9.2.2.tar.gz -> setuptools_scm-9.2.2.tar.gz
"
RDEPEND="

	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
"
BDEPEND="
	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools_scm-9.2.2"

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

