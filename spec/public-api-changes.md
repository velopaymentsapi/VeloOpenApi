#### What's New
---

##### `POST` /v1/webhooks/{webhookId}/ping


##### `DELETE` /v3/sourceAccounts/{sourceAccountId}

> Delete a source account by ID

#### What's Changed
---

##### `GET` /v3/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay

* Changed content type : `application/json`

    * Changed property `language` (string)
        > An IETF BCP 47 language code which has been configured for use within this Velo environment.<BR>
        > See the /v1/supportedLanguages endpoint to list the available codes for an environment.

    * Changed property `payeeType` (string)
        > The type of the payee

##### `GET` /v3/payees


###### Parameters:

Changed: `payeeType` in `query`
> The onboarded status of the payees.

###### Return Type:

Changed response : **200 OK**
> Details of Payee

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `language` (string)
            > An IETF BCP 47 language code which has been configured for use within this Velo environment.<BR>
            > See the /v1/supportedLanguages endpoint to list the available codes for an environment.

        * Changed property `payeeType` (string)
            > The type of the payee

##### `POST` /v3/payees


###### Request:

Changed content type : `application/json`

* Changed property `payees` (array)

    Changed items (object):

    * Changed property `type` (string)
        > The type of the payee

    * Changed property `language` (string)
        > An IETF BCP 47 language code which has been configured for use within this Velo environment.<BR>
        > See the /v1/supportedLanguages endpoint to list the available codes for an environment.

Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > CSV File of payee data

    Changed items (object):

    * Changed property `type` (string)
        > The type of the payee

##### `GET` /v3/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status

* Changed content type : `application/json`

    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Added property `payeeId` (string)

            * Added property `remoteId` (string)

            * Added property `type` (string)
                > The type of the payee

                Enum values:

                * `Individual`
                * `Company`
            * Added property `paymentChannel` (object)

                * Property `paymentChannelName` (string)

                * Property `iban` (string)
                    > Must match the regular expression ```^[A-Za-z0-9]+$```. Either routing number and account number or only iban must be set

                * Property `accountNumber` (string)
                    > Either routing number and account number or only iban must be set

                * Property `routingNumber` (string)
                    > Either routing number and account number or only iban must be set

                * Property `countryCode` (string)
                    > Two character country code

                    Enum values:

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
                * Property `currency` (string)

                    Enum values:

                    * `USD`
                    * `GBP`
                    * `EUR`
                * Property `accountName` (string)

            * Added property `challenge` (object)

                * Property `value` (string)

                * Property `description` (string)

            * Added property `company` (object)

                * Property `name` (string)

                * Property `taxId` (string)
                    > Company Tax Id must be between 6 and 30 characters long

                * Property `operatingName` (string)

            * Deleted property `id` (string)

            * Deleted property `onboardedStatus` (string)

            * Deleted property `paymentChannels` (array)

            * Deleted property `enhancedKycCompleted` (boolean)

            * Deleted property `pausePayment` (boolean)

            * Deleted property `disabled` (boolean)

            * Deleted property `gracePeriodEndDate` (string)

            * Deleted property `queryByExampleObject` (boolean)

            * Deleted property `payeeType` (string)
                > The type of the payee

            * Deleted property `computedName` (string)

            * Deleted property `created` (string)

            * Deleted property `termsAndConditionsAcceptanceTimestamp` (string)

            * Deleted property `hiddenMarketingOptIns` (array)

            * Deleted property `marketingOptInDecision` (boolean)

            * Deleted property `marketingOptInTimestamp` (string)

            * Deleted property `watchlistStatus` (string)

            * Deleted property `version` (integer)

            * Deleted property `name` (object)

            * Deleted property `cellphoneNumber` (string)

            * Changed property `address` (object)

                New required properties:
                - `city`
                - `country`
                - `line1`

                * Added property `line1` (string)

                * Added property `line2` (string)

                * Added property `line3` (string)

                * Added property `line4` (string)

                * Added property `city` (string)

                * Added property `countyOrProvince` (string)

                * Added property `zipOrPostcode` (string)

                * Added property `country` (string)
                    > 2 letter ISO 3166-1 country code

                    Enum values:

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
                * Deleted property `addressLine1` (string)

                * Deleted property `addressLine2` (string)

                * Deleted property `addressLine3` (string)

                * Deleted property `addressLine4` (string)

                * Deleted property `addressCity` (string)

                * Deleted property `addressCountyOrProvince` (string)

                * Deleted property `addressZipOrPostcode` (string)

                * Deleted property `addressCountry` (string)
                    > Must be a 2 character country code - per ISO 3166-1

            * Changed property `language` (string)
                > An IETF BCP 47 language code which has been configured for use within this Velo environment.<BR>
                > See the /v1/supportedLanguages endpoint to list the available codes for an environment.

            * Changed property `payorRefs` (array)

            * Changed property `individual` (object)

                New required properties:
                - `dateOfBirth`
                - `name`

                * Added property `name` (object)

                    * Property `title` (string)

                    * Property `firstName` (string)

                    * Property `otherNames` (string)

                    * Property `lastName` (string)

##### `POST` /v3/payees/{payeeId}/payeeDetailsUpdate


###### Request:

Changed content type : `application/json`

* Changed property `language` (string)
    > An IETF BCP 47 language code which has been configured for use within this Velo environment.<BR>
    > See the /v1/supportedLanguages endpoint to list the available codes for an environment.

* Changed property `payeeType` (string)
    > The type of the payee

    Added enum values:

    * `Individual`
    * `Company`
    Removed enum values:

    * `INDIVIDUAL`
    * `COMPANY`
##### `GET` /v4/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay

