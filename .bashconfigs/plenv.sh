script_name=plenv.sh
echo "Loding $script_name ..."

# plenv'

export PLENV_ROOT="$HOME/Software/plenv"
export PATH="$HOME/Software/plenv/bin:$PATH"

eval "$(plenv init -)"

# 情報源:
# ホームディレクトリ($HOME)以外の場所にplenvの環境を作ってperlをインストールする
# http://tadasy.hateblo.jp/entry/2013/11/27/191035

