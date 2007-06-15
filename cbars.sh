#!/bin/sh
# Produce change bars from two revisions of a document.
# Copyright (C) 1992 Free Software Foundation, Inc.
# Francois Pinard <pinard@iro.umontreal.ca>, 1992.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

usage="$0 OLD_FILE NEW_FILE"

if [ $# -ne 2 ]; then
  echo "$usage"; exit
fi

@bindir@/wdiff -1n $1 $2 | sed -e 's/^/  /;/{+/s/^ /|/;s/{+//g;s/+}//g'
