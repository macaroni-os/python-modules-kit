# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/"
SRC_URI="https://files.pythonhosted.org/packages/a9/d8/4981ef716ad0e3ff0d3ef383aefc6b03c4a88dee33b272bf8e0d833001ca/cython-3.3.0.tar.gz -> cython-3.3.0.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/cython-3.3.0"

python_compile() {
	# Cython bootstraps itself from .pyx sources at build time: when
	# setuptools build_ext gets -j (passed by this kit's EAPI-7
	# distutils-r1 eclass from MAKEOPTS), cythonize runs in parallel
	# *threads* sharing non-thread-safe compiler state
	# (Cython.Compiler.Options, e.g. cimport_from_pyx). This intermittently
	# emits inconsistent C files (undeclared __pyx_v_* symbols, "redeclared"
	# errors):  https://github.com/cython/cython/issues/7997
	# Open and unfixed as of 3.3.0; keep the cythonize step serial until
	# upstream ships a fix (same guard landed in kit-fixups autogen spec).
	# Refs https://github.com/macaroni-os/mark-issues/issues/828
	local -x PYTHONPATH=
	distutils-r1_python_compile -j 1
}
