# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Open vSwitch library"
HOMEPAGE="http://www.openvswitch.org/ https://pypi.org/project/ovs/"
SRC_URI="https://files.pythonhosted.org/packages/dd/45/145eefde089bb3e9e7211e4705053f2e572c73255e059a9c7180f1fd73ca/ovs-4.0.0.tar.gz -> ovs-4.0.0.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
RDEPEND="
	dev-python/sortedcontainers[${PYTHON_USEDEP}]
"
S="${WORKDIR}/ovs-4.0.0"

# vim: filetype=ebuild
