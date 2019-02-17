#  Elixir
## アクターモデル
オブジェクト指向のノリでいくと、全てはアクターという単位で構成されている的なやつ。
Erlangではアクターのことをプロセスというらしい。

## プロセス同士でできること
1. プロセスから別プロセスにメッセージを送信する。
2. プロセスが別プロセスからのメッセージを受信する。
3. プロセスが別プロセスを生成する。
4. プロセスが別プロセスとリンクする。(`spawn_link/2`)
5. プロセスが別プロセスをモニタする。

# 練習
1. 自身のプロセスを取得
```elixir
iex(1)> self()
#PID<0.83.0>
```
2. メッセージの送信
```elixir
iex(1)> send <プロセスID>, <メッセージ>
```

**`send`を受け取るとメソッド内の`recieve`が呼ばれる。その後に、プロセスを終了する。**

3. メッセージの表示・解放 (`flush/0`)
```elixir
iex(1)> send self(), "message1"
iex(2)> send self(), "message2"
iex(3)> flush()
"message1"
"message2"
:ok
```

4. 別プロセスの生成
```elixir
iex(1)> <代入先> = spawn <モジュール>, <関数>, <引数の配列>
```


# 参考
- https://employment.en-japan.com/engineerhub/entry/2017/06/12/110000#macOSにElixirをインストールする