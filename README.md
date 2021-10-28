# InvisibleClicker
Enable to use an item_frame as an invisible button.  
額縁を透明なボタンに変えちゃうデータパック

## 動作確認済みバージョン / Verified minecraft versions

- 1.17.1

## 使い方 / How To Use

### クリックされた時の動作を設定 / Define the behaviour when clicked.

1. ボタンの動作を識別するためのidを決めます / Define the id to specity the behaviour of the button.  
idの形式はどんなものでもOKです / You can use any format of id.  
```nim
{Name:"ClickCheck",Type:"UpButton"}
```
2. あなたのデータパックと同じフォルダに次のファンクションタグを追加します / Add the following tag to the same folder as your datapack.  
your_datapack:callbackの部分の名称は違っても大丈夫です / The function name - your_datapack:callback - can be different.
```nim
YourDatapack / data / invisible_clicker / tags / functions / callback.json  
  
{  
	"values": [  
		"your_datapack:callback"  
	]  
}
```
3. 2番目で設定したファンクションでidをチェックして好きなファンクションを呼び出します / Check the id in the function you specified at the second step, then call the any function.
```nim
YourDatapack / data / your_datapack / functions / callback.mcfunction  
  
execute if data storage invisible_clicker: id{Name:"ClickCheck",Type:"UpButton"} run function your_datapack:what_you_want_to_call
```

### 額縁を透明ボタンに変える / Change an item_frame into an invisible button.

1. ボタンを識別するためのidを設定します / Set the id to specity the behaviour of the button.  
```nim
data modify storage invisible_clicker: id set value {Name:"ClickCheck",Type:"UpButton"}
```
2. 透明ボタンに変えたい額縁に次のファンクションを実行させます / Make the item_frame you want to change into an invisible button run the following function.  
```nim
execute as [額縁/ItemFrame] run function #invisible_clicker:enable
```

### 透明ボタンを額縁に戻す / Change an invisible button into an item_frame.

1. 額縁に戻したい透明ボタンに次のファンクションを実行させます / Make the invisible button you want to change into an item_frame run the following function.  
```nim
execute as [透明ボタン/InvisibleButton] run function #invisible_clicker:disable
```

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.
