# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Setuptools Rust extension plugin"
HOMEPAGE="None https://pypi.org/project/setuptools-rust/"
SRC_URI="https://files.pythonhosted.org/packages/b8/56/f6d400708a15dced5fb7c6ff5c52ee1da11e6f4d38d4efef67d7163e6a80/setuptools_rust-1.10.0.tar.gz -> setuptools_rust-1.10.0.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	>=dev-python/semantic_version-2.8.5[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools_rust-1.10.0"