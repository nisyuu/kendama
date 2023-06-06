# Kendama::V1Api

All URIs are relative to *https://kensyo.invoice-kohyo.nta.go.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_announcement_by_diff**](V1Api.md#get_announcement_by_diff) | **GET** /1/diff | 取得期間を指定して情報を取得 |
| [**get_announcement_by_number**](V1Api.md#get_announcement_by_number) | **GET** /1/num | 登録番号を指定して情報を取得 |


## get_announcement_by_diff

> <ResponseBody> get_announcement_by_diff(id, from, to, type, opts)

取得期間を指定して情報を取得

取得期間を指定し、当該期間内に「更新年月日」が含まれる公表情報を取得

### Examples

```ruby
require 'time'
require 'kendama'

api_instance = Kendama::V1Api.new
id = 'id_example' # String | 
from = Date.parse('Tue Oct 01 09:00:00 JST 2024') # Date | 
to = Date.parse('Tue Oct 01 09:00:00 JST 2024') # Date | 
type = '21' # String | 
opts = {
  division: '1', # String | 
  divide: 'divide_example' # String | 
}

begin
  # 取得期間を指定して情報を取得
  result = api_instance.get_announcement_by_diff(id, from, to, type, opts)
  p result
rescue Kendama::ApiError => e
  puts "Error when calling V1Api->get_announcement_by_diff: #{e}"
end
```

#### Using the get_announcement_by_diff_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseBody>, Integer, Hash)> get_announcement_by_diff_with_http_info(id, from, to, type, opts)

```ruby
begin
  # 取得期間を指定して情報を取得
  data, status_code, headers = api_instance.get_announcement_by_diff_with_http_info(id, from, to, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseBody>
rescue Kendama::ApiError => e
  puts "Error when calling V1Api->get_announcement_by_diff_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **from** | **Date** |  |  |
| **to** | **Date** |  |  |
| **type** | **String** |  | [default to &#39;21&#39;] |
| **division** | **String** |  | [optional][default to &#39;1&#39;] |
| **divide** | **String** |  | [optional][default to &#39;1&#39;] |

### Return type

[**ResponseBody**](ResponseBody.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_announcement_by_number

> <ResponseBody> get_announcement_by_number(id, number, type, opts)

登録番号を指定して情報を取得

指定された登録番号に係る登録年月日、取消年月日及び失効年月日に紐づく最新情報（履歴情報は任意）を取得

### Examples

```ruby
require 'time'
require 'kendama'

api_instance = Kendama::V1Api.new
id = 'id_example' # String | 
number = 'T8040001999011' # String | 
type = '21' # String | 
opts = {
  history: '0' # String | 
}

begin
  # 登録番号を指定して情報を取得
  result = api_instance.get_announcement_by_number(id, number, type, opts)
  p result
rescue Kendama::ApiError => e
  puts "Error when calling V1Api->get_announcement_by_number: #{e}"
end
```

#### Using the get_announcement_by_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseBody>, Integer, Hash)> get_announcement_by_number_with_http_info(id, number, type, opts)

```ruby
begin
  # 登録番号を指定して情報を取得
  data, status_code, headers = api_instance.get_announcement_by_number_with_http_info(id, number, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseBody>
rescue Kendama::ApiError => e
  puts "Error when calling V1Api->get_announcement_by_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **number** | **String** |  |  |
| **type** | **String** |  | [default to &#39;21&#39;] |
| **history** | **String** |  | [optional] |

### Return type

[**ResponseBody**](ResponseBody.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

