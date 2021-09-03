# MotorFan README

## App URL
---
### https://motorfan.herokuapp.com/
<br></br>

## Basic認証ID/Pass,テスト用アカウントログインEmail/Password
---
### admin/2222
### test@test.com/a11111(アプリケーションはゲストログインも可能です)
<br></br>

## App概要
---
### motorfanは車やバイクを好きな人をペルソナとしております。  
### 使い方は画像、シェアしたいこと、カテゴリー(車かバイク)を添えて投稿し、他のユーザーが投稿したものを見て楽しんでいただきます。
### コメント、ダイレクトメッセージ機能で、ユーザーどうしがより近くで感じていただけたらと思います。(こちらの機能はまだ未実装です。)
<br></br>

## App作成理由
---

### 私は車が大好きでカスタムや、普段見れないような車をみるのが趣味なので車や、バイク専門の投稿サイトを作成致しました。
<br></br>

## 実装機能
---
* 新規登録、ログイン機能
* ゲストログイン機能
* ログアウト機能
* ユーザー編集機能
* ユーザー詳細表示機能
* Basic認証機能
* 新規投稿機能
* 投稿表示機能
* 投稿編集機能
* 投稿削除機能
* カテゴリー別投稿表示機能
<br></br>

## 実装機能の詳細
---
こちらはトップページで、新規登録、ログイン、ゲストとして見にいくを選択できます。
<br></br>

[![Image from Gyazo](https://i.gyazo.com/2ef9200f08ee91dcb6bfb08ddb3af322.gif)](https://gyazo.com/2ef9200f08ee91dcb6bfb08ddb3af322)
<br></br>

新規登録画面になります。こちらに必要な情報を入力し会員登録を押すと登録でき、投稿表示画面に遷移します。  
左上の×ボタンを押すとトップページに戻って来ることができます。
<br></br>

[![Image from Gyazo](https://i.gyazo.com/ed13520bc0928244e653a580f5eb6c68.jpg)](https://gyazo.com/ed13520bc0928244e653a580f5eb6c68)
<br></br>

ログイン画面になります。ログインに必要な情報を入力し、ログインを押すとログインし投稿表示画面に遷移します。  
左上の×ボタンを押すとトップページに戻って来ることができます。
<br></br>

[![Image from Gyazo](https://i.gyazo.com/7a7de527e679e89c7babe032c8338251.jpg)](https://gyazo.com/7a7de527e679e89c7babe032c8338251)
<br></br>

投稿表示画面です。  
eventは走行会などのイベントの開催をお知らせする場所で、AllSnapに投稿したものが表示されるようになっています。  
投稿の右上に出ている「編集」、「削除」を押すことで投稿者が投稿の編集や、削除ができるようになっています。
<br></br>

[![Image from Gyazo](https://i.gyazo.com/95b9f92ceba91e8f765f6d50d930dd17.gif)](https://gyazo.com/95b9f92ceba91e8f765f6d50d930dd17)
<br></br>

こちらはNaviMenuとなっており、上からログインしているユーザー、ユーザー詳細ページに遷移、車専用の投稿表示画面に遷移、バイク専用の投稿表示画面に遷移、新規投稿、ログアウトができるようになっています。  
お問い合わせフォームは、現在未実装です。
<br></br>

[![Image from Gyazo](https://i.gyazo.com/d8ba8ec5938ad04de28dc6b81445c536.gif)](https://gyazo.com/d8ba8ec5938ad04de28dc6b81445c536)
<br></br>

## 今後実装していきたい機能、仕様
---
### コメント機能

### いいね機能

### ダイレクトメッセージ機能

### javascriptを用いた非同期通信
<br></br>

# テーブル設計

## usersテーブル
---
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false               |
| encrypted_password | string | null: false               |
| name               | string |                           |
| user_name          | string | null: false, unique: true |
| phone_number       | string | null: false               |
| introduction       | text   |                           |
<br></br>

### Association
---
* has_one_attached image  
* has_many machines
<br></br>

## machinesテーブル
---
| Column      | Type       | Options                       |
| ----------- | -----------| ----------------------------- |
| user        | references | null: false, foreign_key: true|
| charm       | text       |                               |
| category_id | integer    | null: false                   |
<br></br>

### Association
---
* has_one_attached image  
* belongs_to user  
* belongs_to category  
* has_one car  
* has_one bike  
<br></br>
