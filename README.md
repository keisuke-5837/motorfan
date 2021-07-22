# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false               |
| encrypted_password | string | null: false               |
| name               | string | null: false               |
| user_name          | string | null: false, unique: true |
| phone_number       | string | null: false               |
| profile            | text   |                           |

### Association
has_many :cars

## carsテーブル
| Column     | Type       | Options                       |
| ---------- | ---------- | ----------------------------- |
| user       | references | null: false, foreign_key: true|
| charm      | text       |                               |

### Association
belongs_to :user