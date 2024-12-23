#!/bin/bash

# Gerekli bağımlılıkları yükle
sudo dnf install -y git createrepo_c

# Depo dizinini oluştur
REPO_PATH="$HOME/local-repo"
mkdir -p "$REPO_PATH"

# Depoya RPM paketini klonla ve kopyala
git clone https://github.com/YigitC7/Defter
cp Defter/defter.rpm "$REPO_PATH/"

# Depoyu yapılandır
createrepo "$REPO_PATH"

# Yerel repo dosyasını yapılandır
sudo tee /etc/yum.repos.d/defter.repo <<EOF
[defter-repo]
name=Defter Repository
baseurl=file://$REPO_PATH
enabled=1
gpgcheck=0
EOF

# Depoyu güncelle ve paketi yükle
sudo dnf clean all
sudo dnf makecache
sudo dnf install -y defter

# Temizlik
echo "=================================="
echo "Kurulum tamamlandı"
rm -rf Defter
