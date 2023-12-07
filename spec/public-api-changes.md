#### What's New
---

##### `GET` /v4/payees/{payeeId}/paymentChannels/

> Get All Payment Channels Details


##### `POST` /v4/payees/{payeeId}/paymentChannels/

> Create Payment Channel


##### `GET` /v4/payees/{payeeId}/paymentChannels/{paymentChannelId}

> Get Payment Channel Details


##### `POST` /v4/payees/{payeeId}/paymentChannels/{paymentChannelId}

> Update Payment Channel


##### `DELETE` /v4/payees/{payeeId}/paymentChannels/{paymentChannelId}

> Delete Payment Channel


##### `POST` /v4/payees/{payeeId}/paymentChannels/{paymentChannelId}/enable

> Enable Payment Channel


##### `PUT` /v4/payees/{payeeId}/paymentChannels/order

> Update Payees preferred Payment Channel order


#### What's Changed
---

##### `GET` /v2/users


###### Return Type:

Changed response : **200 OK**
> Paginated list of Users filtered by query parameters


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `mfaStatus` (string)
            > The status of the MFA device


            Added enum value:

            * `VERIFIED`
##### `GET` /v2/users/{userId}


###### Return Type:

Changed response : **200 OK**
> Get User Details


* Changed content type : `application/json`

    * Changed property `mfaStatus` (string)
        > The status of the MFA device


        Added enum value:

        * `VERIFIED`
##### `GET` /v2/users/self


###### Return Type:

Changed response : **200 OK**
> Get User Details


* Changed content type : `application/json`

    * Changed property `mfaStatus` (string)
        > The status of the MFA device


        Added enum value:

        * `VERIFIED`
##### `POST` /v2/users/self/password


###### Request:

Changed content type : `application/json`

* Changed property `oldPassword` (string)
    > The user's current password


* Changed property `newPassword` (string)
    > The new password


##### `POST` /v2/users/self/password/validate


###### Request:

Changed content type : `application/json`

* Changed property `password` (string)
    > a password that passes validation


##### `GET` /v2/payors/{payorId}


###### Return Type:

Changed response : **200 OK**
> Get Payor Details


* Changed content type : `application/json`

    * Added property `createdAt` (string)
        > The date of creation of the payor


    * Deleted property `transmissionTypes` (object)

    * Changed property `payorId` (string)
        > The Payor Id


    * Changed property `kycState` (string)
        > The kyc state of the payor. One of the following values: FAILED_KYC, PASSED_KYC, REQUIRES_KYC


    * Changed property `payeeGracePeriodProcessingEnabled` (boolean)
        > Whether grace period processing is enabled.


    * Changed property `payeeGracePeriodDays` (integer)
        > The grace period for paying payees in days before the payee must be onboarded.


    * Changed property `reminderEmailsOptOut` (boolean)
        > Whether or not the payor has opted-out of reminder emails being sent.


##### `POST` /v1/payors/{payorId}/applications/{applicationId}/keys


###### Request:

Changed content type : `application/json`

* Changed property `roles` (array)
    > <p>A role to assign to the key.</p>
    > <p>If you want your API key to have write access then assign the role velo.payor.admin</p>
    > <p>A later version will change this property from a list to string</p>


    Changed items (string):
        > Name of role


    Added enum values:

    * `payor.admin`
    * `payor.support`
    Removed enum values:

    * `velo.payor.admin`
    * `velo.payor.support`
##### `GET` /v3/sourceAccounts


###### Return Type:

Changed response : **200 OK**
> List Source Account response


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `transmissionTypes` (array)
            > List of supported transmission types.


            Items (string):

##### `GET` /v3/sourceAccounts/{sourceAccountId}


###### Return Type:

Changed response : **200 OK**
> Source account response


* Changed content type : `application/json`

    * Added property `transmissionTypes` (array)
        > List of supported transmission types.


##### `GET` /v1/paymentaudit/fundings


###### Return Type:

Changed response : **200 OK**
> Get Fundings normal response


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `payorId` (string)
            > The id of the payor associated with the funding.


        * Added property `transactionId` (string)
            > The id of the transaction associated with the funding if there was one


        * Added property `transactionReference` (string)
            > The payors reference for the transaction associated with the funding if there was one


