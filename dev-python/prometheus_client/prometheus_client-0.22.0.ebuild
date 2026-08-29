# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python client for the Prometheus monitoring system."
HOMEPAGE="None https://pypi.org/project/prometheus-client/"
SRC_URI="https://files.pythonhosted.org/packages/5b/5a/3fa1fa7e91a203759aaf316be394f70f2ef598d589b9785a8611b6094c00/prometheus_client-0.22.0.tar.gz -> prometheus_client-0.22.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/twisted[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/prometheus_client-0.22.0"