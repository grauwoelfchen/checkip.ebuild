# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1
inherit eutils

DESCRIPTION="This is a tiny current ip checking tool."
HOMEPAGE="https://github.com/grauwoelfchen/checkip"
SRC_URI="https://github.com/downloads/grauwoelfchen/checkip/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND="${DEPEND}
	www-client/w3m"

src_compile() {
	cp checkip.rb checkip
	return true;
}

src_install() {
	dobin checkip
}
