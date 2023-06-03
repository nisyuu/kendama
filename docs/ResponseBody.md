# Kendama::ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_update_date** | **Date** | 最終更新年月日 | [optional] |
| **count** | **String** | 総件数 | [optional] |
| **divide_number** | **String** | 分割番号 | [optional] |
| **divide_size** | **String** | 分割数 | [optional] |
| **announcement** | [**Array&lt;Announcement&gt;**](Announcement.md) |  | [optional] |

## Example

```ruby
require 'kendama'

instance = Kendama::ResponseBody.new(
  last_update_date: Mon Nov 01 09:00:00 JST 2021,
  count: 1,
  divide_number: 1,
  divide_size: 1,
  announcement: null
)
```

