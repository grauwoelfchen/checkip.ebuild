# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

DESCRIPTION="This is a tiny current ip checking tool."
HOMEPAGE="https://github.com/grauwoelfchen/current-ip-address"
SRC_URI="https://github.com/downloads/grauwoelfchen/current-ip-address/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
USE_RUBY="ruby18 ruby19"

RDEPEND="${DEPEND}
    dev-lang/ruby
    www-client/w3m
"

src_install() {
	newbin checkip.rb checkip
}
