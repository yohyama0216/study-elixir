# ASDFでの環境構築
だいたい以下の通りでOK。あとはUbuntuをstoreから手に入れる。
Windowsでも同様にasdfを使用してElixirをインストールすることができますが、Windows環境では追加の手順が必要です。以下にWindows上での手順を示します。

1. WSL（Windows Subsystem for Linux）のインストール
Windows上でLinux環境を使用するためにWSLをインストールします。以下の手順に従ってWSLとUbuntuをインストールしてください。

PowerShellを管理者権限で開く

以下のコマンドを実行してWSLを有効化します。

powershell
コードをコピーする
wsl --install
PCを再起動します。

Microsoft StoreからUbuntuをインストールします。

2. Ubuntuのセットアップ
Ubuntuを起動し、初期設定を行います。ユーザー名とパスワードを設定します。

3. asdfのインストール
WSLのUbuntuターミナルで以下のコマンドを実行して、asdfをインストールします。

bash
コードをコピーする
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source ~/.bashrc
4. プラグインの追加
以下のコマンドを実行して、ErlangとElixirのプラグインを追加します。

bash
コードをコピーする
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
5. 必要な依存関係のインストール
Erlangのインストールにはいくつかの依存関係が必要です。以下のコマンドで必要なパッケージをインストールします。

bash
コードをコピーする
sudo apt-get update
sudo apt-get install -y build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
6. Erlangのインストール
必要なバージョンのErlangをインストールします。

bash
コードをコピーする
asdf install erlang 26.0.2
asdf global erlang 26.0.2
7. Elixirのインストール
次に、Elixirをインストールします。

bash
コードをコピーする
asdf install elixir 1.15.1-otp-26
asdf global elixir 1.15.1-otp-26
8. インストールの確認
インストールが成功したかどうかを確認するために、Elixirのバージョンを確認します。

bash
コードをコピーする
elixir -v
これで、Windows上のWSLを使用してasdf経由でElixirをインストールする手順が完了です。何か問題が発生した場合や追加の質問があればお知らせください。


## 詰まったところ
dockerを使ったときに既定のディストリビューションがUbuntuから変わっていた。そのため Erlangのインストールで失敗していた模様
wsl --set-default Ubuntu
