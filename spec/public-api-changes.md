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

