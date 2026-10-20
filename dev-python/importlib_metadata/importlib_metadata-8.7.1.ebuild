# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/f3/49/3b30cad09e7771a4982d9975a8cbf64f00d4a1ececb53297f1d9a7be1b10/importlib_metadata-8.7.1.tar.gz -> importlib_metadata-8.7.1.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
RDEPEND="

	dev-python/zipp[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-3.6.4[${PYTHON_USEDEP}]
"
S="${WORKDIR}/importlib_metadata-8.7.1"

src_configure() {
	# write a custom pyproject.toml to ease setuptools bootstrap
	cat > pyproject.toml <<-EOF || die
	[build-system]
	requires = ["flit_core >=3.2,<5"]
	build-backend = "flit_core.buildapi"

	[project]
	name = "importlib_metadata"
	version = "${PV}"
	description = "Read metadata from Python packages"
	EOF
}

