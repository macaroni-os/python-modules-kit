# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/"
SRC_URI="https://files.pythonhosted.org/packages/99/ca/18e324972e5cac914816fdd7bb03e19a455b90039c277a538f7781b50c85/cython-3.3.1.tar.gz -> cython-3.3.1.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/cython-3.3.1"

python_compile() {
	# Cython bootstraps itself from .pyx sources at build time:
	# when setuptools build_ext gets -j (always passed by this
	# kit's EAPI-7 distutils-r1 eclass from MAKEOPTS), cythonize
	# runs in parallel *threads* sharing non-thread-safe compiler
	# state (Cython.Compiler.Options, e.g. cimport_from_pyx).
	# This intermittently emits inconsistent C files (undeclared
	# __pyx_v_* symbols in Cython/Compiler/Parsing.c, "redeclared"
	# errors in refnanny.pyx):
	#   https://github.com/cython/cython/issues/7997
	# Open and unfixed as of 3.3.0 (fix proposals #8008/#8013 are
	# unmerged); Gentoo stopped passing -j to setuptools builds
	# for the same "silent miscompilation" class of bugs. Keep
	# the cythonize step serial until upstream ships a fix, and
	# mirror the sys.path guard from the upstream Gentoo ebuild.
	# Refs https://github.com/macaroni-os/mark-issues/issues/828
	local -x PYTHONPATH=
	distutils-r1_python_compile -j 1
}

