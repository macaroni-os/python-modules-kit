# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Fast, Extensible Progress Meter"
HOMEPAGE="https://tqdm.github.io https://github.com/tqdm/tqdm https://pypi.org/project/tqdm/"
SRC_URI="https://files.pythonhosted.org/packages/0d/ea/b2a5bd54b28a324dae8211928b2d730b6547500342c7e6c6dea08bd0a485/tqdm-4.70.1.tar.gz -> tqdm-4.70.1.tar.gz
"
LICENSE="MPL-2.0 MIT"
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]
"
S="${WORKDIR}/tqdm-4.70.1"
