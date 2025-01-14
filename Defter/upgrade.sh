sudo dnf install git -y
git clone https://github.com/YigitC7/Defter
sudo rpm -e Defter
sudo rpm -ivh Defter/rpm/Defter.rpm
echo "=================================="
echo "Güncelleme işlemi bitti"
rm -r Defter
