# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A drop-in replacement for argparse that allows options to also be set via config files and/or environment variables."
HOMEPAGE="https://github.com/bw2/ConfigArgParse https://pypi.org/project/ConfigArgParse/"
SRC_URI="https://files.pythonhosted.org/packages/85/4d/6c9ef746dfcc2a32e26f3860bb4a011c008c392b83eabdfb598d1a8bbe5d/configargparse-1.7.1.tar.gz -> configargparse-1.7.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/configargparse-1.7.1"