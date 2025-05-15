# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/a3/82/f6e29c8d5c098b6be61460371c2c5591f4a335923639edec43b3830650a4/importlib_metadata-6.7.0.tar.gz -> importlib_metadata-6.7.0.tar.gz
"
RDEPEND="

	dev-python/zipp[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-3.6.4[${PYTHON_USEDEP}]
"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/importlib_metadata-6.7.0"

src_configure() {
	# write a custom pyproject.toml to ease setuptools bootstrap
	cat > pyproject.toml <<-EOF || die
	[build-system]
	requires = ["flit_core >=3.2,<4"]
	build-backend = "flit_core.buildapi"

	[project]
	name = "importlib_metadata"
	version = "${PV}"
	description = "Read metadata from Python packages"
	EOF
}

