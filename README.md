# README

# Chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false, unique: true, index: true|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :groups, through: :groups_users
- has_many :groups_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
### Association
- has_many :users, through: :groups_users
- has_many :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## chatsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group