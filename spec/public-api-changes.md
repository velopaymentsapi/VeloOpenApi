#### What's Changed
---

##### `GET` /v2/users


###### Parameters:

Added: `payeeType` in `query`
> The Type of the Payee entity. Either COMPANY or INDIVIDUAL.

###### Return Type:

Changed response : **200 OK**
> Paginated list of Users filtered by query parameters

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `companyName` (string)
            > The payor or payee company name or null if the user is not a payor or payee user

        * Added property `userType` (string)
            > Indicates the type of user. Could be BACKOFFICE, PAYOR or PAYEE.

            Enum values:

            * `BACKOFFICE`
            * `PAYOR`
            * `PAYEE`
##### `GET` /v2/users/{userId}


###### Return Type:

Changed response : **200 OK**
> Get User Details

* Changed content type : `application/json`

    * Added property `companyName` (string)
        > The payor or payee company name or null if the user is not a payor or payee user

    * Added property `userType` (string)
        > Indicates the type of user. Could be BACKOFFICE, PAYOR or PAYEE.

        Enum values:

        * `BACKOFFICE`
        * `PAYOR`
        * `PAYEE`
##### `POST` /v2/users/invite


###### Request:

Changed content type : `application/json`

* Added property `userType` (string)
    > Will default to PAYOR if not provided but entityId is provided

    Enum values:

    * `BACKOFFICE`
    * `PAYOR`
    * `PAYEE`
* Changed property `roles` (array)
    > The role(s) for the user
    > The role must exist
    > The role can be a custom role or a system role but the invoker must have the permissions to assign the role
    > System roles are: velo.backoffice.admin, velo.payor.master_admin, velo.payor.admin, velo.payor.support, velo.payee.admin, velo.payee.support

* Changed property `entityId` (string)
    > The payorId or payeeId or null if the user is a backoffice admin

##### `GET` /v2/users/self


###### Return Type:

Changed response : **200 OK**
> Get User Details

* Changed content type : `application/json`

    * Added property `companyName` (string)
        > The payor or payee company name or null if the user is not a payor or payee user

    * Added property `userType` (string)
        > Indicates the type of user. Could be BACKOFFICE, PAYOR or PAYEE.

        Enum values:

        * `BACKOFFICE`
        * `PAYOR`
        * `PAYEE`
##### `GET` /v2/payors/{payorId}


###### Return Type:

Changed response : **200 OK**
> Get Payor Details

* Changed content type : `application/json`

    * Added property `provider` (string)
        > The source of the payorXid, default is null which means Velo

    * Added property `openBankingEnabled` (boolean)
        > Is Open Banking supported for this payor

##### `POST` /v1/payors/{payorId}/applications/{applicationId}/keys


###### Request:

Changed content type : `application/json`

* Changed property `roles` (array)
    > <p>A list of roles to assign to the key.</p>
    > <p>Only the first role name will be used</p>
    > <p>A later version will change this from a list to string</p>

##### `GET` /v4/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay

* Changed content type : `application/json`

    * Changed property `challenge` (object)
        > <p>Used to override the default challenge presented to the payee when they onboard</p>
        > <p>Not used after the payee has onboarded</p>

        * Changed property `value` (string)
            > The value that the user will be asked to verify when they onboard

##### `POST` /v4/payees/{payeeId}/payeeDetailsUpdate


###### Request:

Changed content type : `application/json`

* Added property `contactSmsNumber` (string)
    > The phone number of a device that the payee wishes to receive sms messages on

* Changed property `challenge` (object)
    > <p>Used to override the default challenge presented to the payee when they onboard</p>
    > <p>Not used after the payee has onboarded</p>

    * Changed property `value` (string)
        > The value that the user will be asked to verify when they onboard

##### `POST` /v4/payees


###### Request:

Changed content type : `application/json`

* Changed property `payees` (array)

    Changed items (object):

    * Changed property `challenge` (object)
        > <p>Used to override the default challenge presented to the payee when they onboard</p>
        > <p>Not used after the payee has onboarded</p>

        * Changed property `value` (string)
            > The value that the user will be asked to verify when they onboard

##### `GET` /v4/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status

* Changed content type : `application/json`

    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Changed property `challenge` (object)
                > <p>Used to override the default challenge presented to the payee when they onboard</p>
                > <p>Not used after the payee has onboarded</p>

                * Changed property `value` (string)
                    > The value that the user will be asked to verify when they onboard

