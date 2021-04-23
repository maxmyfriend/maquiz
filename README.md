# アプリケーション名
メイクイ（making quiz）

# 概要
このアプリケーションでは以下のことができます
- 問題を出題すること
- 問題に回答すること
- 

# 開発状況
開 発 環 境：Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code/JavaScript
開 発 期 間：
平均作業時間：
開 発 体 制：

# 本番環境
URL：

ID：

Pass：

テスト用アカウント

<出題者用>
- メールアドレス：
- パスワード　　：

<回答者用>
- メールアドレス：
- パスワード　　：

# 動作確認方法
Chromeの最新版を利用してアクセスしてください。ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください。

接続先およびログイン情報については、上記の通りです。なお、同時に複数の方がログインしている場合に、ログインできない可能性がございます。

- 出題方法は以下の手順で確認できます。
テストアカウントでログイン→

- 回答方法は以下の手順で確認できます。
テストアカウントでログイン→

- 確認後、ログアウト処理をお願いします。

# 目指した課題解決

### ターゲット
- 試験勉強を一人で行う意欲がない男子高校生を対象に、効率よく試験勉強を行うことが出来るWebサイトを目指しました。

### 課題
- 友達を通じて学習をすると、会って物の貸し借りや、コピーといった行動が発生しやすいこと
- LINEグループで共有しても、ログを遡るのに手間がかかること
- お互いのスケジュールから、中々時間を合わせることが出来ないこと

### 解決
- Webアプリケーションを通すことで、カジュアルな勉強方法が可能になこと
- インターネット上で問題を出し合うので、会う必要や同じ時間に学習する必要がないこと


# 洗い出した要件
- 問題作成機能：ユーザーが問題を作成し、自らも問題の理解を深めるため
- 問題回答機能：作成された問題を回答し、解説を読み、理解を深めるため
- ユーザー管理機能：ユーザー登録することで、問題作成機能や回答機能を利用できるようにするため
- コメント機能：作成された問題に対してフィードバックを出来るようにするため

# 今後実装したい機能
- 問題を一問一答で出題できる機能
- 問題の正答率を出すことが出来る機能
- LINEやTwitterに遷移することが出来るボタン
- 出題された問題を、タグで検索することが出来る機能


# データベース設計

## usersテーブル

| Column             | Type   | Options                 |
| ------------------ | ------ | ----------------------- |
| nickname           | string | null:false              |
| email              | string | null:false, unique:true |
| password           | string | null:false              |
| encrypted_password | string | null:false              |


### Association

- has_many :questions
- has_many :comments


## problemsテーブル

| Column      | Type    | Options    |
| ----------- | ------- | ---------- |
| title       | string  | null:false |
| question    | string  | null:false |
| option_1st  | string  | null:false |
| option_2nd  | string  | null:false |
| option_3rd  | string  | null:false |
| option_4th  | string  | null:false |
| explanation | string  | null:false |
| category_id | integer | null:false |


### Association

- belongs_to :user
- has_many   :comments


## commentsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| problem | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :problem

## ER図
[![Image from Gyazo](https://i.gyazo.com/75640c251aed6035e56171c73fb9ce16.png)](https://gyazo.com/75640c251aed6035e56171c73fb9ce16)


