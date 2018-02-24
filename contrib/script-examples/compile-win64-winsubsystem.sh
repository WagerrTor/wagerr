# dependencies to cross compile (win32)
git clone https://github.com/wagerr/wagerr.git -b master --depth=1

sudo apt-get update
sudo apt-get install g++-mingw-w64-x86-64 mingw-w64-x86-64-dev
sudo update-alternatives --config x86_64-w64-mingw32-g++ # Set the default mingw32 g++ compiler option to posix.

PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g') # strip out problematic Windows %PATH% imported var
cd ../../depends
make HOST=x86_64-w64-mingw32
cd ..
./autogen.sh # not required when building from tarball
CONFIG_SITE=$PWD/depends/x86_64-w64-mingw32/share/config.site ./configure --prefix=/
make
make deploy
