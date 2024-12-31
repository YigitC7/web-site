#!/bin/bash

sudo dnf install git -y
git clone https://github.com/YigitC7/Defter
sudo rpm -ivh Defter/defter.rpm
echo "=================================="

read -p "defter-guncelle"
read -p "curl -sSL https://yigit-packages.netlify.app/Defter/upgrade.sh | bash"

sudo bash -c "echo '#!/bin/bash' > /usr/local/bin/$betik_adi"
sudo bash -c "echo '$komut' >> /usr/local/bin/$betik_adi"

sudo chmod +x /usr/local/bin/$betik_adi

echo "Kurulum tamamlandı"
rm -r Defter
