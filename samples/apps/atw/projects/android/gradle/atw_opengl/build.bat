@echo off

set BUILD_DIR="../../../../../../../build/android/gradle/apps/atw_opengl/"

call gradlew --project-cache-dir %BUILD_DIR%.gradle build
call jar -tf %BUILD_DIR%build\outputs\apk\atw_opengl-arm7-debug.apk
call adb install -r %BUILD_DIR%build/outputs/apk/atw_opengl-arm7-debug.apk
call adb shell am start -n com.vulkansamples.atw_opengl/android.app.NativeActivity