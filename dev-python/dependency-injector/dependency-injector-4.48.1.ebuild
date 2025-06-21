# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Dependency injection framework for Python"
HOMEPAGE="https://github.com/ets-labs/python-dependency-injector"
SRC_URI="https://files.pythonhosted.org/packages/26/7c/5062c4a7ffd32bf210ff55fab9d279a5beeae350fb09533d3536811e13b6/dependency_injector-4.48.1.tar.gz -> dependency_injector-4.48.1.tar.gz
"
IUSE="+native-extensions"
SLOT="0"
LICENSE="BSD-3-Clause"
KEYWORDS="*"
S="${WORKDIR}/dependency_injector-4.48.1"

python_compile() {
	local -x DEPENDENCY_INJECTOR_NO_EXTENSIONS=0
	if ! use native-extensions || [[ ${EPYTHON} != python* ]]; then
		DEPENDENCY_INJECTOR_NO_EXTENSIONS=1
	fi
	distutils-r1_python_compile
}

