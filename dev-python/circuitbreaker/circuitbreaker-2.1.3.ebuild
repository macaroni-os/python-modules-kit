# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python Circuit Breaker pattern implementation"
HOMEPAGE="https://github.com/fabfuel/circuitbreaker"
SRC_URI="https://files.pythonhosted.org/packages/df/ac/de7a92c4ed39cba31fe5ad9203b76a25ca67c530797f6bb420fff5f65ccb/circuitbreaker-2.1.3.tar.gz -> circuitbreaker-2.1.3.tar.gz
"
LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/circuitbreaker-2.1.3"
