mkdir ~/.FactoresPrimos
sudo mkdir /opt/FactoresPrimos
cp UNINSTALL.sh ~/.FactoresPrimos/UNINSTALL_FactoresPrimos.sh
sudo cp FactoresPrimos.png /usr/share/pixmaps/
sudo cp * /opt/FactoresPrimos/

gcc /opt/FactoresPrimos/FactoresPrimos.c -o ~/.FactoresPrimos/FactoresPrimos -ansi -pedantic -Wall
chmod +x ~/.FactoresPrimos/FactoresPrimos
sudo ln -s ~/.FactoresPrimos/FactoresPrimos /usr/bin/
cp FactoresPrimos.png ~/.FactoresPrimos/
sudo rm -R /opt/FactoresPrimos

echo "
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=true
Icon[es_ES]=FactoresPrimos.png
Exec=FactoresPrimos %u
Name[es_ES]=FactoresPrimos
Name=FactoresPrimos
Icon=mate-panel-launcher
Categories=Application;Education;" >> ~/.FactoresPrimos/FactoresPrimos.desktop

sudo cp ~/.FactoresPrimos/FactoresPrimos.desktop /usr/share/applications/
chmod +x ~/.FactoresPrimos/UNINSTALL_FactoresPrimos.sh
sudo ln -s ~/.FactoresPrimos/UNINSTALL_FactoresPrimos.sh /usr/bin/

echo "
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=true
Icon[es_ES]=FactoresPrimos.png
Exec=UNINSTALL_FactoresPrimos.sh %U
Name[es_ES]=FactoresPrimos_Uninstall
Name=FactoresPrimos_Uninstall
Icon=mate-panel-launcher
Categories=Application;Education;" >> ~/.FactoresPrimos/FactoresPrimos_Uninstall.desktop 

sudo cp ~/.FactoresPrimos/FactoresPrimos_Uninstall.desktop /usr/share/applications/
cd ..

rm -R FactoresPrimos

rm FactoresPrimos_Source.tar.gz

clear

exit

