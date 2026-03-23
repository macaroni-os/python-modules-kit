# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Dependency injection framework for Python"
HOMEPAGE="https://github.com/ets-labs/python-dependency-injector"
SRC_URI="https://files.pythonhosted.org/packages/f3/be/26bb530d06618fb0bb34244d46b0d0ccc53d0974e680d8653f1b1b313a0e/dependency_injector-4.49.0.tar.gz -> dependency_injector-4.49.0.tar.gz
"
IUSE="+native-extensions"
SLOT="0"
LICENSE="BSD-3-Clause"
KEYWORDS="*"
S="${WORKDIR}/dependency_injector-4.49.0"

python_compile() {
	local -x DEPENDENCY_INJECTOR_NO_EXTENSIONS=0
	if ! use native-extensions || [[ ${EPYTHON} != python* ]]; then
		DEPENDENCY_INJECTOR_NO_EXTENSIONS=1
	fi
	distutils-r1_python_compile
}

