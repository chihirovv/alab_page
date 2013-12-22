青山敦研究室ウェブページ
=========

[middleman]: http://middlemanapp.com/
[bundler]: http://bundler.io/

慶應義塾大学 環境情報学部 青山敦研究室のウェブページのためのソースコードです。

[middleman][middleman]を利用してHaml/Coffeescript/CompassからHTML/JS/CSSを生成しています。

## Get Started

ターミナルで

	$ ruby -v
	
と入力し、まずrubyが自身のコンピューターにインストールされていることを確認しましょう。

rubyがインストールされていない場合は[頑張って入れましょう](https://www.google.co.jp/search?q=ruby+インストール&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:ja-JP-mac:official&hl=ja&client=firefox-a)

---

rubyが入っている/インストールしたことを確認した上で、

	$ gem install bundler
	$ gem install middleman

とターミナルで入力し、[bundler][bundler]及び[middleman][middleman]をインストールして下さい。

---

次に、このリポジトリをクローンしてきたディレクトリで

	$ bundle install

と入力し、依存しているライブラリを導入して下さい。

---

最後に、config.rb.templateをコピーして新たにconfig.rbというファイルを作成して下さい。
このファイルはmiddlemanの実行に必要なファイルです。
ファイルの一番最後に記述されている、

	activate :deploy do |deploy|
		deploy.method       = :ftp
		deploy.host         = "write host name(ex: ccz00.sfc.keio.ac.jp)"
		deploy.path         = "the absolute path where you wanna upload"
		deploy.user         = "username to log in"
		deploy.password     = "password to log in"
		deploy.build_before = true
	end

について、自らのデプロイ用の設定を記述して下さい。
デプロイを行わないのであれば変更する必要はありません。

ここまで終了すれば、開発及びデプロイに移ることが出来ます。

## Develop it!

クローン先のディレクトリで

	$ middleman s
	
または

	$ middleman server
	
と入力すると開発用のローカルサーバーを立てることが出来ます。
以降、自分が使っているブラウザで[localhost:4567](localhost:4567)にアクセスすることで開発途中のプレビューを確認することが出来ます。
コマンドをキルしない限りファイルの変更は自動で検知されてプレビューに反映されます。

基本的にはsource/ディレクトリ以下のファイルを編集していくことになります。

## How to deploy

前述のとおりにconfig.rbを設定した上で、

	$ middleman deploy
	
とターミナル上、クローン先のディレクトリで入力することでデプロイを行うことが出来ます。
なお、ftpプロトコルを用いてsfcのサーバーにアップロードするにはVPNなどを利用するかもしくは学内ネットワークからアクセスする必要があるようです。

## Dependencies

現状動作が確認されている環境です。

- ruby 1.9.3p125
- middleman v3.2.0
