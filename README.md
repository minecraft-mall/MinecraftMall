<img src="misc/logo.png"/>

Minecraft Server with Forge and Dynamp Mad. <br/>
Azure ARM template with powershell and chef-solo.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fminecraft-mall%2FMinecraftMall%2Fdev%2F101-dynmap%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fminecraft-mall%2FMinecraftMall%2Fdev%2F101-dynmap%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

先日福岡で行われたDevOpsハッカソンで、MinecraftMallチームが作成した  
Minecraftサーバーを構築するテンプレートです。  




### テンプレート
| Template                             | MOD           |
| -------------------------------------|---------------|
| <a href="101-dynmap/">101-dynmap</a> | Dynmap        | 


### 概要
1) ARMテンプレートにて、Windows仮想マシンを作成  
2) Chef-soloにて、Minecraftサーバーに必要なコンポーネント導入・設定  

Chef Guy の Cookbookは、<a href="https://github.com/minecraft-mall/builder/tree/master/cookbook/mc_server/">こちら</a>ですよ


### MinecraftMallチーム
 - @airish9  
 - @nori790822  
 - @sinofseven  
 - @yukiusagi2052  

発表資料 ( https://doc.co/KVRtEZ )  

### 関連情報
DevOpsハッカソン ( http://devopsjp.connpass.com/event/24266/ )  
Facebook Microsoft Japan DevOps Community ( https://www.facebook.com/devopsjp/ )  
Twitter ハッシュタグ #DevOpsJP ( https://twitter.com/search?q=%23devopsjp )  

<a href="https://github.com/minecraft-mall/MinecraftMall/">
  <img src="https://ga-beacon.appspot.com/UA-75159043-1/github.com/minecraft-mall/MinecraftMall/?pixel"/>
</a>