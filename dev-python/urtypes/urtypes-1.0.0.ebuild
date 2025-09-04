# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python implementation of the Blockchain Commons UR Types specification"
HOMEPAGE="https://github.com/selfcustody/urtypes"
SRC_URI="https://api.github.com/repos/selfcustody/urtypes/tarball/v1.0.0 -> urtypes-1.0.0-115ae18.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

post_src_unpack() {
	mv selfcustody-urtypes-* ${S}
}



# vim: filetype=ebuild
