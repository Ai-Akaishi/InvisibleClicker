### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## クリックしたときに呼び出される

## クリックした額縁をチェックする
execute anchored eyes positioned ^ ^ ^3 as @e[distance=..4,tag=InvisibleClicker] run function invisible_clicker:click/check

## クリックした額縁の位置でプレイヤーに対してコールバックを実行
execute anchored eyes positioned ^ ^ ^3 at @e[distance=..4,tag=InvisibleClickerClicked] run function invisible_clicker:click/call

## クリック検知のトリガーを有効化する
advancement revoke @s only invisible_clicker:click
