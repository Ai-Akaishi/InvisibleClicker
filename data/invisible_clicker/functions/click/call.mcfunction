### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### クリックした額縁の場所でコールバックを呼び出す

## 余計なタグをストレージに保存
data modify storage invisible_clicker: InvisibleClicker set from entity @e[distance=0,tag=InvisibleClickerClicked,limit=1] Item.tag.InvisibleClicker
## 余計なタグを削除
data remove entity @e[distance=0,tag=InvisibleClickerClicked,limit=1] Item.tag.InvisibleClicker

## idを設定しなおしてから
data modify storage invisible_clicker: id set from storage invisible_clicker: InvisibleClicker.id
## コールバックを呼び出す
function #invisible_clicker:callback

## ストレージからタグを戻す
data modify entity @e[distance=0,tag=InvisibleClickerClicked,limit=1] Item.tag.InvisibleClicker set from storage invisible_clicker: InvisibleClicker

## クリックした額縁の判定用のタグを消す
tag @e[distance=0,tag=InvisibleClickerClicked,limit=1] remove InvisibleClickerClicked
