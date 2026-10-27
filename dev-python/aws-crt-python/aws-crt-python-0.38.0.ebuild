# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A common runtime for AWS Python projects"
HOMEPAGE="https://github.com/awslabs/aws-crt-python https://pypi.org/project/awscrt/"
SRC_URI="https://files.pythonhosted.org/packages/0c/c4/1f7c4161aa665b06ddb9c34acbe6b5ea8fc8bf72b78de474d65e6f494ca4/awscrt-0.38.0.tar.gz -> awscrt-0.38.0.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
BDEPEND="
	dev-util/cmake
"
RDEPEND="
	dev-libs/openssl:=
"
DEPEND="

	dev-libs/openssl:=

"
RESTRICT="test"
S="${WORKDIR}/awscrt-0.38.0"

src_configure() {
	# Build the bundled aws-c-* libs but link against system OpenSSL
	# instead of compiling the bundled AWS-LC (no perl toolchain needed)
	export AWS_CRT_BUILD_USE_SYSTEM_LIBCRYPTO=1
}

