# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/60/d5/76bd9891050a34a4fb8b47887fa6b2f75f0e99f4e9138becfb0421bb7175/grpcio-tools-1.62.1.tar.gz -> grpcio-tools-1.62.1.tar.gz"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-tools-1.62.1"