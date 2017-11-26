#!/usr/bin/env bash

DIR_ICONPACK='iconpack/'
DIR_STYLE='style/'
DIR_DIST='dist/'
ARCHIVE_ICONPACK='dark.ts3_iconpack'
ARCHIVE_STYLE='dark.ts3_style'
ARCHIVE_ADDON='dark.ts3_addon'
ZIP_PATH='/usr/bin/zip'

# Switch to bin dir
DIR="$( pushd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# ------------------------------------
#  Cleanup
# ------------------------------------

echo
echo 'Running cleanup tasks'
echo

cd ..
cd ${DIR_DIST}

echo ' - Removing old icon pack archive...'
if [[ -d ${ARCHIVE_ICONPACK} ]]; then
    rm ${ARCHIVE_ICONPACK}
fi

echo ' - Removing old style archive...'
if [[ -d ${ARCHIVE_STYLE} ]]; then
    rm ${ARCHIVE_STYLE}
fi

echo ' - Removing old addon archive...'
if [[ -d ${ARCHIVE_ADDON} ]]; then
    rm ${ARCHIVE_ADDON}
fi

# ------------------------------------
#  Build Packages
# ------------------------------------

echo
echo 'Building packages'
echo

echo ' - Building icon pack archive...'
cd ..
cd ${DIR_ICONPACK}
${ZIP_PATH} ../dist/${ARCHIVE_ICONPACK} package.ini gfx
echo
cd ..

echo ' - Building style archive...'
cd ${DIR_STYLE}
${ZIP_PATH} ../dist/${ARCHIVE_STYLE} package.ini styles
echo
cd ..

echo ' - Building addon archive...'
cd ${DIR_ICONPACK}
${ZIP_PATH} ../dist/${ARCHIVE_ADDON} gfx
cd ..
cd ${DIR_STYLE}
${ZIP_PATH} ../dist/${ARCHIVE_ADDON} styles
cd ..
${ZIP_PATH} dist/${ARCHIVE_ADDON} package.ini
echo

# Return to previous dir
popd
