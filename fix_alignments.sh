#!/bin/zsh
# This script is meant to be run on macos only. 
# To run this script in Linux environment, modify gsed into sed
# Dependency: ttx gsed python3
python3 -m venv venv
source venv/bin/activate
pip install pip --upgrade
pip install fonttools
FILENAME="sarasa-fixed-hc-bold"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-bolditalic"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-extralight"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-extralightitalic"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-italic"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-light"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-lightitalic"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-regular"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-semibold"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

FILENAME="sarasa-fixed-hc-semibolditalic"

ttx -t "OS/2" "${FILENAME}-nerd-font.ttf"
ttx -t "OS/2" "${FILENAME}-nerd-font-translated.ttf"
original_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font.ttx" | cut -d '"' -f 2)"
translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo translated xAvgCharWidth is $translated_x_avg_char_width
gsed -i "s/xAvgCharWidth value=\"[0-9]\+\"/xAvgCharWidth value=\"${original_x_avg_char_width}\"/g" "${FILENAME}-nerd-font-translated.ttx"
patched_translated_x_avg_char_width="$(grep xAvgCharWidth "${FILENAME}-nerd-font-translated.ttx" | cut -d '"' -f 2)"
echo original xAvgCharWidth is $original_x_avg_char_width
echo patched  translated xAvgCharWidth is $patched_translated_x_avg_char_width
mv "${FILENAME}-nerd-font-translated.ttf" "${FILENAME}-nerd-font-translated.original.ttf"
ttx -o "${FILENAME}-nerd-font-translated.ttf" -m "${FILENAME}-nerd-font-translated.original.ttf" "${FILENAME}-nerd-font-translated.ttx"

python3 build-hdmx-for-sarasa.py "${FILENAME}-nerd-font-translated.ttf"

rm *.original.ttf
rm *.ttx*
deactivate
