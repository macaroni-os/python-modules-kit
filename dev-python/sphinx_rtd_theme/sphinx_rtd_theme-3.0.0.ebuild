# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
inherit distutils-r1

DESCRIPTION="Read the Docs theme for Sphinx"
HOMEPAGE="https://github.com/readthedocs/sphinx_rtd_theme https://pypi.org/project/sphinx-rtd-theme/"
SRC_URI="https://files.pythonhosted.org/packages/21/f8/2667f9cab89827528596588dd9de6f937f52e5c6e87e6f28ecb866955551/sphinx_rtd_theme-3.0.0.tar.gz -> sphinx_rtd_theme-3.0.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/sphinxcontrib-jquery[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/sphinx_rtd_theme-3.0.0"