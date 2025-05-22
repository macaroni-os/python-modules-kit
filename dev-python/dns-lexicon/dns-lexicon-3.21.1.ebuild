# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Manipulate DNS records on various DNS providers in a standardized/agnostic way"
HOMEPAGE="https://pypi.org/project/dns-lexicon/"
SRC_URI="https://files.pythonhosted.org/packages/60/58/055f9552cafeeac094a5e0334fe0eaf4cbf8e1485cc545a26c079ca632f1/dns_lexicon-3.21.1.tar.gz -> dns_lexicon-3.21.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/tldextract[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
"