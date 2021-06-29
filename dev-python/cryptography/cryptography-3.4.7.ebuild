# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CARGO_OPTIONAL="yes"
CRATES="
bitflags-1.2.1
cfg-if-1.0.0
ctor-0.1.19
ghost-0.1.2
indoc-0.3.6
indoc-impl-0.3.6
instant-0.1.9
inventory-0.1.10
inventory-impl-0.1.10
libc-0.2.85
lock_api-0.4.2
parking_lot-0.11.1
parking_lot_core-0.8.3
paste-0.1.18
paste-impl-0.1.18
proc-macro-hack-0.5.19
proc-macro2-1.0.24
pyo3-0.13.2
pyo3-macros-0.13.2
pyo3-macros-backend-0.13.2
quote-1.0.9
redox_syscall-0.2.4
scopeguard-1.1.0
smallvec-1.6.1
syn-1.0.60
unicode-xid-0.2.1
unindent-0.1.7
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives
"
HOMEPAGE="https://github.com/pyca/cryptography https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/9b/77/461087a514d2e8ece1c975d8216bc03f7048e6090c5166bc34115afdaa53/cryptography-3.4.7.tar.gz
$(cargo_crate_uris ${CRATES})
"

DEPEND="
	libressl? ( dev-libs/libressl:0= )
	!libressl? ( dev-libs/openssl:0= )"
RDEPEND="python_targets_python2_7? ( dev-python/cryptography-compat )"
BDEPEND="
	!x86? ( >=virtual/rust-1.37.0 )
	x86? (
		cpu_flags_x86_sse2? (
			>=virtual/rust-1.37.0
		)
	)"
IUSE="cpu_flags_x86_sse2 libressl idna python_targets_python2_7"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD )"
KEYWORDS="*"

S="${WORKDIR}/cryptography-3.4.7"

pkg_setup() {
	use x86 && ! use cpu_flags_x86_sse2 && export CRYPTOGRAPHY_DONT_BUILD_RUST=1
}
src_unpack() {
	if [[ ${CRYPTOGRAPHY_DONT_BUILD_RUST} ]] || [ "$PN"  == 'cryptography-compat' ] ; then
		default
	else
		cargo_src_unpack
	fi
}
