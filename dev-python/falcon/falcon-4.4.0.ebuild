# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The ultra-reliable, fast ASGI+WSGI framework for building data plane APIs at scale."
HOMEPAGE="https://falconframework.org"
SRC_URI="https://files.pythonhosted.org/packages/a4/c7/a0584e932cdb42ab6e5dc3baab16352471dda1ba2215311c65d79ea3c0de/falcon-4.4.0.tar.gz -> falcon-4.4.0.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
BDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]
"
S="${WORKDIR}/falcon-4.4.0"
