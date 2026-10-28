# Distributed under the terms of the MIT License

EAPI=8

DESCRIPTION="Dry-run an emerge and print the config fixes Portage needs as paste-ready commands"
S="${WORKDIR}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm64 x86"

RDEPEND="
	app-shells/bash
	sys-apps/portage
	app-alternatives/awk
"

src_install() {
	dobin "${FILESDIR}"/emfix
}
