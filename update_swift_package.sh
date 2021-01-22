#!/bin/bash
set -e

WORKING_DIR="../OneSignal-iOS-SDK/iOS_SDK/OneSignalSDK/"

FRAMEWORK_FOLDER_NAME="OneSignal_XCFramework"

FRAMEWORK_NAME="OneSignal"

FRAMEWORK_PATH="${WORKING_DIR}/${FRAMEWORK_FOLDER_NAME}/${FRAMEWORK_NAME}.xcframework"

FRAMEWORK_ZIP_PATH="${WORKING_DIR}/${FRAMEWORK_FOLDER_NAME}/${FRAMEWORK_NAME}.xcframework.zip"

SIMULATOR_ARCHIVE_PATH="${WORKING_DIR}/${FRAMEWORK_FOLDER_NAME}/simulator.xcarchive"

IOS_DEVICE_ARCHIVE_PATH="${WORKING_DIR}/${FRAMEWORK_FOLDER_NAME}/iOS.xcarchive"

CATALYST_ARCHIVE_PATH="${WORKING_DIR}/${FRAMEWORK_FOLDER_NAME}/catalyst.xcarchive"

SWIFT_PACKAGE_DIRECTORY=$(pwd)

SWIFT_PACKAGE_PATH="${SWIFT_PACKAGE_DIRECTORY}/Package.swift"

# Remove the old Zipped XCFramework and create a new Zip
echo "Removing old Zipped XCFramework ${FRAMEWORK_ZIP_PATH}"
rm -rf "${FRAMEWORK_ZIP_PATH}"
echo "Creating new Zipped XCFramework ${FRAMEWORK_ZIP_PATH}"
ditto -c -k --sequesterRsrc --keepParent "${FRAMEWORK_PATH}" "${FRAMEWORK_ZIP_PATH}" 

# Compute the checksum for the Zipped framework
echo "Computing package checksum and updating Package.swift ${SWIFT_PACKAGE_PATH}"
CHECKSUM=$(swift package compute-checksum "${FRAMEWORK_ZIP_PATH}")
SWIFT_PM_CHECKSUM_LINE="          checksum: \"${CHECKSUM}\""
# Use sed to remove line 17 from the Swift.package and replace it with the new checksum
sed -i '' "17s/.*/$SWIFT_PM_CHECKSUM_LINE/" "${SWIFT_PACKAGE_PATH}"
#Ask for the new release version number to be placed in the package URL
echo -e "\033[1mEnter the new SDK release version number\033[0m"
read VERSION_NUMBER
SWIFT_PM_URL_LINE="          url: \"https:\/\/github.com\/OneSignal\/OneSignal-iOS-SDK\/releases\/download\/${VERSION_NUMBER}\/OneSignal.xcframework.zip\","
# Use sed to remove line 16 from the Swift.package and replace it with the new URL for the new release
sed -i '' "16s/.*/$SWIFT_PM_URL_LINE/" "${SWIFT_PACKAGE_PATH}"
#Open XCFramework folder to drag zip into new release
open "${WORKING_DIR}/${FRAMEWORK_FOLDER_NAME}"

