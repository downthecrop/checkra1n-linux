#!/bin/sh

set -e

. ../../common.sh

echo "Removing previous work area."
rm -rf $WORK_DIR/overlay/$BUNDLE_NAME
mkdir -p $WORK_DIR/overlay/$BUNDLE_NAME
cd $WORK_DIR/overlay/$BUNDLE_NAME

cp $SRC_DIR/checkra1n \
  $OVERLAY_SOURCE_DIR
  
mkdir $DEST_DIR
mkdir $DEST_DIR/bin

cp $SRC_DIR/checkra1n $DEST_DIR/bin/
chmod +x $DEST_DIR/bin/checkra1n

install -d -m755 "$OVERLAY_ROOTFS/etc/autorun"
install -m755 "$SRC_DIR/90-checkra1n.sh" "$OVERLAY_ROOTFS/etc/autorun/90-checkra1n.sh"

install_to_overlay

echo "checkra1n scripts have been installed."