* Changed content type : `application/json`

    * Changed property `payeeType` (string)
        > The type of the payee

##### `POST` /v4/payees/{payeeId}/payeeDetailsUpdate


###### Request:

Changed content type : `application/json`

* Changed property `payeeType` (string)
    > The type of the payee

    Added enum values:

    * `Individual`
    * `Company`
    Removed enum values:

    * `INDIVIDUAL`
    * `COMPANY`
##### `GET` /v4/payees


###### Parameters:

Changed: `payeeType` in `query`
> The onboarded status of the payees.

###### Return Type:

Changed response : **200 OK**
> Details of Payee

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `payeeType` (string)
            > The type of the payee

##### `POST` /v4/payees


###### Request:

Changed content type : `application/json`

* Changed property `payees` (array)

    Changed items (object):

    * Changed property `type` (string)
        > The type of the payee

Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > CSV File of payee data

    Changed items (object):

    * Changed property `type` (string)
        > The type of the payee

##### `GET` /v4/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status

* Changed content type : `application/json`

    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Added property `payeeId` (string)

            * Added property `remoteId` (string)

            * Added property `type` (string)
                > The type of the payee

                Enum values:

                * `Individual`
                * `Company`
            * Added property `paymentChannel` (object)

                * Property `paymentChannelName` (string)

                * Property `iban` (string)
                    > Must match the regular expression ```^[A-Za-z0-9]+$```. Either routing number and account number or only iban must be set

                * Property `accountNumber` (string)
                    > Either routing number and account number or only iban must be set

                * Property `routingNumber` (string)
                    > Either routing number and account number or only iban must be set

                * Property `countryCode` (string)
                    > Two character country code

                    Enum values:

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
                * Property `currency` (string)

                    Enum values:

                    * `USD`
                    * `GBP`
                    * `EUR`
                * Property `accountName` (string)

            * Added property `challenge` (object)

                * Property `value` (string)

                * Property `description` (string)

            * Added property `company` (object)

                * Property `name` (string)

                * Property `taxId` (string)
                    > Company Tax Id must be between 6 and 30 characters long

                * Property `operatingName` (string)

            * Deleted property `id` (string)

            * Deleted property `onboardedStatus` (string)

            * Deleted property `paymentChannels` (array)

            * Deleted property `enhancedKycCompleted` (boolean)

            * Deleted property `pausePayment` (boolean)

            * Deleted property `disabled` (boolean)

            * Deleted property `gracePeriodEndDate` (string)

            * Deleted property `queryByExampleObject` (boolean)

            * Deleted property `payeeType` (string)
                > The type of the payee

            * Deleted property `computedName` (string)

            * Deleted property `created` (string)

            * Deleted property `termsAndConditionsAcceptanceTimestamp` (string)

            * Deleted property `hiddenMarketingOptIns` (array)

            * Deleted property `marketingOptInDecision` (boolean)

            * Deleted property `marketingOptInTimestamp` (string)

            * Deleted property `watchlistStatus` (string)

            * Deleted property `version` (integer)

            * Deleted property `name` (object)

            * Deleted property `cellphoneNumber` (string)

            * Changed property `address` (object)

                New required properties:
                - `city`
                - `country`
                - `line1`

                * Added property `line1` (string)

                * Added property `line2` (string)

                * Added property `line3` (string)

                * Added property `line4` (string)

                * Added property `city` (string)

                * Added property `countyOrProvince` (string)

                * Added property `zipOrPostcode` (string)

                * Added property `country` (string)
                    > 2 letter ISO 3166-1 country code

                    Enum values:

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
                * Deleted property `addressLine1` (string)

                * Deleted property `addressLine2` (string)

                * Deleted property `addressLine3` (string)

                * Deleted property `addressLine4` (string)

                * Deleted property `addressCity` (string)

                * Deleted property `addressCountyOrProvince` (string)

                * Deleted property `addressZipOrPostcode` (string)

                * Deleted property `addressCountry` (string)
                    > Must be a 2 character country code - per ISO 3166-1

            * Changed property `payorRefs` (array)

            * Changed property `individual` (object)

                New required properties:
                - `dateOfBirth`
                - `name`

                * Added property `name` (object)

                    * Property `title` (string)

                    * Property `firstName` (string)

                    * Property `otherNames` (string)

                    * Property `lastName` (string)

##### `GET` /v3/sourceAccounts


###### Parameters:

Added: `includeUserDeleted` in `query`
> A filter for retrieving both active accounts and user deleted ones

###### Return Type:

Changed response : **200 OK**
> List Source Account response

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `deleted` (boolean)
            > An optional flag for whether the source account has been deleted. Only present in the response if true.

        * Added property `userDeleted` (boolean)
            > An optional flag for whether the source account has been deleted by a user. Only present in the response if true.

        * Added property `deletedAt` (string)
            > An optional timestamp when the source account has been deleted. Only present in the response if deleted.

        * Deleted property `archived` (boolean)
            > A flag for whether the source account has been archived.  Only present in the response if true.

##### `GET` /v3/sourceAccounts/{sourceAccountId}


###### Return Type:

Changed response : **200 OK**
> Source account response

* Changed content type : `application/json`

    * Added property `deleted` (boolean)
        > An optional flag for whether the source account has been deleted. Only present in the response if true.

    * Added property `userDeleted` (boolean)
        > An optional flag for whether the source account has been deleted by a user. Only present in the response if true.

    * Added property `deletedAt` (string)
        > An optional timestamp when the source account has been deleted. Only present in the response if deleted.

    * Deleted property `archived` (boolean)
        > A flag for whether the source account has been archived.  Only present in the response if true.

