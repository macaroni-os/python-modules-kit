# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( pypy3 python3+ )

inherit distutils-r1

DESCRIPTION="Python bindings for the Enchant spellchecking system"
HOMEPAGE="
	https://github.com/pyenchant/pyenchant/
	https://pypi.org/project/pyenchant/
"
SRC_URI="https://github.com/pyenchant/pyenchant/tarball/de25bd91e59ffb54ea1786b8ea3b7d2ed52ecc23 -> pyenchant-3.2.2-de25bd9.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	app-text/enchant:*
"
BDEPEND="
	test? (
		app-dicts/myspell-en
	)
"

distutils_enable_tests pytest

src_unpack() {
	unpack ${A}
	mv "${WORKDIR}"/pyenchant-* "${S}"
}