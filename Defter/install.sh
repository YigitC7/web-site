#!/bin/bash

# Gerekli paketleri yükleyin
sudo dnf install git -y

# Git deposunu klonlayın
git clone https://github.com/YigitC7/Defter

# RPM paketini yükleyin
sudo rpm -ivh Defter/defter.rpm


# Betik adı ve komut
betik_adi="defter-guncelle"
komut="curl -sSL https://yigit-packages.netlify.app/Defter/upgrade.sh | bash"

# Betiği /usr/local/bin dizinine oluştur
sudo bash -c "echo '#!/bin/bash' > /usr/local/bin/$betik_adi"
sudo bash -c "echo '$komut' >> /usr/local/bin/$betik_adi"

# Çalıştırılabilir hale getir
sudo chmod +x /usr/local/bin/$betik_adi

# Geçici dosyaları temizle
rm -r Defter

echo "=================================="
# Bilgilendirme mesajı
echo "Kurulum tamamlandı"
