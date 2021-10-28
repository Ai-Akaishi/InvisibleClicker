### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## 初期状態を復元
data modify entity @s Invisible set from entity @s Item.tag.InvisibleClicker.Invisible
data modify entity @s Invulnerable set from entity @s Item.tag.InvisibleClicker.Invulnerable

## 額縁の回転などを削除
data remove entity @s Item.tag.InvisibleClicker

## 元々アイテムが入ってなかった場合は元に戻す
execute if data entity @s Item{id:"minecraft:filled_map"}.tag{map:2147483647} run item replace entity @s container.0 with minecraft:air

## クリックできる額縁の識別するためのタグを削除
tag @s remove InvisibleClicker
