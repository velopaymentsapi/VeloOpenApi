#### What's Changed
---

##### `GET` /v1/payors/{payorId}


##### `POST` /v4/payees


###### Return Type:

Changed response : **201 Created**
> HTTP Created. Body created only on CSV requests
New header : `Location`


##### `GET` /v4/paymentaudit/payouts/{payoutId}



###### Parameters:

Changed: `transmissionType` in `query`
> Transmission Type
> * ACH
> * SAME_DAY_ACH
> * WIRE
> * GACHO


###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `transmissionType` (string)
            > The transmission type of the payment, e.g. ACH, SAME_DAY_ACH, WIRE, GACHO

##### `GET` /v4/paymentaudit/payments


###### Parameters:

Changed: `transmissionType` in `query`
> Transmission Type
> * ACH
> * SAME_DAY_ACH
> * WIRE
> * GACHO

Changed: `railsId` in `query`
> Payout Rails ID filter - case insensitive match.
> Any value is allowed, but you should use one of the supported railsId values.
> To get this list of values, you should call the 'Get Supported Rails' endpoint.


###### Return Type:

Changed response : **200 OK**
> Paginated list of payments

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `transmissionType` (string)
            > The transmission type of the payment, e.g. ACH, SAME_DAY_ACH, WIRE, GACHO

##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`


    * Changed property `transmissionType` (string)
        > The transmission type of the payment, e.g. ACH, SAME_DAY_ACH, WIRE, GACHO

##### `GET` /v4/paymentaudit/fundings


###### Parameters:

Added: `sourceAccountName` in `query`
> The source account name


            * `SAME_DAY_ACH`
            * `WIRE`
            * `ACH`
