# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Open vSwitch library"
HOMEPAGE="http://www.openvswitch.org/ https://pypi.org/project/ovs/"
SRC_URI="https://files.pythonhosted.org/packages/8e/f5/8405239bd64a6daa17a4f7ab76792a23745679ee4a77c2dd4eca2c79638f/ovs-3.5.0.tar.gz -> ovs-3.5.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/sortedcontainers[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/ovs-3.5.0"