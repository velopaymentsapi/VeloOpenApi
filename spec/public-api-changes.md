#### What's Changed
---

##### `GET` /v1/payors/{payorId}


###### Return Type:

Changed response : **200 OK**
> Get Payor Details

* Changed content type : `application/json`

    * Changed property `kycState` (string)
        > The kyc state of the payor. One of the following values: FAILED_KYC, PASSED_KYC, REQUIRES_KYC

        Removed enum values:

        * `FAILED_KYC`
        * `PASSED_KYC`
        * `REQUIRES_KYC`
    * Changed property `language` (string)
        > The payor’s language preference. Must be one of [EN, FR].

        Removed enum values:

        * `EN`
        * `FR`
##### `GET` /v2/payors/{payorId}


###### Return Type:

Changed response : **200 OK**
> Get Payor Details

* Changed content type : `application/json`

    * Changed property `kycState` (string)
        > The kyc state of the payor. One of the following values: FAILED_KYC, PASSED_KYC, REQUIRES_KYC

        Removed enum values:

        * `FAILED_KYC`
        * `PASSED_KYC`
        * `REQUIRES_KYC`
    * Changed property `language` (string)
        > The payor’s language preference. Must be one of [EN, FR]

        Removed enum values:

        * `EN`
        * `FR`
    * Changed property `paymentRails` (string)
        > The id of the payment rails

        Removed enum values:

        * `WU`
        * `BOFA`
##### `POST` /v1/payors/{payorId}/applications/{applicationId}/keys


###### Request:

Changed content type : `application/json`

* Changed property `roles` (array)
    > <p>A list of roles to assign to the key.</p>
    > <p>Only the first role name will be used</p>
    > <p>A later version will change this from a list to string</p>

    Changed items (string):
        > Name of role

    Added enum values:

    * `velo.payor.admin`
    * `velo.payor.support`
    Removed enum values:

    * `payor.admin`
    * `payor.support`
##### `GET` /v1/payorLinks


###### Return Type:

Changed response : **200 OK**
> Details of Payor Links

* Changed content type : `application/json`

    * Changed property `links` (array)

        Changed items (object):

        * Changed property `linkType` (string)
            > The type of the link. One of the following values: PARENT_OF

            Removed enum value:

            * `PARENT_OF`
    * Changed property `payors` (array)

        Changed items (object):

        * Changed property `kycState` (string)
            > Current KYC state. One of the following values: FAILED_KYC, PASSED_KYC, REQUIRES_KYC

            Removed enum values:

            * `FAILED_KYC`
            * `PASSED_KYC`
            * `REQUIRES_KYC`
##### `GET` /v3/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay

* Changed content type : `application/json`

    * Changed property `payorRefs` (array)

        Changed items (object):

        * Changed property `invitationStatus` (string)

            Removed enum values:

            * `ACCEPTED`
            * `PENDING`
            * `DECLINED`
    * Changed property `onboardedStatus` (string)
        > Onboarded status. One of the following values: CREATED, INVITED, REGISTERED, ONBOARDED

        Removed enum values:

        * `CREATED`
        * `INVITED`
        * `REGISTERED`
        * `ONBOARDED`
    * Changed property `watchlistStatus` (string)
        > Current watchlist status. One of the following values: NONE, PENDING, REVIEW, PASSED, FAILED

        Removed enum values:

        * `NONE`
        * `PENDING`
        * `REVIEW`
        * `PASSED`
        * `FAILED`
    * Changed property `payeeType` (string)
        > Type of Payee. One of the following values: Individual, Company

        Removed enum values:

        * `Individual`
        * `Company`
##### `GET` /v3/payees


###### Parameters:

Changed: `watchlistStatus` in `query`
> The watchlistStatus of the payees.

Changed: `onboardedStatus` in `query`
> The onboarded status of the payees.

Changed: `payeeType` in `query`
> The onboarded status of the payees.

###### Return Type:

Changed response : **200 OK**
> Details of Payee

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `payorRefs` (array)

            Changed items (object):

            * Changed property `invitationStatus` (string)

                Removed enum values:

                * `ACCEPTED`
                * `PENDING`
                * `DECLINED`
        * Changed property `onboardedStatus` (string)
            > Onboarded status. One of the following values: CREATED, INVITED, REGISTERED, ONBOARDED

            Removed enum values:

            * `CREATED`
            * `INVITED`
            * `REGISTERED`
            * `ONBOARDED`
        * Changed property `watchlistStatus` (string)
            > Current watchlist status. One of the following values: NONE, PENDING, REVIEW, PASSED, FAILED

            Removed enum values:

            * `NONE`
            * `PENDING`
            * `REVIEW`
            * `PASSED`
            * `FAILED`
        * Changed property `payeeType` (string)
            > Type of Payee. One of the following values: Individual, Company

            Removed enum values:

            * `Individual`
            * `Company`
##### `POST` /v3/payees


###### Request:

Changed content type : `application/json`

* Changed property `payees` (array)

    Changed items (object):

    * Changed property `type` (string)
        > Type of Payee. One of the following values: Individual, Company

        Removed enum values:

        * `Individual`
        * `Company`
    * Changed property `address` (object)

        * Changed property `country` (string)
            > 2 letter ISO 3166-1 country code

            Removed enum values:

            * `AF`
            * `AX`
            * `AL`
            * `DZ`
            * `AS`
            * `AD`
            * `AO`
            * `AI`
            * `AQ`
            * `AG`
            * `AR`
            * `AM`
            * `AW`
            * `AU`
            * `AT`
            * `AZ`
            * `BS`
            * `BH`
            * `BD`
            * `BB`
            * `BY`
            * `BE`
            * `BZ`
            * `BJ`
            * `BM`
            * `BT`
            * `BO`
            * `BQ`
            * `BA`
            * `BW`
            * `BV`
            * `BR`
            * `IO`
            * `BN`
            * `BG`
            * `BF`
            * `BI`
            * `KH`
            * `CM`
            * `CA`
            * `CV`
            * `KY`
            * `CF`
            * `TD`
            * `CL`
            * `CN`
            * `CX`
            * `CC`
            * `CO`
            * `KM`
            * `CG`
            * `CD`
            * `CK`
            * `CR`
            * `CI`
            * `HR`
            * `CU`
            * `CW`
            * `CY`
            * `CZ`
            * `DK`
            * `DJ`
            * `DM`
            * `DO`
            * `EC`
            * `EG`
            * `SV`
            * `GQ`
            * `ER`
            * `EE`
            * `ET`
            * `FK`
            * `FO`
            * `FJ`
            * `FI`
            * `FR`
            * `GF`
            * `PF`
            * `TF`
            * `GA`
            * `GM`
            * `GE`
            * `DE`
            * `GH`
            * `GI`
            * `GR`
            * `GL`
            * `GD`
            * `GP`
            * `GU`
            * `GT`
            * `GG`
            * `GN`
            * `GW`
            * `GY`
            * `HT`
            * `HM`
            * `VA`
            * `HN`
            * `HK`
            * `HU`
            * `IS`
            * `IN`
            * `ID`
            * `IR`
            * `IQ`
            * `IE`
            * `IM`
            * `IL`
            * `IT`
            * `JM`
            * `JP`
            * `JE`
            * `JO`
            * `KZ`
            * `KE`
            * `KI`
            * `KP`
            * `KR`
            * `KW`
            * `KG`
            * `LA`
            * `LV`
            * `LB`
            * `LS`
            * `LR`
            * `LY`
            * `LI`
            * `LT`
            * `LU`
            * `MO`
            * `MK`
            * `MG`
            * `MW`
            * `MY`
            * `MV`
            * `ML`
            * `MT`
            * `MH`
            * `MQ`
            * `MR`
            * `MU`
            * `YT`
            * `MX`
            * `FM`
            * `MD`
            * `MC`
            * `MN`
            * `ME`
            * `MS`
            * `MA`
            * `MZ`
            * `MM`
            * `NA`
            * `NR`
            * `NP`
            * `NL`
            * `NC`
            * `NZ`
            * `NI`
            * `NE`
            * `NG`
            * `NU`
            * `NF`
            * `MP`
            * `false`
            * `OM`
            * `PK`
            * `PW`
            * `PS`
            * `PA`
            * `PG`
            * `PY`
            * `PE`
            * `PH`
            * `PN`
            * `PL`
            * `PT`
            * `PR`
            * `QA`
            * `RE`
            * `RO`
            * `RU`
            * `RW`
            * `BL`
            * `SH`
            * `KN`
            * `LC`
            * `MF`
            * `PM`
            * `VC`
            * `WS`
            * `SM`
            * `ST`
            * `SA`
            * `SN`
            * `RS`
            * `SC`
            * `SL`
            * `SG`
            * `SX`
            * `SK`
            * `SI`
            * `SB`
            * `SO`
            * `ZA`
            * `GS`
            * `SS`
            * `ES`
            * `LK`
            * `SD`
            * `SR`
            * `SJ`
            * `SZ`
            * `SE`
            * `CH`
            * `SY`
            * `TW`
            * `TJ`
            * `TZ`
            * `TH`
            * `TL`
            * `TG`
            * `TK`
            * `TO`
            * `TT`
            * `TN`
            * `TR`
            * `TM`
            * `TC`
            * `TV`
            * `UG`
            * `UA`
            * `AE`
            * `GB`
            * `US`
            * `UM`
            * `UY`
            * `UZ`
            * `VU`
            * `VE`
            * `VN`
            * `VG`
            * `VI`
            * `WF`
            * `EH`
            * `YE`
            * `ZM`
            * `ZW`
Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > CSV File of payee data

    Changed items (object):

    * Changed property `paymentChannelCurrency` (string)

        Removed enum values:

        * `USD`
        * `GBP`
        * `EUR`
