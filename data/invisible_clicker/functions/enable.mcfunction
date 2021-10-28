### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## 元々アイテムが入ってなかった場合は仮のものを入れる
execute unless data entity @s Item run item replace entity @s container.0 with minecraft:filled_map{map:2147483647}

## 初期状態を保存
data modify entity @s Item.tag.InvisibleClicker.Invisible set from entity @s Invisible
data modify entity @s Item.tag.InvisibleClicker.Invulnerable set from entity @s Invulnerable

## 額縁の回転を保存
data modify entity @s Item.tag.InvisibleClicker.ItemRotation set from entity @s ItemRotation

## 額縁を透明で無敵にする
data modify entity @s Invulnerable set value true
data modify entity @s Invisible set value true

## idを保存する
data modify entity @s Item.tag.InvisibleClicker.id set from storage invisible_clicker: id

## クリックできる額縁の識別するためのタグを追加
tag @s add InvisibleClicker
