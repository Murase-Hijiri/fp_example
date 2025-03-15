# fp_example
FortranサブルーチンをPythonで利用する例です。

## 依存パッケージ
* flang もしくは gfortran（適当に、MakefileのFCを書き換えてください。）
* Python（動作を確認したのは、Python 3.13.2。ctypesが使えれば問題ありません。）

## コンパイル・実行
`fp_example`ディレクトリで`make`をすればコンパイルが行われ、共有ライブラリが`out`ディレクトリの中に生成されます。
`$ python ./pyscript/example.py`で、Pythonスクリプトが実行されます。

