# Kendama::Announcement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sequence_number** | **String** | 一連番号 |  |
| **registrated_number** | **String** | 登録番号 |  |
| **process** | **String** | 事業者処理区分 |  |
| **correct** | **String** | 訂正区分 |  |
| **kind** | **String** | 人格区分 |  |
| **country** | **String** | 国内外区分 |  |
| **latest** | **String** | 最新履歴 |  |
| **registration_date** | **Date** | 登録年月日 |  |
| **update_date** | **Date** | 更新年月日 |  |
| **disposal_date** | **String** | 取消年月日 |  |
| **expire_date** | **String** | 失効年月日 |  |
| **address** | **String** | 本店又は主たる事務所の所在地（法人） |  |
| **address_prefecture_code** | **String** | 本店又は主たる事務所の所在地都道府県コード（法人） |  |
| **address_city_code** | **String** | 本店又は主たる事務所の所在地市区町村コード（法人） |  |
| **address_request** | **String** | 本店又は主たる事務所の所在地（公表申出） |  |
| **address_request_prefecture_code** | **String** | 本店又は主たる事務所の所在地都道府県コード（公表申出） |  |
| **address_request_city_code** | **String** | 本店又は主たる事務所の所在地市区町村コード（公表申出） |  |
| **kana** | **String** | 日本語（カナ） |  |
| **name** | **String** | 氏名又は名称 |  |
| **address_inside** | **String** | 国内において行う資産の譲渡等に係る事務所、事業所その他これらに準ずるものの所在地 |  |
| **address_inside_prefecture_code** | **String** | 国内において行う資産の譲渡等に係る事務所、事業所その他これらに準ずるものの所在地都道府県コード | [optional] |
| **address_inside_city_code** | **String** | 国内において行う資産の譲渡等に係る事務所、事業所その他これらに準ずるものの所在地市区町村コード |  |
| **trade_name** | **String** | 主たる屋号 |  |
| **popular_name_previous_name** | **String** | 通称・旧姓 |  |

## Example

```ruby
require 'kendama'

instance = Kendama::Announcement.new(
  sequence_number: 1,
  registrated_number: T8040001999011,
  process: 1,
  correct: 0,
  kind: 2,
  country: 1,
  latest: 1,
  registration_date: Sun Oct 01 09:00:00 JST 2023,
  update_date: Mon Nov 01 09:00:00 JST 2021,
  disposal_date: null,
  expire_date: null,
  address: 北海道札幌市中央区大通西１０丁目,
  address_prefecture_code: 1,
  address_city_code: 101,
  address_request: null,
  address_request_prefecture_code: null,
  address_request_city_code: null,
  kana: null,
  name: 株式会社インボイス公表,
  address_inside: null,
  address_inside_prefecture_code: null,
  address_inside_city_code: null,
  trade_name: null,
  popular_name_previous_name: null
)
```

