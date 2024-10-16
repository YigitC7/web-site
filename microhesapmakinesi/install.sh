sudo apt install git -y
git clone https://github.com/YigitC7/MicroHesapMakinesi
cd MicroHesapMakinesi/deb-pack
sudo dpkg -i micohesapmakinesi_1.0.deb
echo "=================================="
echo "Kurulum tamamlandı"
cd ..
cd ..
rm -r MicroHesapMakinesi
