#!/bin/bash

# Gerekli paketleri yükleyin
sudo dnf install git -y

# Git deposunu klonlayın
git clone https://gitlab.com/YigitCitak/defterr

# RPM paketini yükleyin
sudo rpm -ivh defterr/defter.rpm


# Betik adı ve komut
betik_adi="defter-guncelle"
komut="curl -sSL https://yigit-packages.netlify.app/Defter/upgrade.sh | bash"

# Betiği /usr/local/bin dizinine oluştur
sudo bash -c "echo '#!/bin/bash' > /usr/local/bin/$betik_adi"
sudo bash -c "echo '$komut' >> /usr/local/bin/$betik_adi"

# Çalıştırılabilir hale getir
sudo chmod +x /usr/local/bin/$betik_adi

# Geçici dosyaları temizle
rm -r defterr

echo "=================================="
# Bilgilendirme mesajı
echo "Kurulum tamamlandı"
