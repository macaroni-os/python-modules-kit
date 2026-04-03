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
https://files.pythonhosted.org/packages/a4/ba/04b1bd4218cbc58dc90ce967106d51582371b898690f3ae0402876cc4f34/cryptography-46.0.6.tar.gz -> cryptography-46.0.6.tar.gz
mirror://macaroni/cryptography-46.0.6-mark-rust-bundle.tar.xz -> cryptography-46.0.6-mark-rust-bundle.tar.xz"
SLOT="0"
KEYWORDS="*"
IUSE="idna"
BDEPEND="
	>=dev-python/setuptools-rust-0.12.1[${PYTHON_USEDEP}]
"
RDEPEND="
	idna? ( >=dev-python/idna-2.1[${PYTHON_USEDEP}] )
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	dev-python/ipaddress[${PYTHON_USEDEP}]
"
DEPEND="virtual/rust
	
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
"
S="${WORKDIR}/cryptography-46.0.6"
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