##### `GET` /v3/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status

* Changed content type : `application/json`

    * Changed property `status` (string)
        > Batch Status. One of the following values: SUBMITTED, ACCEPTED

        Removed enum values:

        * `SUBMITTED`
        * `ACCEPTED`
    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Changed property `payorRefs` (array)

                Changed items (object):

                * Changed property `invitationStatus` (string)

                    Removed enum values:

                    * `ACCEPTED`
                    * `PENDING`
                    * `DECLINED`
            * Changed property `type` (string)
                > Type of Payee. One of the following values: Individual, Company

                Removed enum values:

                * `Individual`
                * `Company`
            * Changed property `address` (object)

                * Changed property `country` (string)
                    > 2 letter ISO 3166-1 country code

                    Removed enum values:

                    * `AF`
                    * `AX`
                    * `AL`
                    * `DZ`
                    * `AS`
                    * `AD`
                    * `AO`
                    * `AI`
                    * `AQ`
                    * `AG`
                    * `AR`
                    * `AM`
                    * `AW`
                    * `AU`
                    * `AT`
                    * `AZ`
                    * `BS`
                    * `BH`
                    * `BD`
                    * `BB`
                    * `BY`
                    * `BE`
                    * `BZ`
                    * `BJ`
                    * `BM`
                    * `BT`
                    * `BO`
                    * `BQ`
                    * `BA`
                    * `BW`
                    * `BV`
                    * `BR`
                    * `IO`
                    * `BN`
                    * `BG`
                    * `BF`
                    * `BI`
                    * `KH`
                    * `CM`
                    * `CA`
                    * `CV`
                    * `KY`
                    * `CF`
                    * `TD`
                    * `CL`
                    * `CN`
                    * `CX`
                    * `CC`
                    * `CO`
                    * `KM`
                    * `CG`
                    * `CD`
                    * `CK`
                    * `CR`
                    * `CI`
                    * `HR`
                    * `CU`
                    * `CW`
                    * `CY`
                    * `CZ`
                    * `DK`
                    * `DJ`
                    * `DM`
                    * `DO`
                    * `EC`
                    * `EG`
                    * `SV`
                    * `GQ`
                    * `ER`
                    * `EE`
                    * `ET`
                    * `FK`
                    * `FO`
                    * `FJ`
                    * `FI`
                    * `FR`
                    * `GF`
                    * `PF`
                    * `TF`
                    * `GA`
                    * `GM`
                    * `GE`
                    * `DE`
                    * `GH`
                    * `GI`
                    * `GR`
                    * `GL`
                    * `GD`
                    * `GP`
                    * `GU`
                    * `GT`
                    * `GG`
                    * `GN`
                    * `GW`
                    * `GY`
                    * `HT`
                    * `HM`
                    * `VA`
                    * `HN`
                    * `HK`
                    * `HU`
                    * `IS`
                    * `IN`
                    * `ID`
                    * `IR`
                    * `IQ`
                    * `IE`
                    * `IM`
                    * `IL`
                    * `IT`
                    * `JM`
                    * `JP`
                    * `JE`
                    * `JO`
                    * `KZ`
                    * `KE`
                    * `KI`
                    * `KP`
                    * `KR`
                    * `KW`
                    * `KG`
                    * `LA`
                    * `LV`
                    * `LB`
                    * `LS`
                    * `LR`
                    * `LY`
                    * `LI`
                    * `LT`
                    * `LU`
                    * `MO`
                    * `MK`
                    * `MG`
                    * `MW`
                    * `MY`
                    * `MV`
                    * `ML`
                    * `MT`
                    * `MH`
                    * `MQ`
                    * `MR`
                    * `MU`
                    * `YT`
                    * `MX`
                    * `FM`
                    * `MD`
                    * `MC`
                    * `MN`
                    * `ME`
                    * `MS`
                    * `MA`
                    * `MZ`
                    * `MM`
                    * `NA`
                    * `NR`
                    * `NP`
                    * `NL`
                    * `NC`
                    * `NZ`
                    * `NI`
                    * `NE`
                    * `NG`
                    * `NU`
                    * `NF`
                    * `MP`
                    * `false`
                    * `OM`
                    * `PK`
                    * `PW`
                    * `PS`
                    * `PA`
                    * `PG`
                    * `PY`
                    * `PE`
                    * `PH`
                    * `PN`
                    * `PL`
                    * `PT`
                    * `PR`
                    * `QA`
                    * `RE`
                    * `RO`
                    * `RU`
                    * `RW`
                    * `BL`
                    * `SH`
                    * `KN`
                    * `LC`
                    * `MF`
                    * `PM`
                    * `VC`
                    * `WS`
                    * `SM`
                    * `ST`
                    * `SA`
                    * `SN`
                    * `RS`
                    * `SC`
                    * `SL`
                    * `SG`
                    * `SX`
                    * `SK`
                    * `SI`
                    * `SB`
                    * `SO`
                    * `ZA`
                    * `GS`
                    * `SS`
                    * `ES`
                    * `LK`
                    * `SD`
                    * `SR`
                    * `SJ`
                    * `SZ`
                    * `SE`
                    * `CH`
                    * `SY`
                    * `TW`
                    * `TJ`
                    * `TZ`
                    * `TH`
                    * `TL`
                    * `TG`
                    * `TK`
                    * `TO`
                    * `TT`
                    * `TN`
                    * `TR`
                    * `TM`
                    * `TC`
                    * `TV`
                    * `UG`
                    * `UA`
                    * `AE`
                    * `GB`
                    * `US`
                    * `UM`
                    * `UY`
                    * `UZ`
                    * `VU`
                    * `VE`
                    * `VN`
                    * `VG`
                    * `VI`
                    * `WF`
                    * `EH`
                    * `YE`
                    * `ZM`
                    * `ZW`
##### `GET` /v3/payees/payors/{payorId}/invitationStatus


###### Parameters:

Changed: `invitationStatus` in `query`
> The invitation status of the payees.

###### Return Type:

Changed response : **200 OK**
> Get Payees with Invitaion status - filters of payeeId and invitationStatus

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `invitationStatus` (string)
            > Payee invitation status. One of the following values: ACCEPTED, PENDING, DECLINED

            Removed enum values:

            * `ACCEPTED`
            * `PENDING`
            * `DECLINED`
##### `GET` /v3/payees/deltas


###### Return Type:

