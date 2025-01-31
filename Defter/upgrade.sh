sudo dnf install git -y
git clone https://gitlab.com/YigitCitak/defterr
sudo rpm -e Defter
sudo rpm -ivh defterr/defter.rpm
echo "=================================="
echo "Güncelleme işlemi bitti"
rm -r defterr