##### `GET` /v4/paymentaudit/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `railsAccountId` (string)

        * Added property `transmissionTypeRequested` (string)
            > The transmission type of the payment requested by the payor


        * Added property `transactionId` (string)

        * Added property `transactionReference` (string)

##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay


* Changed content type : `application/json`

    * Added property `railsAccountId` (string)

    * Added property `transmissionTypeRequested` (string)
        > The transmission type of the payment requested by the payor


    * Added property `transactionId` (string)

    * Added property `transactionReference` (string)

##### `GET` /v4/paymentaudit/fundings


###### Return Type:

Changed response : **200 OK**
> Get Fundings normal response


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `payorId` (string)
            > The id of the payor associated with the funding.


        * Added property `transactionId` (string)
            > The id of the transaction associated with the funding if there was one


        * Added property `transactionReference` (string)
            > The payors reference for the transaction associated with the funding if there was one


##### `POST` /v3/payouts


###### Request:

Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > Create a new payout from a CSV source file and return a location header with a link to get the payout


    Changed items (object):
        > Instruction for creating a payment


    New optional properties:
    - `sourceAccountName`

    * Added property `transactionId` (string)
        > Must match a valid transaction id previously created by the payor. Exactly one of sourceAccountName or transactionId is required.


    * Changed property `sourceAccountName` (string)
        > Must match a valid source account name belonging to the payor. Exactly one of sourceAccountName or transactionId is required.


    * Changed property `transmissionType` (string)
        > <p>Optionally choose a specific transmission method for the payment.</p>
        > <p>Valid values for transmissionType can be found attached to the Source Account</p>


        Removed enum values:

        * `SAME_DAY_ACH`
        * `WIRE`
        * `ACH`
        * `LOCAL`
        * `SWIFT`
Changed content type : `application/json`

* Changed property `payments` (array)

    Changed items (object):
        > Instruction for creating a payment


    New optional properties:
    - `sourceAccountName`

    * Added property `transactionId` (string)
        > Must match a valid transaction id previously created by the payor. Exactly one of sourceAccountName or transactionId is required.


    * Changed property `sourceAccountName` (string)
        > Must match a valid source account name belonging to the payor. Exactly one of sourceAccountName or transactionId is required.


    * Changed property `transmissionType` (string)
        > <p>Optionally choose a specific transmission method for the payment.</p>
        > <p>Valid values for transmissionType can be found attached to the Source Account</p>


        Removed enum values:

        * `SAME_DAY_ACH`
        * `WIRE`
        * `ACH`
        * `LOCAL`
        * `SWIFT`
##### `POST` /v3/payouts/{payoutId}


###### Request:

Changed content type : `application/json`

* Added property `fxRateDegradationThresholdPercentage` (number)
    > Halt instruction if the FX rates have become worse since the last quote. Previously called fxRateDegredationThresholdPercentage.


* Changed property `fxRateDegredationThresholdPercentage` (number)
    > Halt instruction if the FX rates have become worse since the last quote. Property deprecated because of misspelled. Please use fxRateDegradationThresholdPercentage.


##### `GET` /v4/paymentaudit/payments


###### Parameters:

Added: `payorPaymentId` in `query`
> Payor's Id of the Payment


Added: `transactionReference` in `query`
> Query for all payments associated with a specific transaction reference


Added: `transactionId` in `query`
> Query for all payments associated with a specific transaction id


###### Return Type:

Changed response : **200 OK**
> Paginated list of payments


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `railsAccountId` (string)

        * Added property `transmissionTypeRequested` (string)
            > The transmission type of the payment requested by the payor


        * Added property `transactionId` (string)

        * Added property `transactionReference` (string)

##### `GET` /v3/payouts/{payoutId}/payments


###### Parameters:

Changed: `transmissionType` in `query`
> Transmission Type
> * ACH
> * SAME_DAY_ACH
> * WIRE


###### Return Type:

Changed response : **200 OK**
> Payments for payout


* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `transactionId` (string)
            > The id of the transaction associated with this payment if there was one


        * Changed property `transmissionType` (string)
            > <p>The transmission method of the payment.</p>
            > <p>Valid values for transmissionType can be found attached to the Source Account</p>


