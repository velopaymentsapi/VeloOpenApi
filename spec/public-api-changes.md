#### What's Changed
---

##### `GET` /v3/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay


* Changed content type : `application/json`

    * Changed property `address` (object)

        * Changed property `zipOrPostcode` (string)

##### `POST` /v3/payees/{payeeId}/payeeDetailsUpdate


###### Request:

Changed content type : `application/json`

* Changed property `address` (object)

    * Changed property `zipOrPostcode` (string)

##### `GET` /v4/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay


* Changed content type : `application/json`

    * Changed property `address` (object)

        * Changed property `zipOrPostcode` (string)

##### `POST` /v4/payees/{payeeId}/payeeDetailsUpdate


###### Request:

Changed content type : `application/json`

* Changed property `address` (object)

    * Changed property `zipOrPostcode` (string)

##### `GET` /v4/payees/{payeeId}/paymentChannels/


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay


* Changed content type : `application/json`

    * Changed property `paymentChannels` (array)

        Changed items (object):

        * Changed property `bankAddress` (object)

            * Changed property `zipOrPostcode` (string)

##### `GET` /v4/payees/{payeeId}/paymentChannels/{paymentChannelId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay


* Changed content type : `application/json`

    * Changed property `bankAddress` (object)

        * Changed property `zipOrPostcode` (string)

##### `POST` /v3/payouts/{payoutId}


###### Request:

Changed content type : `application/json`

* Deleted property `fxRateDegredationThresholdPercentage` (number)
    > Halt instruction if the FX rates have become worse since the last quote. Property deprecated because of misspelled. Please use fxRateDegradationThresholdPercentage.


##### `POST` /v3/payees


###### Request:

Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > CSV File of payee data


    Changed items (object):

    New optional properties:
    - `addressZipOrPostcode`

    * Changed property `addressZipOrPostcode` (string)

Changed content type : `application/json`

* Changed property `payees` (array)

    Changed items (object):

    * Changed property `address` (object)

        * Changed property `zipOrPostcode` (string)

##### `POST` /v4/payees


###### Request:

Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > CSV File of payee data


    Changed items (object):

    New optional properties:
    - `addressZipOrPostcode`

    * Changed property `addressZipOrPostcode` (string)

Changed content type : `application/json`

* Changed property `payees` (array)

    Changed items (object):

    * Changed property `address` (object)

        * Changed property `zipOrPostcode` (string)

##### `GET` /v3/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status


* Changed content type : `application/json`

    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Changed property `address` (object)

                * Changed property `zipOrPostcode` (string)

##### `GET` /v4/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status


* Changed content type : `application/json`

    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Changed property `address` (object)

                * Changed property `zipOrPostcode` (string)

