script_name=history.sh
echo "Loding $script_name ..."

# bashのhistoryに関する設定
# bash hack
# http://takuya-1st.hatenablog.jp/entry/20090828/1251474360

# 重複する履歴を保存しない
#export HISTCONTROL=ignoredups

# 空白から始めたコマンドを無視
#export HISTCONTROL=ignorespace

# 空白を履歴に追記しない、重複履歴を保存しない
# ignorespaceとignoredupsを同時に使う。
export HISTCONTROL=ignoreboth

# historyのサイズ
export HISTSIZE=10000

# historyに時刻を挿入
HISTTIMEFORMAT='# %Y%m%d %T ';
export HISTTIMEFORMAT

# screenコマンド利用時のhistoryを記録する
function share_history {        # 以下の内容を関数として定義
  history -a                    # .bash_historyに前回コマンドを1行追記
  history -c                    # 端末ローカルの履歴を一旦消去
  history -r                    # .bash_historyから履歴を読み込み直す
}
shopt -u histappend             # .bash_history追記モードは不要なのでOFFに
export HISTSIZE=9999            # 履歴のMAX保存数を指定
PROMPT_COMMAND="share_history"  # 上記関数をプロンプト毎に自動実施



