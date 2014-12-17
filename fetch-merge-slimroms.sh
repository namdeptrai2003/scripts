#!/bin/bash

# assign root repo dir to rdir
rdir=`pwd`

# Text color
bldgrn=${txtbld}$(tput setaf 2)
txtrst=$(tput sgr0)

# warning
echo -e "${bldgrn}Run this script from the root repo folder! ${txtrst}"

#`check for updates and merge
echo -e "${bldgrn}Updating frameworks/base ${txtrst}"
cd $rdir/frameworks/base && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/frameworks_base lp5.0
echo -e "${bldgrn}Updating packages/apps/Settings ${txtrst}"
cd $rdir/packages/apps/Settings && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/packages_apps_Settings lp5.0
echo -e "${bldgrn}Updating build ${txtrst}"
cd $rdir/build && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/android_build lp5.0
echo -e "${bldgrn}Updating vendor/slim ${txtrst}"
cd $rdir/vendor/slim && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/vendor_slim lp5.0
echo -e "${bldgrn}Updating packages/apps/SlimCenter ${txtrst}"
cd $rdir/packages/apps/SlimCenter && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/packages_apps_SlimCenter lp5.0
echo -e "${bldgrn}Updating device/lge/mako ${txtrst}"
cd $rdir/device/lge/mako && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/device_lge_mako lp5.0
echo -e "${bldgrn}Updating kernel/lge/mako ${txtrst}"
cd $rdir/kernel/lge/mako && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/kernel_lge_mako lp5.0
echo -e "${bldgrn}Updating device/lge/hammerhead ${txtrst}"
cd $rdir/device/lge/hammerhead && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/device_lge_hammerhead lp5.0
echo -e "${bldgrn}Updating kernel/lge/hammerhead ${txtrst}"
cd $rdir/kernel/lge/hammerhead && git fetch slimroms && git merge slimroms/lp5.0 && git push https://github.com/ezio84/kernel_lge_hammerhead lp5.0
echo -e "${bldgrn}Updating AudioVisualizer by Cyanogen ${txtrst}"
cd $rdir/external/android-visualizer && git fetch cm && git merge cm/cm-12.0 && git push https://github.com/ezio84/android_external_android-visualizer cm-12.0
echo -e "${bldgrn}Updating AudioFX by Cyanogen ${txtrst}"
cd $rdir/packages/apps/AudioFX && git fetch cm && git merge cm/cm-12.0 && git push https://github.com/ezio84/android_packages_apps_AudioFX cm-12.0
echo -e "${bldgrn}Updating Eleven by Cyanogen ${txtrst}"
cd $rdir/packages/apps/Eleven && git fetch cm && git merge cm/cm-12.0 && git push https://github.com/ezio84/android_packages_apps_Eleven cm-12.0
# The end
echo -e "${bldgrn}Done, exiting ${txtrst}"
