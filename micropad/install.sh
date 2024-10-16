sudo apt install git -y
git clone https://github.com/YigitC7/Micropad
cd Micropad/deb-pack
sudo dpkg -i micopad_1.0.deb
echo "=================================="
echo "Kurulum tamamlandı"
cd ..
cd ..
rm -r Micropad
