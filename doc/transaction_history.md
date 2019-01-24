# Transaction History Information
From this endpoint you can collect an account information such as:

## Transaction History Endpoint
```HTTP
GET '<API-URL>/v0.1/me/transactions/history?limit=30&order=descending&oldest_time=2018-07-23T21:00:00.000Z&newest_time=2019-01-24T22:00:00.000Z'
```

```
authority: me.sumup.com
method: GET
path: /v0.1/me/merchant-profile/bank-accounts
scheme: https
cookie: XSRF-TOKEN=ad21d045b57851d1; SumUp.did=s%3AuKNwT9isQIVej9VGPtDUUSalm6QFHYea.7ezBL7WKHSE9vGrAjxuR2YNPHy6TQrTBEGzClMbVeLM
```

Requires `x-xsrf-token` header and cookies `XSRF-TOKEN, SumUp.did`.

## Response

```JSON
{
    "items": []
}
```
