#### What's Changed
---

##### `POST` /v1/authenticate



##### `GET` /v1/sourceAccounts


###### Return Type:

Changed response : **200 OK**
> List Source Account response

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `currency` (string)

            Removed enum value:

            * `USD`
##### `GET` /v1/sourceAccounts/{sourceAccountId}


###### Return Type:

Changed response : **200 OK**

> Source account response

* Changed content type : `application/json`

    * Changed property `currency` (string)

        Removed enum value:

        * `USD`
##### `GET` /v2/sourceAccounts/{sourceAccountId}

> Get Source Account

##### `GET` /v2/fundingAccounts


###### Parameters:

Changed: `type` in `query`
> The type of funding account.


###### Return Type:

Changed response : **200 OK**

> Get Funding Accounts Response


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):


        * Changed property `currency` (string)
            > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

        * Changed property `type` (string)
            > Funding account type

            Added enum values:

            * `FBO`
            * `WUBS_DECOUPLED`
##### `GET` /v2/fundingAccounts/{fundingAccountId}



###### Return Type:

Changed response : **200 OK**

> Funding Account Response

* Changed content type : `application/json`

    * Changed property `currency` (string)
        > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

    * Changed property `type` (string)
        > Funding account type

        Added enum values:

        * `FBO`
        * `WUBS_DECOUPLED`
##### `GET` /v3/sourceAccounts


###### Parameters:

Changed: `type` in `query`
> The type of source account.

###### Return Type:

Changed response : **200 OK**

> List Source Account response


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):


        * Changed property `currency` (string)
            > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

            Removed enum values:

            * `USD`

            * `EUR`
            * `GBP`
            * `CAD`
            * `HKD`
        * Changed property `country` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

##### `GET` /v3/sourceAccounts/{sourceAccountId}



###### Return Type:

Changed response : **200 OK**

> Source account response

* Changed content type : `application/json`

    * Changed property `currency` (string)
        > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

        Removed enum values:

        * `USD`
        * `EUR`
        * `GBP`
        * `CAD`
        * `HKD`
    * Changed property `country` (string)
        > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

##### `POST` /v3/sourceAccounts/{sourceAccountId}/transfers


###### Request:

Changed content type : `application/json`

* Changed property `currency` (string)
    > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.


##### `GET` /v4/paymentaudit/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):
        
        * Added property `payeeAddressCountryCode` (string)
            > The country code of the payee's address.


##### `GET` /v4/paymentaudit/payments


###### Return Type:

Changed response : **200 OK**
> Paginated list of payments

* Changed content type : `application/json`
    * Changed property `content` (array)

        Changed items (object):

        * Added property `payeeAddressCountryCode` (string)
            > The country code of the payee's address.


##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`
    * Added property `payeeAddressCountryCode` (string)
        > The country code of the payee's address.


