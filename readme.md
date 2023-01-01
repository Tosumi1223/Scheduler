# 概要
コマンドライン引数で日程を，オプションで予定を選択してテキストファイルにその予定の日程と内容を記録します．このプログラムはruby2.7.0をインストールしたubuntuで作成しました．

## 使用パッケージ
'''
gem install optparse
gem install rubygems
'''

## 使用方法
'ruby schedule.rb 日付 option'のようにコマンドラインで入力することでschedule.txtファイルに予定の日程と内容が書き込まれる．オプションの内容を増やすことで予定の内容も増やすことができます．

具体的には
'ruby schedule.rb 2022/12/31 -p'
と入力するとテキストファイルに
2022/12/31 part-time job
と書き込まれます．

オプションの内容は以下の通り
-p:part-time_job
-s:school
-m:meeting
-c:club
-t:travel

-h:オプションの表示