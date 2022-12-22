#### What's New
---

##### `POST` /v3/sourceAccounts/{sourceAccountId}/notifications

> Set notifications

##### `GET` /v1/fundings/{fundingId}

> Get Funding

#### What's Deleted
---

##### `GET` /v1/sourceAccounts

> Get list of source accounts

##### `GET` /v1/sourceAccounts/{sourceAccountId}

> Get details about given source account.

##### `POST` /v1/sourceAccounts/{sourceAccountId}/achFundingRequest

> Create Funding Request

##### `GET` /v1/fundingAccounts

> Get Funding Accounts

##### `GET` /v1/fundingAccounts/{fundingAccountId}

> Get Funding Account

#### What's Deprecated
---

##### `POST` /v1/sourceAccounts/{sourceAccountId}/notifications

> Set notifications

#### What's Changed
---

##### `GET` /v1/payors/{payorId}


##### `POST` /v1/payors/{payorId}/applications


##### `POST` /v1/payors/{payorId}/applications/{applicationId}/keys


###### Request:

Changed content type : `application/json`

* Changed property `roles` (array)
    > <p>A role to assign to the key.</p>
    > <p>If you want your API key to have write access then assign the role velo.payor.admin</p>
    > <p>A later version will change this property from a list to string</p>

##### `POST` /v1/payors/{payorId}/branding/logos


##### `GET` /v1/payors/{payorId}/branding


###### Return Type:

Changed response : **200 OK**
> HTTP Ok, key created

* Changed content type : `application/json`

    * Changed property `logoUrl` (string)
        > <p>The URL to use for this payor’s logo</p>
        > <p>This will be an immutable system-generated URL</p>

##### `GET` /v1/payorLinks


###### Parameters:

Changed: `parentOfPayor` in `query`
> Query for the parent payor details for this payor id

Changed: `fields` in `query`
> <p>List of additional Payor fields to include in the response for each Payor</p>
> <p>The values of payorId and payorName are always included for each Payor by default</p>
> <p>You can add fields to the response for each payor by including them in the fields parameter separated by commas</p>
> <p>The supported fields are any combination of: primaryContactEmail,kycState</p>

##### `POST` /v1/sourceAccounts/{sourceAccountId}/notifications


##### `POST` /v2/fundingAccounts


###### Request:

Changed content type : `application/json`

* Changed property `accountName` (string)
    > Required if type is either FBO or PRIVATE

* Changed property `accountNumber` (string)
    > Required if type is either FBO or PRIVATE

* Changed property `routingNumber` (string)
    > Required if type is either FBO or PRIVATE

* Changed property `currency` (string)
    > ISO 4217 currency code, Required if type is either WUBS_DECOUPLED or PRIVATE

##### `POST` /v3/sourceAccounts/{sourceAccountId}/fundingRequest


###### Return Type:

Changed response : **202 Accepted**
> Request Accepted
New header : `Location`

> Reference to created Funding Request

##### `GET` /v4/paymentaudit/payouts


###### Return Type:

Changed response : **200 OK**
> Payor data found

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `sourceAccountSummary` (array)

            Changed items (object):

            * Changed property `currency` (string)
                > ISO-4217 3 character currency code

        * Changed property `fxSummaries` (array)

            Changed items (object):

            * Changed property `sourceCurrency` (string)
                > ISO-4217 3 character currency code

            * Changed property `paymentCurrency` (string)
                > ISO-4217 3 character currency code

##### `GET` /v4/paymentaudit/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `postInstructFxInfo` (object)
            > FX details relating to a payout that was executed or is still waiting to be executed

            * Property `fxMode` (string)
                > The mode by which the FX rate is to be determined (MANUAL or AUTO)

            * Property `fxStatus` (string)
                > The state to which the Post-Instruct FX process has reached (INITIATED or COMPLETED)

            * Property `fxStatusUpdatedAt` (string)
                > The date-time at which the most recent fxStatus was determined.

            * Property `fxTransactionReference` (string)
                > The reference assigned to the FX funding that will fulfil this payment.

        * Changed property `sourceCurrency` (string)
            > ISO-4217 3 character currency code

        * Changed property `paymentCurrency` (string)
            > ISO-4217 3 character currency code

        * Changed property `events` (array)

            Changed items (object):

            * Changed property `sourceCurrency` (string)
                > ISO-4217 3 character currency code

            * Changed property `paymentCurrency` (string)
                > ISO-4217 3 character currency code

##### `GET` /v4/paymentaudit/payments