Changed response : **200 OK**
> Details of Payee Changes

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `onboardedStatus` (string)
            > Onboarded status. One of the following values: CREATED, INVITED, REGISTERED, ONBOARDED

            Removed enum values:

            * `CREATED`
            * `INVITED`
            * `REGISTERED`
            * `ONBOARDED`
##### `GET` /v4/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay

* Changed content type : `application/json`

    * Changed property `payorRefs` (array)

        Changed items (object):

        * Changed property `invitationStatus` (string)

            Removed enum values:

            * `ACCEPTED`
            * `PENDING`
            * `DECLINED`
    * Changed property `onboardedStatus` (string)
        > Payee onboarded status. One of the following values: CREATED, INVITED, REGISTERED, ONBOARDED

        Removed enum values:

        * `CREATED`
        * `INVITED`
        * `REGISTERED`
        * `ONBOARDED`
    * Changed property `watchlistStatus` (string)
        > Current watchlist status. One of the following values: NONE, PENDING, REVIEW, PASSED, FAILED

        Removed enum values:

        * `NONE`
        * `PENDING`
        * `REVIEW`
        * `PASSED`
        * `FAILED`
    * Changed property `payeeType` (string)
        > Type of Payee. One of the following values: Individual, Company

        Removed enum values:

        * `Individual`
        * `Company`
##### `GET` /v4/payees


###### Parameters:

Changed: `watchlistStatus` in `query`
> The watchlistStatus of the payees.

Changed: `onboardedStatus` in `query`
> The onboarded status of the payees.

Changed: `payeeType` in `query`
> The onboarded status of the payees.

Changed: `ofacStatus` in `query`
> The ofacStatus of the payees.

###### Return Type:

Changed response : **200 OK**
> Details of Payee

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `payorRefs` (array)

            Changed items (object):

            * Changed property `invitationStatus` (string)

                Removed enum values:

                * `ACCEPTED`
                * `PENDING`
                * `DECLINED`
        * Changed property `onboardedStatus` (string)
            > Payee onboarded status. One of the following values: CREATED, INVITED, REGISTERED, ONBOARDED

            Removed enum values:

            * `CREATED`
            * `INVITED`
            * `REGISTERED`
            * `ONBOARDED`
        * Changed property `watchlistStatus` (string)
            > Current watchlist status. One of the following values: NONE, PENDING, REVIEW, PASSED, FAILED

            Removed enum values:

            * `NONE`
            * `PENDING`
            * `REVIEW`
            * `PASSED`
            * `FAILED`
        * Changed property `payeeType` (string)
            > Type of Payee. One of the following values: Individual, Company

            Removed enum values:

            * `Individual`
            * `Company`
##### `POST` /v4/payees


###### Request:

Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > CSV File of payee data

    Changed items (object):

    * Changed property `paymentChannelCurrency` (string)

        Removed enum values:

        * `USD`
        * `GBP`
        * `EUR`
##### `GET` /v4/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status

* Changed content type : `application/json`

    * Changed property `status` (string)
        > Batch Status. One of the following values: SUBMITTED, ACCEPTED

        Removed enum values:

        * `SUBMITTED`
        * `ACCEPTED`
    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Changed property `payorRefs` (array)

                Changed items (object):

                * Changed property `invitationStatus` (string)

                    Removed enum values:

                    * `ACCEPTED`
                    * `PENDING`
                    * `DECLINED`
            * Changed property `type` (string)
                > Type of Payee. One of the following values: Individual, Company

                Removed enum values:

                * `Individual`
                * `Company`
##### `GET` /v4/payees/payors/{payorId}/invitationStatus


###### Parameters:

Changed: `invitationStatus` in `query`
> The invitation status of the payees.

###### Return Type:

Changed response : **200 OK**
> Get Payees with Invitaion status - filters of payeeId and invitationStatus

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `invitationStatus` (string)
            > Payee invitation status. One of the following values: ACCEPTED, PENDING, DECLINED

            Removed enum values:

            * `ACCEPTED`
            * `PENDING`
            * `DECLINED`
##### `GET` /v4/payees/deltas


###### Return Type:

Changed response : **200 OK**
> Details of Payee Changes

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `onboardedStatus` (string)
            > Payee onboarded status. One of the following value: CREATED, INVITED, REGISTERED, ONBOARDED

            Removed enum values:

            * `CREATED`
            * `INVITED`
            * `REGISTERED`
            * `ONBOARDED`
##### `GET` /v2/sourceAccounts


###### Return Type:

Changed response : **200 OK**
> List Source Account response

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `currency` (string)

            Removed enum value:

            * `USD`
##### `GET` /v2/sourceAccounts/{sourceAccountId}


###### Return Type:

Changed response : **200 OK**
> Source account response

* Changed content type : `application/json`

    * Changed property `currency` (string)

        Removed enum value:

        * `USD`
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

        * Changed property `type` (string)
            > Funding account type. One of the following values: FBO, WUBS_DECOUPLED, PRIVATE

            Removed enum values:

            * `FBO`
            * `WUBS_DECOUPLED`
##### `POST` /v2/fundingAccounts


###### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum value:

    * `PRIVATE`
##### `GET` /v2/fundingAccounts/{fundingAccountId}


###### Return Type:

Changed response : **200 OK**
> Funding Account Response

* Changed content type : `application/json`

    * Changed property `type` (string)
        > Funding account type. One of the following values: FBO, WUBS_DECOUPLED, PRIVATE

        Removed enum values:

        * `FBO`
        * `WUBS_DECOUPLED`
##### `GET` /v3/sourceAccounts


###### Parameters:

Changed: `type` in `query`
> The type of source account.

##### `GET` /v1/paymentaudit/fundings


###### Return Type:

Changed response : **200 OK**
> Get Fundings normal response

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `status` (string)
            > Status of the funding. One of the following values: PENDING, FAILED, CREDIT, DEBIT

            Removed enum values:

            * `PENDING`
            * `FAILED`
            * `CREDIT`
            * `DEBIT`
        * Changed property `fundingType` (string)
            > Funding type. One of the following values: ACH, WIRE, EMBEDDED, BANK_TRANSFER

            Removed enum values:

            * `ACH`
            * `WIRE`
            * `EMBEDDED`
        * Changed property `events` (array)

            Changed items (object):

            * Changed property `fundingEventType` (string)
                > Funding event type. One of the following values: PAYOR_FUNDING_DETECTED, PAYOR_FUNDING_REQUESTED, PAYOR_FUNDING_RETURN_RECEIVED, FUNDING_RETURN_DETECTED, PAYOR_FUNDING_REQUEST_SUBMITTED, PAYOR_FUNDING_ENTRY_DETAIL_RECEIVED, FUNDING_DEALLOCATED

                Removed enum values:

                * `PAYOR_FUNDING_DETECTED`
                * `PAYOR_FUNDING_REQUESTED`
                * `PAYOR_FUNDING_RETURN_RECEIVED`
                * `FUNDING_RETURN_DETECTED`
                * `PAYOR_FUNDING_REQUEST_SUBMITTED`
                * `PAYOR_FUNDING_ENTRY_DETAIL_RECEIVED`
                * `FUNDING_DEALLOCATED`
        * Changed property `topupType` (string)
            > Type of top up. One of the following values: AUTOMATIC, MANUAL

            Removed enum values:

            * `AUTOMATIC`
            * `MANUAL`
##### `GET` /v3/paymentaudit/payouts


###### Return Type:

