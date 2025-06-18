# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Dependency injection framework for Python"
HOMEPAGE="https://github.com/ets-labs/python-dependency-injector"
SRC_URI="https://files.pythonhosted.org/packages/fc/6b/b35f3e5344a5d059bdb230b5a42a61dd6f3072694b09b4c8b0836119cde7/dependency_injector-4.48.0.tar.gz -> dependency_injector-4.48.0.tar.gz
"
IUSE="+native-extensions"
SLOT="0"
LICENSE="BSD-3-Clause"
KEYWORDS="*"
S="${WORKDIR}/dependency_injector-4.48.0"

python_compile() {
	local -x DEPENDENCY_INJECTOR_NO_EXTENSIONS=0
	if ! use native-extensions || [[ ${EPYTHON} != python* ]]; then
		DEPENDENCY_INJECTOR_NO_EXTENSIONS=1
	fi
	distutils-r1_python_compile
}

