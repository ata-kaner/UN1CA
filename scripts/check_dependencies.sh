#!/usr/bin/env bash
#
# Copyright (C) 2024 ata-kaner
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# [
DEP_DIR="$SRC_DIR/unica/dependencies"

check_dependency() {
    dpkg -l | grep -qw "$1"
}
# ]

if [[ ! -f "$OUT_DIR/.dependencies_check" ]] || grep -q "0" "$OUT_DIR/.dependencies_check"; then
    echo "1" > "$OUT_DIR/.dependencies_check"
    echo "First run detected. Checking for missing dependencies..."
fi

readarray -t dep_list < "$DEP_DIR/dependencies_debian.txt"

for package in "${dep_list[@]}"; do
    if ! check_dependency "$package"; then
    missing_dep+=("$package")
    fi
done

if (( ${#missing_dep[@]} != 0 )); then
    echo "Missing packages found: ${missing_dep[@]}"
    echo "Installing..."
    sudo apt update && sudo apt install -y "${missing_dep[@]}"
fi

exit 0