Changed response : **200 OK**
> Payor data found

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `status` (string)
            > Current status of the payout. One of the following values: ACCEPTED, REJECTED, SUBMITTED, QUOTED, INSTRUCTED, COMPLETED, INCOMPLETE, CONFIRMED, WITHDRAWN

            Removed enum values:

            * `ACCEPTED`
            * `REJECTED`
            * `SUBMITTED`
            * `QUOTED`
            * `INSTRUCTED`
            * `COMPLETED`
            * `INCOMPLETE`
            * `CONFIRMED`
            * `WITHDRAWN`
        * Changed property `sourceAccountSummary` (array)

            Changed items (object):

            * Changed property `currency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
        * Changed property `fxSummaries` (array)

            Changed items (object):

            * Changed property `sourceCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
            * Changed property `paymentCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
            * Changed property `status` (string)
                > Current status of the FX Summary. One of the following values: UNQUOTED, QUOTED, EXPIRED, EXECUTED

                Removed enum values:

                * `UNQUOTED`
                * `QUOTED`
                * `EXPIRED`
                * `EXECUTED`
            * Changed property `fundingStatus` (string)
                > Current status of the funding. One of the following values: FUNDED, INSTRUCTED, UNFUNDED

                Removed enum values:

                * `FUNDED`
                * `INSTRUCTED`
                * `UNFUNDED`
##### `GET` /v3/paymentaudit/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay

* Changed content type : `application/json`

    * Changed property `summary` (object)

        * Changed property `payoutStatus` (string)
            > The current status of the payout. One of the following values: ACCEPTED, REJECTED, SUBMITTED, QUOTED, INSTRUCTED, COMPLETED, INCOMPLETE, CONFIRMED, WITHDRAWN

            Removed enum values:

            * `ACCEPTED`
            * `REJECTED`
            * `SUBMITTED`
            * `QUOTED`
            * `INSTRUCTED`
            * `COMPLETED`
            * `INCOMPLETE`
            * `CONFIRMED`
            * `WITHDRAWN`
    * Changed property `content` (array)

        Changed items (object):

        * Added property `paymentScheme` (string)

        * Changed property `sourceCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `paymentCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `status` (string)
            > Current status of the payment. One of the following values: ACCEPTED, AWAITING_FUNDS, FUNDED, UNFUNDED, BANK_PAYMENT_REQUESTED, REJECTED, ACCEPTED_BY_RAILS, CONFIRMED, FAILED, WITHDRAWN

            Removed enum values:

            * `ACCEPTED`
            * `AWAITING_FUNDS`
            * `FUNDED`
            * `UNFUNDED`
            * `BANK_PAYMENT_REQUESTED`
            * `REJECTED`
            * `ACCEPTED_BY_RAILS`
            * `CONFIRMED`
            * `FAILED`
            * `WITHDRAWN`
        * Changed property `fundingStatus` (string)
            > The funding status of the payment. One of the following values: [FUNDED, INSTRUCTED, UNFUNDED

            Removed enum values:

            * `FUNDED`
            * `INSTRUCTED`
            * `UNFUNDED`
        * Changed property `events` (array)

            Changed items (object):

            * Changed property `eventType` (string)
                > The type of the event. One of the following values: PAYOUT_SUBMITTED, PAYOUT_COMPLETED, PAYOUT_INSTRUCTED_V3, BANK_PAYMENT_REQUESTED, SOURCE_AMOUNT_CONFIRMED, PAYMENT_SUBMITTED, PAYMENT_SUBMITTED_ACCEPTED, PAYMENT_SUBMITTED_REJECTED, PAYMENT_CONFIRMED, PAYMENT_AWAITING_FUNDS, PAYMENT_FUNDED, PAYMENT_UNFUNDED, PAYMENT_FAILED, ACH_SUBMITTED_TO_ODFI, PAYMENT_ACCEPTED_BY_RAILS, ACH_RETURN_RECEIVED, RETURN_PAYMENT_FUNDING_REQUESTED, PAYOUT_BATCH_EXECUTED, PAYOUT_BATCH_QUOTE_EXPIRED, PAYOUT_BATCH_FUNDED, PAYOUT_BATCH_FUNDS_RETURN_REQUEST, PAYOUT_BATCH_FUNDS_RETURNED, PAYOUT_FUNDS_REQUEST, PAYOUT_FUNDS_GRANTED, PAYOUT_FUNDS_DENIED, PAYOUT_BATCH_QUOTED, PAYOUT_QUOTED, ACH_PAYMENT_RETURN_CANCELLED, RETURN_PAYMENT_CANCELLATION_REQUESTED, PAYOUT_WITHDRAWN

                Removed enum values:

                * `PAYOUT_SUBMITTED`
                * `PAYOUT_COMPLETED`
                * `PAYOUT_INSTRUCTED_V3`
                * `BANK_PAYMENT_REQUESTED`
                * `SOURCE_AMOUNT_CONFIRMED`
                * `PAYMENT_SUBMITTED`
                * `PAYMENT_SUBMITTED_ACCEPTED`
                * `PAYMENT_SUBMITTED_REJECTED`
                * `PAYMENT_CONFIRMED`
                * `PAYMENT_AWAITING_FUNDS`
                * `PAYMENT_FUNDED`
                * `PAYMENT_UNFUNDED`
                * `PAYMENT_FAILED`
                * `ACH_SUBMITTED_TO_ODFI`
                * `PAYMENT_ACCEPTED_BY_RAILS`
                * `ACH_RETURN_RECEIVED`
                * `RETURN_PAYMENT_FUNDING_REQUESTED`
                * `PAYOUT_BATCH_EXECUTED`
                * `PAYOUT_BATCH_QUOTE_EXPIRED`
                * `PAYOUT_BATCH_FUNDED`
                * `PAYOUT_BATCH_FUNDS_RETURN_REQUEST`
                * `PAYOUT_BATCH_FUNDS_RETURNED`
                * `PAYOUT_FUNDS_REQUEST`
                * `PAYOUT_FUNDS_GRANTED`
                * `PAYOUT_FUNDS_DENIED`
                * `PAYOUT_BATCH_QUOTED`
                * `PAYOUT_QUOTED`
                * `ACH_PAYMENT_RETURN_CANCELLED`
                * `RETURN_PAYMENT_CANCELLATION_REQUESTED`
                * `PAYOUT_WITHDRAWN`
            * Changed property `sourceCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
            * Changed property `paymentCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
##### `GET` /v3/paymentaudit/payments


###### Return Type:

Changed response : **200 OK**
> Paginated list of payments

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `paymentScheme` (string)

        * Changed property `sourceCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `paymentCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `status` (string)
            > Current status of the payment. One of the following values: ACCEPTED, AWAITING_FUNDS, FUNDED, UNFUNDED, BANK_PAYMENT_REQUESTED, REJECTED, ACCEPTED_BY_RAILS, CONFIRMED, FAILED, WITHDRAWN

            Removed enum values:

            * `ACCEPTED`
            * `AWAITING_FUNDS`
            * `FUNDED`
            * `UNFUNDED`
            * `BANK_PAYMENT_REQUESTED`
            * `REJECTED`
            * `ACCEPTED_BY_RAILS`
            * `CONFIRMED`
            * `FAILED`
            * `WITHDRAWN`
        * Changed property `fundingStatus` (string)
            > The funding status of the payment. One of the following values: [FUNDED, INSTRUCTED, UNFUNDED

            Removed enum values:

            * `FUNDED`
            * `INSTRUCTED`
            * `UNFUNDED`
        * Changed property `events` (array)

            Changed items (object):

            * Changed property `eventType` (string)
                > The type of the event. One of the following values: PAYOUT_SUBMITTED, PAYOUT_COMPLETED, PAYOUT_INSTRUCTED_V3, BANK_PAYMENT_REQUESTED, SOURCE_AMOUNT_CONFIRMED, PAYMENT_SUBMITTED, PAYMENT_SUBMITTED_ACCEPTED, PAYMENT_SUBMITTED_REJECTED, PAYMENT_CONFIRMED, PAYMENT_AWAITING_FUNDS, PAYMENT_FUNDED, PAYMENT_UNFUNDED, PAYMENT_FAILED, ACH_SUBMITTED_TO_ODFI, PAYMENT_ACCEPTED_BY_RAILS, ACH_RETURN_RECEIVED, RETURN_PAYMENT_FUNDING_REQUESTED, PAYOUT_BATCH_EXECUTED, PAYOUT_BATCH_QUOTE_EXPIRED, PAYOUT_BATCH_FUNDED, PAYOUT_BATCH_FUNDS_RETURN_REQUEST, PAYOUT_BATCH_FUNDS_RETURNED, PAYOUT_FUNDS_REQUEST, PAYOUT_FUNDS_GRANTED, PAYOUT_FUNDS_DENIED, PAYOUT_BATCH_QUOTED, PAYOUT_QUOTED, ACH_PAYMENT_RETURN_CANCELLED, RETURN_PAYMENT_CANCELLATION_REQUESTED, PAYOUT_WITHDRAWN

                Removed enum values:

                * `PAYOUT_SUBMITTED`
                * `PAYOUT_COMPLETED`
                * `PAYOUT_INSTRUCTED_V3`
                * `BANK_PAYMENT_REQUESTED`
                * `SOURCE_AMOUNT_CONFIRMED`
                * `PAYMENT_SUBMITTED`
                * `PAYMENT_SUBMITTED_ACCEPTED`
                * `PAYMENT_SUBMITTED_REJECTED`
                * `PAYMENT_CONFIRMED`
                * `PAYMENT_AWAITING_FUNDS`
                * `PAYMENT_FUNDED`
                * `PAYMENT_UNFUNDED`
                * `PAYMENT_FAILED`
                * `ACH_SUBMITTED_TO_ODFI`
                * `PAYMENT_ACCEPTED_BY_RAILS`
                * `ACH_RETURN_RECEIVED`
                * `RETURN_PAYMENT_FUNDING_REQUESTED`
                * `PAYOUT_BATCH_EXECUTED`
                * `PAYOUT_BATCH_QUOTE_EXPIRED`
                * `PAYOUT_BATCH_FUNDED`
                * `PAYOUT_BATCH_FUNDS_RETURN_REQUEST`
                * `PAYOUT_BATCH_FUNDS_RETURNED`
                * `PAYOUT_FUNDS_REQUEST`
                * `PAYOUT_FUNDS_GRANTED`
                * `PAYOUT_FUNDS_DENIED`
                * `PAYOUT_BATCH_QUOTED`
                * `PAYOUT_QUOTED`
                * `ACH_PAYMENT_RETURN_CANCELLED`
                * `RETURN_PAYMENT_CANCELLATION_REQUESTED`
                * `PAYOUT_WITHDRAWN`
            * Changed property `sourceCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
            * Changed property `paymentCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
##### `GET` /v3/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`

    * Added property `paymentScheme` (string)

    * Changed property `sourceCurrency` (string)
        > ISO 3 character currency code

        Removed enum values:

        * `USD`
        * `GBP`
        * `EUR`
    * Changed property `paymentCurrency` (string)
        > ISO 3 character currency code

        Removed enum values:

        * `USD`
        * `GBP`
        * `EUR`
    * Changed property `status` (string)
        > Current status of the payment. One of the following values: ACCEPTED, AWAITING_FUNDS, FUNDED, UNFUNDED, BANK_PAYMENT_REQUESTED, REJECTED, ACCEPTED_BY_RAILS, CONFIRMED, FAILED, WITHDRAWN

        Removed enum values:

        * `ACCEPTED`
        * `AWAITING_FUNDS`
        * `FUNDED`
        * `UNFUNDED`
        * `BANK_PAYMENT_REQUESTED`
        * `REJECTED`
        * `ACCEPTED_BY_RAILS`
        * `CONFIRMED`
        * `FAILED`
        * `WITHDRAWN`
    * Changed property `fundingStatus` (string)
        > The funding status of the payment. One of the following values: [FUNDED, INSTRUCTED, UNFUNDED

        Removed enum values:

        * `FUNDED`
        * `INSTRUCTED`
        * `UNFUNDED`
    * Changed property `events` (array)

        Changed items (object):

        * Changed property `eventType` (string)
            > The type of the event. One of the following values: PAYOUT_SUBMITTED, PAYOUT_COMPLETED, PAYOUT_INSTRUCTED_V3, BANK_PAYMENT_REQUESTED, SOURCE_AMOUNT_CONFIRMED, PAYMENT_SUBMITTED, PAYMENT_SUBMITTED_ACCEPTED, PAYMENT_SUBMITTED_REJECTED, PAYMENT_CONFIRMED, PAYMENT_AWAITING_FUNDS, PAYMENT_FUNDED, PAYMENT_UNFUNDED, PAYMENT_FAILED, ACH_SUBMITTED_TO_ODFI, PAYMENT_ACCEPTED_BY_RAILS, ACH_RETURN_RECEIVED, RETURN_PAYMENT_FUNDING_REQUESTED, PAYOUT_BATCH_EXECUTED, PAYOUT_BATCH_QUOTE_EXPIRED, PAYOUT_BATCH_FUNDED, PAYOUT_BATCH_FUNDS_RETURN_REQUEST, PAYOUT_BATCH_FUNDS_RETURNED, PAYOUT_FUNDS_REQUEST, PAYOUT_FUNDS_GRANTED, PAYOUT_FUNDS_DENIED, PAYOUT_BATCH_QUOTED, PAYOUT_QUOTED, ACH_PAYMENT_RETURN_CANCELLED, RETURN_PAYMENT_CANCELLATION_REQUESTED, PAYOUT_WITHDRAWN

            Removed enum values:

            * `PAYOUT_SUBMITTED`
            * `PAYOUT_COMPLETED`
            * `PAYOUT_INSTRUCTED_V3`
            * `BANK_PAYMENT_REQUESTED`
            * `SOURCE_AMOUNT_CONFIRMED`
            * `PAYMENT_SUBMITTED`
            * `PAYMENT_SUBMITTED_ACCEPTED`
            * `PAYMENT_SUBMITTED_REJECTED`
            * `PAYMENT_CONFIRMED`
            * `PAYMENT_AWAITING_FUNDS`
            * `PAYMENT_FUNDED`
            * `PAYMENT_UNFUNDED`
            * `PAYMENT_FAILED`
            * `ACH_SUBMITTED_TO_ODFI`
            * `PAYMENT_ACCEPTED_BY_RAILS`
            * `ACH_RETURN_RECEIVED`
            * `RETURN_PAYMENT_FUNDING_REQUESTED`
            * `PAYOUT_BATCH_EXECUTED`
            * `PAYOUT_BATCH_QUOTE_EXPIRED`
            * `PAYOUT_BATCH_FUNDED`
            * `PAYOUT_BATCH_FUNDS_RETURN_REQUEST`
            * `PAYOUT_BATCH_FUNDS_RETURNED`
            * `PAYOUT_FUNDS_REQUEST`
            * `PAYOUT_FUNDS_GRANTED`
            * `PAYOUT_FUNDS_DENIED`
            * `PAYOUT_BATCH_QUOTED`
            * `PAYOUT_QUOTED`
            * `ACH_PAYMENT_RETURN_CANCELLED`
            * `RETURN_PAYMENT_CANCELLATION_REQUESTED`
            * `PAYOUT_WITHDRAWN`
        * Changed property `sourceCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `paymentCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
##### `GET` /v4/paymentaudit/payouts


###### Return Type:

Changed response : **200 OK**
> Payor data found

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `status` (string)
            > Current status of the Payout. One of the following values: ACCEPTED, REJECTED, SUBMITTED, QUOTED, INSTRUCTED, COMPLETED, INCOMPLETE, CONFIRMED, WITHDRAWN

            Removed enum values:

            * `ACCEPTED`
            * `REJECTED`
            * `SUBMITTED`
            * `QUOTED`
            * `INSTRUCTED`
            * `COMPLETED`
            * `INCOMPLETE`
            * `CONFIRMED`
            * `WITHDRAWN`
        * Changed property `sourceAccountSummary` (array)

            Changed items (object):

            * Changed property `currency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
        * Changed property `fxSummaries` (array)

            Changed items (object):

            * Changed property `sourceCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
            * Changed property `paymentCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
            * Changed property `status` (string)
                > Current status of the FX Summary. One of the following values: UNQUOTED, QUOTED, EXPIRED, EXECUTED

                Removed enum values:

                * `UNQUOTED`
                * `QUOTED`
                * `EXPIRED`
                * `EXECUTED`
            * Changed property `fundingStatus` (string)
                > Current status of the funding. One of the following values: FUNDED, INSTRUCTED, UNFUNDED

                Removed enum values:

                * `FUNDED`
                * `INSTRUCTED`
                * `UNFUNDED`
        * Changed property `payoutType` (string)
            > The type of payout. One of the following values: STANDARD, AS, ON_BEHALF_OF

            Removed enum values:

            * `STANDARD`
            * `AS`
            * `ON_BEHALF_OF`
        * Changed property `schedule` (object)
            > Details relating to a payout that was executed via a schedule or is still waiting to be executed

            * Changed property `scheduleStatus` (string)
                > Current status of the payout schedule. One of the following values: SCHEDULED, EXECUTED, FAILED

                Removed enum values:

                * `SCHEDULED`
                * `EXECUTED`
                * `FAILED`
##### `GET` /v4/paymentaudit/payouts/{payoutId}


###### Parameters:

Changed: `transmissionType` in `query`
> Transmission Type
> * ACH
> * SAME_DAY_ACH
> * WIRE

###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay

* Changed content type : `application/json`

    * Changed property `summary` (object)

        * Changed property `payoutStatus` (string)
            > Current status of the Payout. One of the following values: ACCEPTED, REJECTED, SUBMITTED, QUOTED, INSTRUCTED, COMPLETED, INCOMPLETE, CONFIRMED, WITHDRAWN

            Removed enum values:

            * `ACCEPTED`
            * `REJECTED`
            * `SUBMITTED`
            * `QUOTED`
            * `INSTRUCTED`
            * `COMPLETED`
            * `INCOMPLETE`
            * `CONFIRMED`
            * `WITHDRAWN`
        * Changed property `payoutType` (string)
            > The type of payout. One of the following values: STANDARD, AS, ON_BEHALF_OF

            Removed enum values:

            * `STANDARD`
            * `AS`
            * `ON_BEHALF_OF`
        * Changed property `schedule` (object)
            > Details relating to a payout that was executed via a schedule or is still waiting to be executed

            * Changed property `scheduleStatus` (string)
                > Current status of the payout schedule. One of the following values: SCHEDULED, EXECUTED, FAILED

                Removed enum values:

                * `SCHEDULED`
                * `EXECUTED`
                * `FAILED`
    * Changed property `content` (array)

        Changed items (object):

        * Added property `paymentScheme` (string)

        * Changed property `sourceCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `paymentCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `status` (string)
            > Current status of the payment. One of the following values: ACCEPTED, AWAITING_FUNDS, FUNDED, UNFUNDED, BANK_PAYMENT_REQUESTED, REJECTED, ACCEPTED_BY_RAILS, CONFIRMED, RETURNED, WITHDRAWN

            Removed enum values:

            * `ACCEPTED`
            * `AWAITING_FUNDS`
            * `FUNDED`
            * `UNFUNDED`
            * `BANK_PAYMENT_REQUESTED`
            * `REJECTED`
            * `ACCEPTED_BY_RAILS`
            * `CONFIRMED`
            * `RETURNED`
            * `WITHDRAWN`
        * Changed property `fundingStatus` (string)
            > Current funding status of the payment. One of the following values: FUNDED, INSTRUCTED, UNFUNDED

            Removed enum values:

            * `FUNDED`
            * `INSTRUCTED`
            * `UNFUNDED`
        * Changed property `events` (array)

            Changed items (object):

            * Changed property `eventType` (string)
                > One of the following values: PAYOUT_SUBMITTED, PAYOUT_COMPLETED, PAYOUT_INSTRUCTED_V3, BANK_PAYMENT_REQUESTED, SOURCE_AMOUNT_CONFIRMED, PAYMENT_SUBMITTED, PAYMENT_SUBMITTED_ACCEPTED, PAYMENT_SUBMITTED_REJECTED, PAYMENT_CONFIRMED, PAYMENT_AWAITING_FUNDS, PAYMENT_FUNDED, PAYMENT_UNFUNDED, PAYMENT_FAILED, PAYMENT_TRACKING_DETAILS_UPDATED, ACH_SUBMITTED_TO_ODFI, PAYMENT_ACCEPTED_BY_RAILS, ACH_RETURN_RECEIVED, RETURN_PAYMENT_FUNDING_REQUESTED, PAYOUT_BATCH_EXECUTED, PAYOUT_BATCH_QUOTE_EXPIRED, PAYOUT_BATCH_FUNDED, PAYOUT_BATCH_FUNDS_RETURN_REQUEST, PAYOUT_BATCH_FUNDS_RETURNED, PAYOUT_FUNDS_REQUEST, PAYOUT_FUNDS_GRANTED, PAYOUT_FUNDS_DENIED, PAYOUT_BATCH_QUOTED, PAYOUT_QUOTED, ACH_PAYMENT_RETURN_CANCELLED, RETURN_PAYMENT_CANCELLATION_REQUESTED, PAYOUT_WITHDRAWN, ORCHESTRATED_PAYMENT_BATCH_REQUESTED, ORCHESTRATED_PAYMENT_BATCH_CONFIRMED, ORCHESTRATED_PAYMENT_REQUESTED

                Removed enum values:

                * `PAYOUT_SUBMITTED`
                * `PAYOUT_COMPLETED`
                * `PAYOUT_INSTRUCTED_V3`
                * `BANK_PAYMENT_REQUESTED`
                * `SOURCE_AMOUNT_CONFIRMED`
                * `PAYMENT_SUBMITTED`
                * `PAYMENT_SUBMITTED_ACCEPTED`
                * `PAYMENT_SUBMITTED_REJECTED`
                * `PAYMENT_CONFIRMED`
                * `PAYMENT_AWAITING_FUNDS`
                * `PAYMENT_FUNDED`
                * `PAYMENT_UNFUNDED`
                * `PAYMENT_FAILED`
                * `ACH_SUBMITTED_TO_ODFI`
                * `PAYMENT_ACCEPTED_BY_RAILS`
                * `ACH_RETURN_RECEIVED`
                * `RETURN_PAYMENT_FUNDING_REQUESTED`
                * `PAYOUT_BATCH_EXECUTED`
                * `PAYOUT_BATCH_QUOTE_EXPIRED`
                * `PAYOUT_BATCH_FUNDED`
                * `PAYOUT_BATCH_FUNDS_RETURN_REQUEST`
                * `PAYOUT_BATCH_FUNDS_RETURNED`
                * `PAYOUT_FUNDS_REQUEST`
                * `PAYOUT_FUNDS_GRANTED`
                * `PAYOUT_FUNDS_DENIED`
                * `PAYOUT_BATCH_QUOTED`
                * `PAYOUT_QUOTED`
                * `ACH_PAYMENT_RETURN_CANCELLED`
                * `RETURN_PAYMENT_CANCELLATION_REQUESTED`
                * `PAYOUT_WITHDRAWN`
                * `ORCHESTRATED_PAYMENT_BATCH_REQUESTED`
                * `ORCHESTRATED_PAYMENT_BATCH_CONFIRMED`
                * `ORCHESTRATED_PAYMENT_REQUESTED`
            * Changed property `sourceCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
            * Changed property `paymentCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
        * Changed property `schedule` (object)
            > Details relating to a payout that was executed via a schedule or is still waiting to be executed

            * Changed property `scheduleStatus` (string)
                > Current status of the payout schedule. One of the following values: SCHEDULED, EXECUTED, FAILED

                Removed enum values:

                * `SCHEDULED`
                * `EXECUTED`
                * `FAILED`
##### `GET` /v4/paymentaudit/payments


###### Parameters:

Added: `railsId` in `query`
> Payout Rails ID filter - case insensitive sub-string match

Changed: `transmissionType` in `query`
> Transmission Type
> * ACH
> * SAME_DAY_ACH
> * WIRE

###### Return Type:

Changed response : **200 OK**
> Paginated list of payments

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `paymentScheme` (string)

        * Changed property `sourceCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `paymentCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `status` (string)
            > Current status of the payment. One of the following values: ACCEPTED, AWAITING_FUNDS, FUNDED, UNFUNDED, BANK_PAYMENT_REQUESTED, REJECTED, ACCEPTED_BY_RAILS, CONFIRMED, RETURNED, WITHDRAWN

            Removed enum values:

            * `ACCEPTED`
            * `AWAITING_FUNDS`
            * `FUNDED`
            * `UNFUNDED`
            * `BANK_PAYMENT_REQUESTED`
            * `REJECTED`
            * `ACCEPTED_BY_RAILS`
            * `CONFIRMED`
            * `RETURNED`
            * `WITHDRAWN`
        * Changed property `fundingStatus` (string)
            > Current funding status of the payment. One of the following values: FUNDED, INSTRUCTED, UNFUNDED

            Removed enum values:

            * `FUNDED`
            * `INSTRUCTED`
            * `UNFUNDED`
        * Changed property `events` (array)

            Changed items (object):

            * Changed property `eventType` (string)
                > One of the following values: PAYOUT_SUBMITTED, PAYOUT_COMPLETED, PAYOUT_INSTRUCTED_V3, BANK_PAYMENT_REQUESTED, SOURCE_AMOUNT_CONFIRMED, PAYMENT_SUBMITTED, PAYMENT_SUBMITTED_ACCEPTED, PAYMENT_SUBMITTED_REJECTED, PAYMENT_CONFIRMED, PAYMENT_AWAITING_FUNDS, PAYMENT_FUNDED, PAYMENT_UNFUNDED, PAYMENT_FAILED, PAYMENT_TRACKING_DETAILS_UPDATED, ACH_SUBMITTED_TO_ODFI, PAYMENT_ACCEPTED_BY_RAILS, ACH_RETURN_RECEIVED, RETURN_PAYMENT_FUNDING_REQUESTED, PAYOUT_BATCH_EXECUTED, PAYOUT_BATCH_QUOTE_EXPIRED, PAYOUT_BATCH_FUNDED, PAYOUT_BATCH_FUNDS_RETURN_REQUEST, PAYOUT_BATCH_FUNDS_RETURNED, PAYOUT_FUNDS_REQUEST, PAYOUT_FUNDS_GRANTED, PAYOUT_FUNDS_DENIED, PAYOUT_BATCH_QUOTED, PAYOUT_QUOTED, ACH_PAYMENT_RETURN_CANCELLED, RETURN_PAYMENT_CANCELLATION_REQUESTED, PAYOUT_WITHDRAWN, ORCHESTRATED_PAYMENT_BATCH_REQUESTED, ORCHESTRATED_PAYMENT_BATCH_CONFIRMED, ORCHESTRATED_PAYMENT_REQUESTED

                Removed enum values:

                * `PAYOUT_SUBMITTED`
                * `PAYOUT_COMPLETED`
                * `PAYOUT_INSTRUCTED_V3`
                * `BANK_PAYMENT_REQUESTED`
                * `SOURCE_AMOUNT_CONFIRMED`
                * `PAYMENT_SUBMITTED`
                * `PAYMENT_SUBMITTED_ACCEPTED`
                * `PAYMENT_SUBMITTED_REJECTED`
                * `PAYMENT_CONFIRMED`
                * `PAYMENT_AWAITING_FUNDS`
                * `PAYMENT_FUNDED`
                * `PAYMENT_UNFUNDED`
                * `PAYMENT_FAILED`
                * `ACH_SUBMITTED_TO_ODFI`
                * `PAYMENT_ACCEPTED_BY_RAILS`
                * `ACH_RETURN_RECEIVED`
                * `RETURN_PAYMENT_FUNDING_REQUESTED`
                * `PAYOUT_BATCH_EXECUTED`
                * `PAYOUT_BATCH_QUOTE_EXPIRED`
                * `PAYOUT_BATCH_FUNDED`
                * `PAYOUT_BATCH_FUNDS_RETURN_REQUEST`
                * `PAYOUT_BATCH_FUNDS_RETURNED`
                * `PAYOUT_FUNDS_REQUEST`
                * `PAYOUT_FUNDS_GRANTED`
                * `PAYOUT_FUNDS_DENIED`
                * `PAYOUT_BATCH_QUOTED`
                * `PAYOUT_QUOTED`
                * `ACH_PAYMENT_RETURN_CANCELLED`
                * `RETURN_PAYMENT_CANCELLATION_REQUESTED`
                * `PAYOUT_WITHDRAWN`
                * `ORCHESTRATED_PAYMENT_BATCH_REQUESTED`
                * `ORCHESTRATED_PAYMENT_BATCH_CONFIRMED`
                * `ORCHESTRATED_PAYMENT_REQUESTED`
            * Changed property `sourceCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
            * Changed property `paymentCurrency` (string)
                > ISO 3 character currency code

                Removed enum values:

                * `USD`
                * `GBP`
                * `EUR`
        * Changed property `schedule` (object)
            > Details relating to a payout that was executed via a schedule or is still waiting to be executed

            * Changed property `scheduleStatus` (string)
                > Current status of the payout schedule. One of the following values: SCHEDULED, EXECUTED, FAILED

                Removed enum values:

                * `SCHEDULED`
                * `EXECUTED`
                * `FAILED`
##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`

    * Added property `paymentScheme` (string)

    * Changed property `sourceCurrency` (string)
        > ISO 3 character currency code

        Removed enum values:

        * `USD`
        * `GBP`
        * `EUR`
    * Changed property `paymentCurrency` (string)
        > ISO 3 character currency code

        Removed enum values:

        * `USD`
        * `GBP`
        * `EUR`
    * Changed property `status` (string)
        > Current status of the payment. One of the following values: ACCEPTED, AWAITING_FUNDS, FUNDED, UNFUNDED, BANK_PAYMENT_REQUESTED, REJECTED, ACCEPTED_BY_RAILS, CONFIRMED, RETURNED, WITHDRAWN

        Removed enum values:

        * `ACCEPTED`
        * `AWAITING_FUNDS`
        * `FUNDED`
        * `UNFUNDED`
        * `BANK_PAYMENT_REQUESTED`
        * `REJECTED`
        * `ACCEPTED_BY_RAILS`
        * `CONFIRMED`
        * `RETURNED`
        * `WITHDRAWN`
    * Changed property `fundingStatus` (string)
        > Current funding status of the payment. One of the following values: FUNDED, INSTRUCTED, UNFUNDED

        Removed enum values:

        * `FUNDED`
        * `INSTRUCTED`
        * `UNFUNDED`
    * Changed property `events` (array)

        Changed items (object):

        * Changed property `eventType` (string)
            > One of the following values: PAYOUT_SUBMITTED, PAYOUT_COMPLETED, PAYOUT_INSTRUCTED_V3, BANK_PAYMENT_REQUESTED, SOURCE_AMOUNT_CONFIRMED, PAYMENT_SUBMITTED, PAYMENT_SUBMITTED_ACCEPTED, PAYMENT_SUBMITTED_REJECTED, PAYMENT_CONFIRMED, PAYMENT_AWAITING_FUNDS, PAYMENT_FUNDED, PAYMENT_UNFUNDED, PAYMENT_FAILED, PAYMENT_TRACKING_DETAILS_UPDATED, ACH_SUBMITTED_TO_ODFI, PAYMENT_ACCEPTED_BY_RAILS, ACH_RETURN_RECEIVED, RETURN_PAYMENT_FUNDING_REQUESTED, PAYOUT_BATCH_EXECUTED, PAYOUT_BATCH_QUOTE_EXPIRED, PAYOUT_BATCH_FUNDED, PAYOUT_BATCH_FUNDS_RETURN_REQUEST, PAYOUT_BATCH_FUNDS_RETURNED, PAYOUT_FUNDS_REQUEST, PAYOUT_FUNDS_GRANTED, PAYOUT_FUNDS_DENIED, PAYOUT_BATCH_QUOTED, PAYOUT_QUOTED, ACH_PAYMENT_RETURN_CANCELLED, RETURN_PAYMENT_CANCELLATION_REQUESTED, PAYOUT_WITHDRAWN, ORCHESTRATED_PAYMENT_BATCH_REQUESTED, ORCHESTRATED_PAYMENT_BATCH_CONFIRMED, ORCHESTRATED_PAYMENT_REQUESTED

            Removed enum values:

            * `PAYOUT_SUBMITTED`
            * `PAYOUT_COMPLETED`
            * `PAYOUT_INSTRUCTED_V3`
            * `BANK_PAYMENT_REQUESTED`
            * `SOURCE_AMOUNT_CONFIRMED`
            * `PAYMENT_SUBMITTED`
            * `PAYMENT_SUBMITTED_ACCEPTED`
            * `PAYMENT_SUBMITTED_REJECTED`
            * `PAYMENT_CONFIRMED`
            * `PAYMENT_AWAITING_FUNDS`
            * `PAYMENT_FUNDED`
            * `PAYMENT_UNFUNDED`
            * `PAYMENT_FAILED`
            * `ACH_SUBMITTED_TO_ODFI`
            * `PAYMENT_ACCEPTED_BY_RAILS`
            * `ACH_RETURN_RECEIVED`
            * `RETURN_PAYMENT_FUNDING_REQUESTED`
            * `PAYOUT_BATCH_EXECUTED`
            * `PAYOUT_BATCH_QUOTE_EXPIRED`
            * `PAYOUT_BATCH_FUNDED`
            * `PAYOUT_BATCH_FUNDS_RETURN_REQUEST`
            * `PAYOUT_BATCH_FUNDS_RETURNED`
            * `PAYOUT_FUNDS_REQUEST`
            * `PAYOUT_FUNDS_GRANTED`
            * `PAYOUT_FUNDS_DENIED`
            * `PAYOUT_BATCH_QUOTED`
            * `PAYOUT_QUOTED`
            * `ACH_PAYMENT_RETURN_CANCELLED`
            * `RETURN_PAYMENT_CANCELLATION_REQUESTED`
            * `PAYOUT_WITHDRAWN`
            * `ORCHESTRATED_PAYMENT_BATCH_REQUESTED`
            * `ORCHESTRATED_PAYMENT_BATCH_CONFIRMED`
            * `ORCHESTRATED_PAYMENT_REQUESTED`
        * Changed property `sourceCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
        * Changed property `paymentCurrency` (string)
            > ISO 3 character currency code

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
    * Changed property `schedule` (object)
        > Details relating to a payout that was executed via a schedule or is still waiting to be executed

        * Changed property `scheduleStatus` (string)
            > Current status of the payout schedule. One of the following values: SCHEDULED, EXECUTED, FAILED

            Removed enum values:

            * `SCHEDULED`
            * `EXECUTED`
            * `FAILED`
##### `GET` /v4/paymentaudit/fundings


###### Return Type:

Changed response : **200 OK**
> Get Fundings normal response

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `status` (string)
            > Status of the funding. One of the following values: PENDING, FAILED, CREDIT, DEBIT

            Removed enum values:

            * `PENDING`
            * `FAILED`
            * `CREDIT`
            * `DEBIT`
        * Changed property `fundingType` (string)
            > Funding type. One of the following values: ACH, WIRE, EMBEDDED, BANK_TRANSFER

            Removed enum values:

            * `ACH`
            * `WIRE`
            * `EMBEDDED`
        * Changed property `events` (array)

            Changed items (object):

            * Changed property `fundingEventType` (string)
                > Funding event type. One of the following values: PAYOR_FUNDING_DETECTED, PAYOR_FUNDING_REQUESTED, PAYOR_FUNDING_RETURN_RECEIVED, FUNDING_RETURN_DETECTED, PAYOR_FUNDING_REQUEST_SUBMITTED, PAYOR_FUNDING_ENTRY_DETAIL_RECEIVED, FUNDING_DEALLOCATED

                Removed enum values:

                * `PAYOR_FUNDING_DETECTED`
                * `PAYOR_FUNDING_REQUESTED`
                * `PAYOR_FUNDING_RETURN_RECEIVED`
                * `FUNDING_RETURN_DETECTED`
                * `PAYOR_FUNDING_REQUEST_SUBMITTED`
                * `PAYOR_FUNDING_ENTRY_DETAIL_RECEIVED`
                * `FUNDING_DEALLOCATED`
        * Changed property `topupType` (string)
            > Type of top up. One of the following values: AUTOMATIC, MANUAL

            Removed enum values:

            * `AUTOMATIC`
            * `MANUAL`
##### `POST` /v3/payouts


###### Request:

Changed content type : `application/json`

* Changed property `payments` (array)

    Changed items (object):
        > Instruction for creating a payment

    * Changed property `transmissionType` (string)
        > Optionally choose a specific transmission method for the payment

        Added enum values:

        * `LOCAL`
        * `SWIFT`
Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > Create a new payout from a CSV source file and return a location header with a link to get the payout

    Changed items (object):
        > Instruction for creating a payment

    * Changed property `transmissionType` (string)
        > Optionally choose a specific transmission method for the payment

        Added enum values:

        * `LOCAL`
        * `SWIFT`
##### `GET` /v3/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> Details of Payout

* Changed content type : `application/json`

    * Changed property `fxSummaries` (array)

        Changed items (object):

        * Changed property `fundingStatus` (string)
            > Current status of the funding associated with this quote. One of the following values: UNFUNDED, INSTRUCTED, FUNDED

            Removed enum values:

            * `UNFUNDED`
            * `INSTRUCTED`
            * `FUNDED`
        * Changed property `status` (string)
            > Current status of the fx quote. One of the following values: UNQUOTED, QUOTED, EXPIRED, EXECUTED, REJECTED

            Removed enum values:

            * `UNQUOTED`
            * `QUOTED`
            * `EXPIRED`
            * `EXECUTED`
            * `REJECTED`
    * Changed property `acceptedPayments` (array)

        Changed items (object):

        New required properties:
        - `railsId`

        * Added property `railsId` (string)

    * Changed property `schedule` (object)
        > Details relating to a payout that was executed via a schedule or is still waiting to be executed

        * Changed property `scheduleStatus` (string)
            > The current status of the payout schedule. One of the following values: SCHEDULED, EXECUTED, FAILED

            Removed enum values:

            * `SCHEDULED`
            * `EXECUTED`
            * `FAILED`
##### `POST` /v3/payouts/{payoutId}/quote


###### Return Type:

Changed response : **200 OK**
> Quote for payout

* Changed content type : `application/json`

    * Changed property `fxSummaries` (array)

        Changed items (object):

        * Changed property `fundingStatus` (string)
            > Current status of the funding associated with this quote. One of the following values: UNFUNDED, INSTRUCTED, FUNDED

            Removed enum values:

            * `UNFUNDED`
            * `INSTRUCTED`
            * `FUNDED`
        * Changed property `status` (string)
            > Current status of the fx quote. One of the following values: UNQUOTED, QUOTED, EXPIRED, EXECUTED, REJECTED

            Removed enum values:

            * `UNQUOTED`
            * `QUOTED`
            * `EXPIRED`
            * `EXECUTED`
            * `REJECTED`
##### `GET` /v3/payouts/{payoutId}/payments


###### Return Type:

Changed response : **200 OK**
> Payments for payout

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `railsId` (string)
            > Indicates the 3rd party system involved in making this payment

        * Changed property `status` (string)
            > Current status of payment. One of the following values: SUBMITTED, ACCEPTED, REJECTED, WITHDRAWN, RETURNED, AWAITING_FUNDS, FUNDED, UNFUNDED, CANCELLED, REQUESTED

            Removed enum values:

            * `SUBMITTED`
            * `ACCEPTED`
            * `REJECTED`
            * `WITHDRAWN`
            * `RETURNED`
            * `AWAITING_FUNDS`
            * `FUNDED`
            * `UNFUNDED`
            * `CANCELLED`
            * `REQUESTED`
        * Changed property `transmissionType` (string)
            > The transmission method of the payment. One of the following values: ACH, SAME_DAY_ACH, WIRE, LOCAL, SWIFT

            Removed enum values:

            * `SAME_DAY_ACH`
            * `WIRE`
            * `ACH`
