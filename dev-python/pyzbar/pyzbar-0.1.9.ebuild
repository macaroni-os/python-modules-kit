# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Read one-dimensional barcodes and QR codes from Python 2 and 3 (seedsigner fork)"
HOMEPAGE="https://github.com/SeedSigner/pyzbar"
SRC_URI="https://api.github.com/repos/SeedSigner/pyzbar/tarball/v0.1.9-ss -> pyzbar-0.1.9-c3c2378.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

post_src_unpack() {
	mv SeedSigner-pyzbar-* ${S}
}



# vim: filetype=ebuild