###### Parameters:

Added: `postInstructFxStatus` in `query`
> The status of the post instruct FX step if one was required for the payment

###### Return Type:

Changed response : **200 OK**
> Paginated list of payments

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `postInstructFxInfo` (object)
            > FX details relating to a payout that was executed or is still waiting to be executed

            * Property `fxMode` (string)
                > The mode by which the FX rate is to be determined (MANUAL or AUTO)

            * Property `fxStatus` (string)
                > The state to which the Post-Instruct FX process has reached (INITIATED or COMPLETED)

            * Property `fxStatusUpdatedAt` (string)
                > The date-time at which the most recent fxStatus was determined.

            * Property `fxTransactionReference` (string)
                > The reference assigned to the FX funding that will fulfil this payment.

        * Changed property `sourceCurrency` (string)
            > ISO-4217 3 character currency code

        * Changed property `paymentCurrency` (string)
            > ISO-4217 3 character currency code

        * Changed property `events` (array)

            Changed items (object):

            * Changed property `sourceCurrency` (string)
                > ISO-4217 3 character currency code

            * Changed property `paymentCurrency` (string)
                > ISO-4217 3 character currency code

##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`

    * Added property `postInstructFxInfo` (object)
        > FX details relating to a payout that was executed or is still waiting to be executed

        * Property `fxMode` (string)
            > The mode by which the FX rate is to be determined (MANUAL or AUTO)

        * Property `fxStatus` (string)
            > The state to which the Post-Instruct FX process has reached (INITIATED or COMPLETED)

        * Property `fxStatusUpdatedAt` (string)
            > The date-time at which the most recent fxStatus was determined.

        * Property `fxTransactionReference` (string)
            > The reference assigned to the FX funding that will fulfil this payment.

    * Changed property `sourceCurrency` (string)
        > ISO-4217 3 character currency code

    * Changed property `paymentCurrency` (string)
        > ISO-4217 3 character currency code

    * Changed property `events` (array)

        Changed items (object):

        * Changed property `sourceCurrency` (string)
            > ISO-4217 3 character currency code

        * Changed property `paymentCurrency` (string)
            > ISO-4217 3 character currency code

##### `POST` /v3/payouts


###### Request:

Changed content type : `application/json`

* Changed property `payments` (array)

    Changed items (object):
        > Instruction for creating a payment

    * Changed property `remoteId` (string)
        > Your identifier for the payee

Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > Create a new payout from a CSV source file and return a location header with a link to get the payout

    Changed items (object):
        > Instruction for creating a payment

    * Changed property `remoteId` (string)
        > Your identifier for the payee

###### Return Type:

Changed response : **202 Accepted**
> Successful submission of the payout
##### `GET` /v3/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> Details of Payout

