# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A python wrapper for the GitLab API"
HOMEPAGE="None https://pypi.org/project/python-gitlab/"
SRC_URI="https://files.pythonhosted.org/packages/4e/98/ec8d91651395741ba95d8b9577de807ab87a07e55bd380598fd1c4bc24d2/python_gitlab-4.12.1.tar.gz -> python_gitlab-4.12.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python_gitlab-4.12.1"