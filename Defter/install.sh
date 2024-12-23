#!/bin/bash

# Gerekli bağımlılıkları yükle
sudo dnf install git createrepo -y

# Depoya klonla
git clone https://github.com/YigitC7/Defter
sudo cp Defter/defter.rpm /path/to/your/repo/

# Depoyu güncelle
createrepo /path/to/your/repo/

# Depo dosyası ekle
sudo tee /etc/yum.repos.d/defter.repo <<EOF
[defter-repo]
name=Defter Repository
baseurl=file:///path/to/your/repo
enabled=1
gpgcheck=0
EOF

# Paketi yükle
sudo dnf install defter -y

# Temizlik
echo "=================================="
echo "Kurulum tamamlandı"
rm -r Defter