* Changed content type : `application/json`

    * Changed property `payoutId` (string)
        > The id of the payout

    * Changed property `status` (string)
        > The status of the payout (one of SUBMITTED, ACCEPTED, REJECTED, QUOTED, INSTRUCTED, COMPLETED, INCOMPLETE, WITHDRAWN)

    * Changed property `paymentsSubmitted` (integer)
        > The number of payments that were submitted in the payout

    * Changed property `paymentsAccepted` (integer)
        > The number of payments that were accepted in the payout

    * Changed property `paymentsRejected` (integer)
        > The number of payments that were rejected in the payout

    * Changed property `paymentsWithdrawn` (integer)
        > The number of payments that were withdrawn in the payout

    * Changed property `fxSummaries` (array)

        Changed items (object):

        * Changed property `rate` (number)
            > The conversion rate (from the source currency to the payment currency)

        * Changed property `invertedRate` (number)
            > The inverse conversion rate (from paymnent currency to source currency)

        * Changed property `creationTime` (string)
            > Timestamp of when the quote was created

        * Changed property `expiryTime` (string)
            > The timestamp for when the quote will expire

        * Changed property `quoteId` (string)
            > The id of the created quote

        * Changed property `totalSourceAmount` (integer)
            > The amount (in minor units) that will be paid from the source account

        * Changed property `totalPaymentAmount` (integer)
            > The amount (in minor units) that the payee will receive

    * Changed property `accounts` (array)

        Changed items (object):

        * Changed property `sourceAccountName` (string)
            > The name of the source account as referencec in the payout

        * Changed property `sourceAccountId` (string)
            > The id of the payout

        * Changed property `totalPayoutCost` (integer)
            > The total amount (in mnor units) that will be debited from the source account for the payout

    * Changed property `acceptedPayments` (array)

        Changed items (object):

        * Changed property `remoteId` (string)
            > Your identifier for the payee

        * Changed property `amount` (integer)
            > The amount of the payment in minor units

        * Changed property `sourceAccountName` (string)
            > The identifier of the source account to debit the payment from

        * Changed property `payorPaymentId` (string)
            > A reference identifier for the payor for the given payee payment

        * Changed property `paymentMemo` (string)
            > <p>Any value here will override the memo value in the parent payout</p>
            > <p>This should be the reference field on the statement seen by the payee (but not via ACH)</p>

        * Changed property `remoteSystemId` (string)
            > <p>The identifier for the remote payments system if not Velo</p>

        * Changed property `paymentMetadata` (string)
            > <p>Metadata about the payment that may be relevant to the specific rails or remote system making the payout</p>
            > <p>The structure of the data will be dictated by the requirements of the payment rails</p>

        * Changed property `railsId` (string)
            > Indicates the 3rd party system involved in making this payment

    * Changed property `rejectedPayments` (array)

        Changed items (object):

        * Changed property `remoteId` (string)
            > The remoteId supplied by the payor that identifies the payee

        * Changed property `amount` (integer)
            > The amount of the payment in minor units

        * Changed property `sourceAccountName` (string)
            > The identifier of the source account to debit the payment from

        * Changed property `payorPaymentId` (string)
            > A reference identifier for the payor for the given payee payment

        * Changed property `remoteSystemId` (string)
            > <p>The identifier for the remote payments system if not Velo</p>

        * Changed property `paymentMetadata` (string)
            > <p>Metadata about the payment that may be relevant to the specific rails or remote system making the payout</p>
            > <p>The structure of the data will be dictated by the requirements of the payment rails</p>

        * Changed property `reason` (string)
            > The reason for the payment being rejected

        * Changed property `reasonCode` (string)
            > The reason code as determined by Velo

        * Changed property `lineNumber` (integer)
            > If the payment was submitted in a csv payout then this will be the line number of the payment in the file

        * Changed property `message` (string)
            > A more general rejection message than the reason property

##### `POST` /v3/payouts/{payoutId}/quote


###### Return Type:

Changed response : **200 OK**
> Quote for payout

* Changed content type : `application/json`

    * Changed property `fxSummaries` (array)

        Changed items (object):

        * Changed property `rate` (number)
            > The conversion rate (from the source currency to the payment currency)

        * Changed property `invertedRate` (number)
            > The inverse conversion rate (from paymnent currency to source currency)

        * Changed property `creationTime` (string)
            > Timestamp of when the quote was created

        * Changed property `expiryTime` (string)
            > The timestamp for when the quote will expire

        * Changed property `quoteId` (string)
            > The id of the created quote

        * Changed property `totalSourceAmount` (integer)
            > The amount (in minor units) that will be paid from the source account

        * Changed property `totalPaymentAmount` (integer)
            > The amount (in minor units) that the payee will receive

##### `GET` /v3/payouts/{payoutId}/payments


###### Return Type:

Changed response : **200 OK**
> Payments for payout

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `paymentId` (string -> string)
            > The id of the payment

        * Changed property `remoteId` (string)
            > The remoteId supplied by the payor that identifies the payee

        * Changed property `currency` (string)
            > The currency that the payment was made in

        * Changed property `amount` (integer)
            > The amount of the payment in minor units

        * Changed property `sourceAccountName` (string)
            > The identifier of the source account to debit the payment from

        * Changed property `payorPaymentId` (string)
            > A reference identifier for the payor for the given payee payment

        * Changed property `paymentMemo` (string)
            > <p>Any value here will override the memo value in the parent payout</p>
            > <p>This should be the reference field on the statement seen by the payee (but not via ACH)</p>

        * Changed property `withdrawable` (boolean)
            > Can this paynent be withdrawn

        * Changed property `status` (string)
            > Current status of payment. One of the following values: SUBMITTED, ACCEPTED, REJECTED, WITHDRAWN, RETURNED, AWAITING_FUNDS, FUNDED, UNFUNDED, CANCELLED, BANK_PAYMENT_REQUESTED

        * Changed property `remoteSystemId` (string)
            > <p>The identifier for the remote payments system if not Velo</p>

        * Changed property `paymentMetadata` (string)
            > <p>Metadata about the payment that may be relevant to the specific rails or remote system making the payout</p>
            > <p>The structure of the data will be dictated by the requirements of the payment rails</p>

