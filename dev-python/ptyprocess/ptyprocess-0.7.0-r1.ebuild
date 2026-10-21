# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Run a subprocess in a pseudo terminal"
HOMEPAGE="https://github.com/pexpect/ptyprocess"
SRC_URI="https://files.pythonhosted.org/packages/20/e5/16ff212c1e452235a90aeb09066144d0c5a6a8c0834397e03f5224495c4e/ptyprocess-0.7.0.tar.gz -> ptyprocess-0.7.0.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/flit_core[${PYTHON_USEDEP}]
"
S="${WORKDIR}/ptyprocess-0.7.0"

src_configure() {
	# Override pyproject.toml to support flit_core 4
	{
		echo '
		[build-system]
		requires = ["flit_core >=3.2,<5"]
		build-backend = "flit_core.buildapi"

		[project]
		readme = "README.rst"
		name = "ptyprocess"
		version = "0.7.0"
		description = "Read metadata from Python packages"
		authors = [
				{ name = "Thomas Kluyver", email = "thomas@kluyver.me.uk" },
		]

		[project.urls]
		Homepage = "https://github.com/pexpect/ptyprocess"
		'
	} > pyproject.toml
}

