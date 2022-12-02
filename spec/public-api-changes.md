#### What's Changed
---

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

