# 「マイページサービス」

##(1)##

## サイト概要
* 海外製小型ボート"StarShip社(仮名)"の輸入総販売店のマイページサービス。

### サイトテーマ
* ユーザー(顧客)と輸入総販売店間の、メルマガ・DMでのコミュニケーションを、
　オンラインでのコミュケーションへ置換・促進する事を目的とする。　

### ターゲットユーザー
* WebサイトをPC/スマホから閲覧できる既存顧客を対象。

### テーマを選んだ理由
* 製品・サービスの形態を問わず、「マイページ」を持つことで、
　企業は顧客と体系立てて1to1の双方向コミュニケーションを行うことが可能となり、
　相互理解、顧客満足の促進に寄与すると考える為。

　あくまで一例として、海外製ボート・エンジンという高級嗜好品をテーマに「マイページ」作成を行う。

##(2)##

### 実装機能

* ログイン *

顧客側/管理者側にログイン機能を実装。


* 顧客側 *

[主要機能]

Customer : ログイン会員ページ、会員編集・削除ページ

Item : 保有商品一覧ページ、各保有商品ページ、保有商品の追加/削除ページ

_Item_Article : 管理者側発信で「各商品ページ」にて各商品の情報記事アップデート

*「この製品にこのようなスペアパーツが発売となりました」等なの内容発信

Mailer(Action Mailer機能) : お問合せページ(顧客➤管理者)　

[補完的機能]

Twitter画面埋め込み

Googlemap埋め込み

Slickによる写真スライド挿入

raty.jsによる顧客が各商品を評価する機能


* 管理者側 *

[主要機能]

Admin_Customer : 会員一覧、各会員ページ、会員編集・削除ページ

Admin_Item : 商品一覧ページ、各商品ページ、商品新規登録ページ、商品編集・削除ページ

Admin_Item_Article : 各商品ページに記事投稿

Admin_Mailer(Action Mailer機能) : 記事更新のメール（管理者➤顧客)

*可能ならばお問合せ返信メールも行いたいが、実装機能について未確認。

## チャレンジ要素一覧

https://docs.google.com/spreadsheets/d/1YghDBCqiQw-sl6HPL5fcO9OafZFx9OIItzWvdf_R-gY/edit?usp=sharing

## ワイヤーフレーム

Not completed.

https://drive.google.com/file/d/11tUoEEpfWIfjjlX2bgt4aEfJIRNxfwys/view?usp=sharing

## 設計書
* To be uploaded.

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- Nothing in particular at the moment.
