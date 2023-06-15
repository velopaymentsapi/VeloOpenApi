#### What's New
---

##### `GET` /v1/transactions

> Get Transactions

##### `POST` /v1/transactions

> Create a Transaction

##### `GET` /v1/transactions/{transactionId}

> Get Transaction

#### What's Deleted
---

##### `GET` /v1/payors/{payorId}

> Get Payor

#### What's Changed
---

##### `GET` /v2/payors/{payorId}


###### Parameters:

Changed: `payorId` in `path`
> The account owner Payor ID

###### Return Type:

Changed response : **200 OK**
> Get Payor Details

* Changed content type : `application/json`

    * Changed property `payorId` (string)
        > The Payor Id

    * Changed property `payorName` (string)
        > The name of the payor

    * Changed property `payeeGracePeriodDays` (integer)
        > The grace period for paying payees in days before the payee must be onboarded.

    * Changed property `includesReports` (boolean)
        > For internal use only (will be removed in a later version)

    * Changed property `wuCustomerId` (string)
        > For internal use only (will be removed in a later version)

    * Changed property `maxMasterPayorAdmins` (integer)
        > The maximum number of payor users with the master admin role

    * Changed property `paymentRails` (string)
        > For internal use only (will be removed in a later version)

    * Changed property `remoteSystemIds` (array)
        > For internal use only (will be removed in a later version)

    * Changed property `usdTxnValueReportingThreshold` (integer)
        > USD in minor units. For internal use only (will be removed in a later version)

    * Changed property `managingPayees` (boolean)
        > Does this payor manage their own payees (payees are not invited but managed by the payor)

##### `POST` /v1/payors/{payorId}/applications


###### Parameters:

Changed: `payorId` in `path`
> The account owner Payor ID

##### `POST` /v1/payors/{payorId}/applications/{applicationId}/keys


###### Parameters:

Changed: `payorId` in `path`
> The account owner Payor ID

##### `POST` /v1/payors/{payorId}/reminderEmailsUpdate


###### Parameters:

Changed: `payorId` in `path`
> The account owner Payor ID

##### `POST` /v1/payors/{payorId}/branding/logos


###### Parameters:

Changed: `payorId` in `path`
> The account owner Payor ID

##### `GET` /v1/payors/{payorId}/branding


###### Parameters:

Changed: `payorId` in `path`
> The account owner Payor ID

##### `GET` /v3/payees/{payeeId}


###### Return Type:

Changed response : **404 Not Found**
> The resource was not found or is no longer available

* New content type : `application/json`

##### `DELETE` /v3/payees/{payeeId}


###### Return Type:

Changed response : **400 Bad Request**
> Invalid request. See Error message payload for details of failure

* New content type : `application/json`

##### `GET` /v3/payees/deltas


###### Return Type:

Changed response : **400 Bad Request**
> Invalid request. See Error message payload for details of failure

* New content type : `application/json`

##### `POST` /v3/payees/{payeeId}/payeeDetailsUpdate


###### Request:

Changed content type : `application/json`

* Added property `contactSmsNumber` (string)
    > The phone number of a device that the payee wishes to receive sms messages on

##### `GET` /v4/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay

* Changed content type : `application/json`

    * Added property `paymentChannels` (array)
        > A list of the Payee's payment channels in their preferred order

        Items (object):

        * Property `paymentChannelId` (string)

        * Property `name` (string)
            > The payment channel name

        * Property `countryCode` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

        * Property `currency` (string)
            > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

        * Property `last4Digits` (string)
            > The last 4 digits of the account number or IBAN

        * Property `enabled` (boolean)
            > Usually true. False if an associated payment is returned

        * Property `disabledReason` (string)
            > Indicates why the payment channel was disabled

        * Property `disabledReasonCode` (string)

    * Added property `managedByPayorId` (string)
        > The id of the payor if the payee is managed

Changed response : **404 Not Found**
> The resource was not found or is no longer available

* New content type : `application/json`

##### `DELETE` /v4/payees/{payeeId}


###### Return Type:

Changed response : **400 Bad Request**
> Invalid request. See Error message payload for details of failure

* New content type : `application/json`

Changed response : **404 Not Found**
> The resource was not found or is no longer available

* New content type : `application/json`

##### `GET` /v4/payees


###### Return Type:

Changed response : **200 OK**
> Details of Payee

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `managedByPayorId` (string)
            > The id of the payor if the payee is managed

##### `GET` /v4/payees/deltas


###### Return Type:

Changed response : **400 Bad Request**
> Invalid request. See Error message payload for details of failure

* New content type : `application/json`

##### `GET` /v3/sourceAccounts


###### Parameters:

Changed: `type` in `query`
> The type of source account.

##### `GET` /v2/fundingAccounts


###### Parameters:

Added: `countryCode` in `query`
> The 2 letter ISO 3166-1 country code (upper case)

Deleted: `country` in `query`
> The 2 letter ISO 3166-1 country code (upper case)

Changed: `type` in `query`
> The type of funding account.

###### Return Type:

