### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### クリックした額縁かどうかの判定

## 額縁の向きを戻せたら、それがクリックした額縁
execute store result storage invisible_clicker: hit byte 1 run data modify entity @s ItemRotation set from entity @s Item.tag.InvisibleClicker.ItemRotation

## クリックした額縁だったらタグを設定する
execute if data storage invisible_clicker: {hit:true} run tag @s add InvisibleClickerClicked
