# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=(python2_7)

declare -A CALCULATE_MODULES=(
	["lib"]="3.6.2.1"
	["install"]="3.6.2.7"
	["core"]="3.6.2.2"
	["i18n"]="3.6.2.1"
	["client"]="3.6.2.1"
	["desktop"]="3.6.2.1"
	["console"]="3.6.2.1"
	["console-gui"]="3.6.2.2"
	["builder"]="3.6.2.2"
)

inherit calculate-utils-r4

DESCRIPTION="A set of Calculate utilities for system installation, build and upgrade"
HOMEPAGE="http://www.calculate-linux.org/main/en/calculate_utilities"
IUSE="+gpg"

RDEPEND="
	gpg? (
		app-crypt/gnupg
		app-crypt/openpgp-keys-calculate-release
	)
"

LICENSE="Apache-2.0"
SLOT="3"
KEYWORDS="x86 amd64"

