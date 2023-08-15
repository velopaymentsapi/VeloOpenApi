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

##### `GET` /v2/payors/{payorId}


###### Return Type:

Changed response : **200 OK**
> Get Payor Details

* Changed content type : `application/json`

    * Added property `createdAt` (string)
        > The date of creation of the payor

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

        * Added property `transactionId` (string)

        * Added property `transactionReference` (string)

##### `GET` /v4/paymentaudit/payments


###### Parameters:

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

        * Added property `transactionId` (string)

        * Added property `transactionReference` (string)

##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`

    * Added property `railsAccountId` (string)

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

