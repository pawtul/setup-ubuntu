FONT_HOME=~/.local/share/fonts

mkdir -p "$FONT_HOME/adobe-fonts/source-code-pro"

git clone --branch release --depth 1 'https://github.com/adobe-fonts/source-code-pro.git' "$FONT_HOME/adobe-fonts/source-code-pro"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/SourceCodePro.zip -P /tmp/
pushd /tmp
unzip -d $FONT_HOME/sauce-code SourceCodePro.zip
popd

fc-cache -f -v "$FONT_HOME/adobe-fonts/source-code-pro"
fc-cache -f -v "$FONT_HOME/sauce-code"
