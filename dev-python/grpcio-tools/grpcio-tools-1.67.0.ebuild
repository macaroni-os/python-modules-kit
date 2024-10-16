# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/e7/f8/62e15867651b72f6f95313e21d81f5f1c210b69a4cc664aecf52ec4c8a53/grpcio_tools-1.67.0.tar.gz -> grpcio_tools-1.67.0.tar.gz"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio_tools-1.67.0"