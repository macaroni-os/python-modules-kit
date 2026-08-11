# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="meson-python"
inherit distutils-r1

DESCRIPTION="Python plotting package"
HOMEPAGE="https://matplotlib.org/ https://github.com/matplotlib/matplotlib https://pypi.org/project/matplotlib/"
SRC_URI="https://files.pythonhosted.org/packages/63/1b/4be5be87d43d327a0cf4de1a56e86f7f84c89312452406cf122efe2839e6/matplotlib-3.10.9.tar.gz -> matplotlib-3.10.9.tar.gz
"
DEPEND="

	media-libs/freetype:2
	>=media-libs/qhull-2013

"
RDEPEND="
	${DEPEND}
	>=dev-python/pillow-8[jpeg,webp,${PYTHON_USEDEP}]
	media-fonts/dejavu
	media-fonts/stix-fonts
	media-libs/libpng:0
	gtk3? (
		>=dev-python/pygobject-3.40.1:3[cairo?,${PYTHON_USEDEP}]
		x11-libs/gtk+:3[introspection]
	)
	latex? (
		virtual/latex-base
		app-text/dvipng
		app-text/ghostscript-gpl
		app-text/poppler[cairo,png,utils]
		dev-texlive/texlive-fontsrecommended
		dev-texlive/texlive-latexextra
		dev-texlive/texlive-luatex
		dev-texlive/texlive-xetex
	)
	webagg? (
		>=www-servers/tornado-6.0.4[${PYTHON_USEDEP}]
	)

	>=dev-python/contourpy-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/cycler-0.10[${PYTHON_USEDEP}]
	>=dev-python/fonttools-4.22.0[${PYTHON_USEDEP}]
	>=dev-python/kiwisolver-1.3.1[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.23[${PYTHON_USEDEP}]
	>=dev-python/packaging-20.0[${PYTHON_USEDEP}]
	>=dev-python/pyparsing-3[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.7[${PYTHON_USEDEP}]
	cairo? ( dev-python/cairocffi[${PYTHON_USEDEP}] )
"
BDEPEND="
	${RDEPEND}
	>=dev-util/meson-1.1.0
	dev-util/cmake
	virtual/pkgconfig
	>=dev-python/numpy-1.23[${PYTHON_USEDEP}]
	>=dev-python/pybind11-2.13.4[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-7[${PYTHON_USEDEP}]
"
IUSE="cairo gtk3 latex webagg"
SLOT="0"
LICENSE="BitstreamVera BSD matplotlib MIT OFL-1.1"
KEYWORDS="*"
S="${WORKDIR}/matplotlib-3.10.9"

DISTUTILS_ARGS=(
	-Dsystem-freetype=true
	-Dsystem-qhull=true
	-Dmacosx=false
)

python_prepare_all() {
	export SETUPTOOLS_SCM_PRETEND_VERSION="${PV}"

	unset DISPLAY

	export XDG_RUNTIME_DIR="${T}/runtime-dir"
	mkdir "${XDG_RUNTIME_DIR}" || die
	chmod 0700 "${XDG_RUNTIME_DIR}" || die

	distutils-r1_python_prepare_all
}

