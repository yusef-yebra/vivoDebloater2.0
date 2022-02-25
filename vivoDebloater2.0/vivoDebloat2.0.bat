@echo off
echo vivoDebloater2.0
echo.
adb kill-server
adb start-server
echo.

:menu
echo.
echo Choose an option: 
echo.
echo 1 - Remove all bloatware (All apps have been proven to be useless, please make an issue report if you needed a functionality that was uninstalled.)
echo 2 - Disable software updates
echo 3 - Exit
echo.
set /p choose=Choosed option: 
if %choose%==1 goto removebloatware
if %choose%==2 goto softwareupdates
if %choose%==3 goto exit
echo.

:removebloatware
echo.
adb shell pm uninstall -k --user 0 com.android.vivo.tws.vivotws
adb shell pm uninstall -k --user 0 com.vivo.share
adb shell pm uninstall -k --user 0 com.yozo.vivo.office
adb shell pm uninstall -k --user 0 com.bbk.cloud
adb shell pm uninstall -k --user 0 com.bbk.account
adb shell pm uninstall -k --user 0 com.vivo.website
adb shell pm uninstall -k --user 0 com.bbk.theme
adb shell pm uninstall -k --user 0 com.bbk.theme.resources
adb shell pm uninstall -k --user 0 com.vivo.gametrain
adb shell pm uninstall -k --user 0 com.vivo.safecenter
adb shell pm uninstall -k --user 0 com.bbk.scene.indoor
adb shell pm uninstall -k --user 0 com.vivo.magazine
adb shell pm uninstall -k --user 0 com.iqoo.secure
adb shell pm uninstall -k --user 0 com.vivo.dream.music
adb shell pm uninstall -k --user 0 com.vivo.childrenmode
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.vivo.video.floating
adb shell pm uninstall -k --user 0 com.vivo.easyshare
adb shell pm uninstall -k --user 0 com.vivo.audiofx
adb shell pm uninstall -k --user 0 com.vivo.agent
adb shell pm uninstall -k --user 0 com.vivo.gamecube
echo.
goto :menu
exit

:softwareupdates
echo.
adb shell pm uninstall -k --user 0 com.bbk.updater
echo.
goto :menu
exit

:exit
exit