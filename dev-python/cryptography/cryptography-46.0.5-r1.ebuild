# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
ECARGO_BUNDLE_POSTFIX="mark-rust-bundle"
CARGO_OPTIONAL="yes"
inherit cargo distutils-r1

DESCRIPTION="cryptography is a package which provides cryptographic recipes and primitives to Python developers."
SRC_URI="
https://files.pythonhosted.org/packages/60/04/ee2a9e8542e4fa2773b81771ff8349ff19cdd56b7258a0cc442639052edb/cryptography-46.0.5.tar.gz -> cryptography-46.0.5.tar.gz
mirror://macaroni/cryptography-46.0.5-mark-rust-bundle.tar.xz -> cryptography-46.0.5-mark-rust-bundle.tar.xz"
SLOT="0"
KEYWORDS="*"
IUSE="idna"
BDEPEND="
	>=dev-python/setuptools-rust-0.12.1[${PYTHON_USEDEP}]
"
RDEPEND="
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	dev-python/ipaddress[${PYTHON_USEDEP}]
	idna? ( >=dev-python/idna-2.1[${PYTHON_USEDEP}] )
"
DEPEND="virtual/rust
	
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
"
S="${WORKDIR}/cryptography-46.0.5"
src_unpack() {
	if [[ ${CRYPTOGRAPHY_DONT_BUILD_RUST} ]] ; then
	  default
	else
	  cargo_src_unpack
	fi
}
python_install() {
	distutils-r1_python_install
	if [ -e "${D}$(python_get_sitedir)/tests" ] ; then
		einfo "Removing $(python_get_sitedir)/tests directory..."
		rm -r "${D}$(python_get_sitedir)"/tests || die
	fi
}


# vim: filetype=ebuild
