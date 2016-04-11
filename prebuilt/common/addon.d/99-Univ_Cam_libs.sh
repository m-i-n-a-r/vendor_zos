#!/sbin/sh
#
# Script: /system/addon.d/99-Univ_Cam_libs.sh
# This addon.d script backs up camera files

. /tmp/backuptool.functions

list_files() {
cat << EOF
lib/libjni_mosaic_next.so
lib/libjni_tinyplanet_next.so
lib/libjni_mosaic.so
lib/libjni_tinyplanet.so
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