Changed response : **200 OK**
> Get Funding Accounts Response

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `countryCode` (string)
            > ISO 3166-1 2 letter country code (upper case)

        * Deleted property `country` (string)
            > ISO 3166-1 2 letter country code (upper case)

        * Changed property `type` (string)
            > Funding account type. One of the following values: FBO, PRIVATE

##### `POST` /v2/fundingAccounts


###### Request:

Changed content type : `application/json`

New required properties:
- `countryCode`

* Added property `countryCode` (string)
    > ISO 3166-1 2 letter country code (upper case)

* Deleted property `currency` (string)
    > ISO 4217 currency code, Required if type is either WUBS_DECOUPLED or PRIVATE

* Changed property `type` (string)

    Removed enum value:

    * `WUBS_DECOUPLED`
##### `GET` /v2/fundingAccounts/{fundingAccountId}


###### Return Type:

Changed response : **200 OK**
> Funding Account Response

* Changed content type : `application/json`

    * Added property `countryCode` (string)
        > ISO 3166-1 2 letter country code (upper case)

    * Deleted property `country` (string)
        > ISO 3166-1 2 letter country code (upper case)

    * Changed property `type` (string)
        > Funding account type. One of the following values: FBO, PRIVATE

##### `GET` /v1/fundings/{fundingId}


###### Return Type:

Changed response : **200 OK**
> Funding response

* Changed content type : `application/json`

    New required properties:
    - `createdAt`

    New optional properties:
    - `allocationDate`

    * Added property `createdAt` (string)
        > The date and time the funding was created

    * Added property `allocatedAt` (string)
        > Populated only if the funding has been allocated. The date and time the funding was allocated.

    * Changed property `allocationDate` (string)
        > Populated with allocatedAt if allocated otherwise createdAt. Deprecated in v2.36 - will be removed in the future.

    * Changed property `fundingAccountType` (string)
        > Funding Account Type. One of the following values: FBO, PRIVATE

##### `GET` /v1/deltas/payments


###### Return Type:

Changed response : **400 Bad Request**
> Invalid request. See Error message payload for details of failure

* New content type : `application/json`

##### `GET` /v4/paymentaudit/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `railsRejectionInformation` (string)
            > The original reason that the payment was rejected. This can be third party rails specific if rejected by the underlying third party rails logic.

##### `GET` /v4/paymentaudit/payments


###### Return Type:

Changed response : **200 OK**
> Paginated list of payments

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `railsRejectionInformation` (string)
            > The original reason that the payment was rejected. This can be third party rails specific if rejected by the underlying third party rails logic.

##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`

    * Added property `railsRejectionInformation` (string)
        > The original reason that the payment was rejected. This can be third party rails specific if rejected by the underlying third party rails logic.

##### `GET` /v4/payments/deltas


###### Return Type:

Changed response : **400 Bad Request**
> Invalid request. See Error message payload for details of failure

* New content type : `application/json`

##### `GET` /v4/paymentaudit/transactions


###### Return Type:

Changed response : **400 Bad Request**
> Invalid request. See Error message payload for details of failure

* New content type : `application/json`

##### `GET` /v1/webhooks


###### Return Type:

Changed response : **200 OK**
> Webhook response

* Changed content type : `application/json`

    * Changed property `page` (object -> object)

    * Changed property `links` (array)

        Changed items (object -> object):

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `categories` (array)

            Changed items (string):
                > The category into which the notification fails. One of
                > * "payment" - notifications related to payments (submitted, accepted, rejected, returned)
                > * "payee" - notifications related to payees (payor accepted, payor declined, payee updated)
                > * "debit" - notifications related to debit events
                > * "funding" - notifications related to funding (funding detected)

            Added enum value:

            * `funding`
##### `POST` /v1/webhooks


###### Request:

Changed content type : `application/json`

* Changed property `categories` (array)
    > the categories to enable.

    Changed items (string):
        > The category into which the notification fails. One of
        > * "payment" - notifications related to payments (submitted, accepted, rejected, returned)
        > * "payee" - notifications related to payees (payor accepted, payor declined, payee updated)
        > * "debit" - notifications related to debit events
        > * "funding" - notifications related to funding (funding detected)

    Added enum value:

    * `funding`
##### `GET` /v1/webhooks/{webhookId}


###### Return Type:

Changed response : **200 OK**
> Webhook response

* Changed content type : `application/json`

    * Changed property `categories` (array)

        Changed items (string):
            > The category into which the notification fails. One of
            > * "payment" - notifications related to payments (submitted, accepted, rejected, returned)
            > * "payee" - notifications related to payees (payor accepted, payor declined, payee updated)
            > * "debit" - notifications related to debit events
            > * "funding" - notifications related to funding (funding detected)

        Added enum value:

        * `funding`
##### `POST` /v1/webhooks/{webhookId}


###### Request:

Changed content type : `application/json`

* Changed property `categories` (array)
    > The notification categories to enable.

    Changed items (string):
        > The category into which the notification fails. One of
        > * "payment" - notifications related to payments (submitted, accepted, rejected, returned)
        > * "payee" - notifications related to payees (payor accepted, payor declined, payee updated)
        > * "debit" - notifications related to debit events
        > * "funding" - notifications related to funding (funding detected)

    Added enum value:

    * `funding`
