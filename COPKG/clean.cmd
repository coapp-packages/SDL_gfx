@Echo Off

pushd "%~d0%~p0\.."
echo Working in %cd%

attrib -S -H -R *

echo Cleaning SDL_gfx folder...
rmdir /S /Q "Win32" 2>NUL

echo Cleaning Test/Demo folders...
rmdir /S /Q "Test\TestShrink" 2>NUL
rmdir /S /Q "Test\TestRotozoom" 2>NUL
rmdir /S /Q "Test\TestImageFilter" 2>NUL
rmdir /S /Q "Test\TestGfxTexture" 2>NUL
rmdir /S /Q "Test\TestGfxPrimitives" 2>NUL
rmdir /S /Q "Test\TestGfxBlit" 2>NUL
rmdir /S /Q "Test\TestFramerate" 2>NUL
rmdir /S /Q "Test\TestFonts" 2>NUL
rmdir /S /Q "Test\TestABGR" 2>NUL
rmdir /S /Q "Test\LaplaceRelaxation" 2>NUL
del /Q "Test\Debug" 2>NUL

echo Cleaning VS UI files...
del /Q "SDL_gfx.sdf" 2>NUL
del /Q "SDL_gfx.suo" 2>NUL

echo Cleaning VS user settings...
del /Q SDL_gfx.vcxproj.user 2>NUL
del /Q Test\TestShrink.vcxproj.user 2>NUL
del /Q Test\TestRotozoom.vcxproj.user 2>NUL
del /Q Test\TestImageFilter.vcxproj.user 2>NUL
del /Q Test\TestGfxTexture.vcxproj.user 2>NUL
del /Q Test\TestGfxPrimitives.vcxproj.user 2>NUL
del /Q Test\TestGfxBlit.vcxproj.user 2>NUL
del /Q Test\TestFramerate.vcxproj.user 2>NUL
del /Q Test\TestFonts.vcxproj.user 2>NUL
del /Q Test\TestABGR.vcxproj.user 2>NUL
del /Q Test\LaplaceRelaxation.vcxproj.user 2>NUL

echo Done.

popd
