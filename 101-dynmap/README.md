Dev Version
=======================

Deploys a Windows VM and Configures Minecraft Server with Forge and Dynmap Mod. 

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fminecraft-mall%2FMinecraftMall%2Fdev%2F101-dynmap%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fminecraft-mall%2FMinecraftMall%2Fdev%2F101-dynmap%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
  
テンプレートの説明
=======================
Dynmapが組み込まれたMinecraftサーバーを展開するテンプレートです。  
Webブラウザーでマップを見ることができます

以下が含まれます。
 - Windows Server 2012R2
 - chef-solo
 - Java 8 Runtime Environment
 - Minecraft Server
 - Minecraft Forge
 - Dynmap

使い方
=======================
1) 上記 Azure Deployボタンをクリック  
2) Azure ポータルへ飛びますので、必要に応じてサインインします。  
3) 必要なパラメーターを入力します  
  - Windows 管理者アカウント  
  - Windows 管理者パスワード  
  - アクセスに使うDNS名  
  - 仮想マシンサイズ  

4) デプロイ先のリソースグループは、新規を選択し、リソースグループ名を指定します  
5) 法律条項を選択し、「作成」ボタンをクリックします  
6) 最後に「作成」ボタンをクリックします  
7) デプロイが完了すると、「指定したDNS名.リージョン名.cloudapp.azure.com」で公開されます  
8) 以下のアクセス方法で利用できます  
  - Minecraftマルチサーバー
  - リモートデスクトップ
  - Dynmap http://サーバー名:8123/
