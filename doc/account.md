# Account Information

```
base_url: https://me.sumup.com
authority: me.sumup.com
method: GET
path: /v0.1
scheme: https
cookie: XSRF-TOKEN=ad21d045b57851d1; SumUp.did=s%3AuKNwT9isQIVej9VGPtDUUSalm6QFHYea.7ezBL7WKHSE9vGrAjxuR2YNPHy6TQrTBEGzClMbVeLM
```

Requires `x-xsrf-token` header and cookies `XSRF-TOKEN, SumUp.did`.

## `/me/merchant-profile/bank-accounts`
```HTTP
GET '/v0.1/me/merchant-profile/bank-accounts'
```

### Response
```JSON
[
    {
        "account_holder_name": "Maria Pangarova",
        "created_at": "2019-01-23T19:12:42.412Z",
        "iban": "BG******************78",
        "primary": true,
        "status": "VERIFICATION_FAILED",
        "swift": "ABCDEFGHXXX"
    }
]
```


## `/me`
```HTTP
GET '/v0.1/me'
```

### Response
```JSON
{
    "account": {
        "username": "maria.pangarova@gmail.com",
        "type": "normal"
    },
    "personal_profile": {
        "first_name": "Maria",
        "last_name": "Pangarova",
        "date_of_birth": "1988-04-01",
        "mobile_phone": "+359883480823",
        "address": {
            "address_line1": "Sofia",
            "city": "Sofia ",
            "country": "BG",
            "post_code": "1000"
        },
        "complete": true
    },
    "merchant_profile": {
        "merchant_code": "MCCGXT7H",
        "company_name": "Mission Quality",
        "legal_type": {
            "id": 465,
            "full_description": "Професионалист на свободна практика",
            "description": "Професионалист на свободна практика",
            "sole_trader": true
        },
        "merchant_category_code": "7922",
        "mobile_phone": "+359883480823",
        "address": {
            "address_line1": "Sofia",
            "city": "Sofia ",
            "country": "BG",
            "post_code": "1000",
            "landline": "+359883480823"
        },
        "business_owners": [],
        "locale": "en-US",
        "complete": true,
        "payout_zone_migrated": true,
        "country": "BG"
    },
    "is_migrated_payleven_br": false
}
```


## `/me/documents_settings`
```HTTP
GET '/v0.1/me/documents_settings'
```

### Response
```JSON
{
    "enable_doc_upload": false,
    "requires_poi": true,
    "requires_poa": true,
    "requires_pob": true
}
```


## `/me/gdpr-agreements`
```HTTP
GET '/v0.1/me/gdpr-agreements'
```

### Response
```JSON
[
    {
        "id": 1,
        "gdpr_agreement": {
            "id": 1,
            "gdpr_agreement": "privacy_policy_and_terms_conditions",
            "is_required": true
        },
        "is_accepted": true
    },
    {
        "id": 2,
        "gdpr_agreement": {
            "id": 2,
            "gdpr_agreement": "marketing_information",
            "is_required": false
        },
        "is_accepted": false
    }
```





## `/me/merchant-profile/settings`
```HTTP
GET '/v0.1/me/merchant-profile/settings'
```

### Response
```JSON
{
    "tax_enabled": true,
    "payout_type": "SINGLE_PAYMENT",
    "payout_period": "daily",
    "payout_on_demand_available": false,
    "payout_on_demand": false,
    "printers_enabled": true,
    "payout_instrument": "bank_account",
    "moto_payment": false,
    "daily_payout_email": true,
    "monthly_payout_email": true,
    "gross_settlement": false
}
```

## `/me/permissions`
```HTTP
GET '/v0.1/me/permissions'
```

### Response
```JSON
{}
```


## `/me/registration`
```HTTP
GET '/v0.1/me/registration'
```

### Response
```JSON
{
    "personal_profile": {
        "first_name": "Maria",
        "last_name": "Pangarova",
        "date_of_birth": "1988-04-01",
        "mobile_phone": "+359883480823",
        "address": {
            "address_line1": "Sofia",
            "city": "Sofia ",
            "country": "BG",
            "post_code": "1000"
        },
        "complete": true
    },
    "merchant_profile": {
        "merchant_code": "MCCGXT7H",
        "company_name": "Mission Quality",
        "legal_type": {
            "id": 465,
            "full_description": "Професионалист на свободна практика",
            "description": "Професионалист на свободна практика",
            "sole_trader": true
        },
        "merchant_category_code": "7922",
        "mobile_phone": "+359883480823",
        "address": {
            "address_line1": "Sofia",
            "city": "Sofia ",
            "country": "BG",
            "post_code": "1000",
            "landline": "+359883480823"
        },
        "business_owners": [],
        "locale": "en-US",
        "complete": true,
        "payout_zone_migrated": true,
        "country": "BG"
    },
    "is_migrated_payleven_br": false
}
```


## `/me/risk-profile`
```HTTP
GET '/v0.1/me/risk-profile'
```

### Response
```JSON
{
    "state": "ACTIVE",
    "substate": "LIMITED",
    "int_identity_check": "PASSED",
    "ext_identity_check": "FAILED",
    "int_company_check": "PASSED",
    "bank_account_check": "FAILED",
    "prepaid_card_check": "PENDING",
    "activation_code": "PASSED",
    "tc_accepted": false,
    "gdpr_tc_accepted": true,
    "document_upload_notification": false,
    "document_upload_in_app_alert": false,
    "personal_profile": {
        "complete": true
    },
    "merchant_profile": {
        "complete": true
    },
    "bank_account": {
        "complete": true
    }
}
```


## `/feature-toggles`
```HTTP
GET '/v0.1/feature-toggles?country=BG
                          &merchant_code=MCCGXT7H
                          &name=XXX'
```
- name=sumup_card
### Response
```JSON
{
    "error_code": "NOT_FOUND",
    "message": "Resource not found"
}
```

- name=gdpr_enforced
### Response
```JSON
{
    "name": "gdpr_enforced",
    "active": true
}
```


## `/referrals/campaigns`
```HTTP
GET '/v0.1/referrals/campaigns?locale=en&country=BG'
```

### Response
```JSON
[
    {
        "id": 65,
        "reward": {
            "value": 20,
            "type": "amount"
        },
        "offer": {
            "value": 22,
            "type": "amount"
        }
    }
]
```
