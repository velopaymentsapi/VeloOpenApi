#### What's Changed
---

##### `POST` /v1/authenticate


###### Return Type:

Changed response : **200 OK**
> Valid Authenication response

* Changed content type : `application/json`

    * Changed property `access_token` (string -> string)

##### `GET` /v2/payors/{payorId}


###### Return Type:

Changed response : **200 OK**
> Get Payor Details

* Changed content type : `application/json`

    * Added property `usdTxnValueReportingThreshold` (integer)
        > USD in minor units

    * Added property `managingPayees` (boolean)

##### `GET` /v3/payees/{payeeId}


###### Return Type:

Changed response : **200 OK**
> Success response, request completed okay

* Changed content type : `application/json`

    * Changed property `country` (string)
        > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

    * Changed property `address` (object)

        * Changed property `country` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

##### `GET` /v3/payees


###### Return Type:

Changed response : **200 OK**
> Details of Payee

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `country` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

##### `POST` /v3/payees


###### Request:

Changed content type : `application/json`

* Changed property `payees` (array)

    Changed items (object):

    * Changed property `paymentChannel` (object)

        * Changed property `iban` (string)
            > Must match the regular expression ```^[A-Za-z0-9]+$```.

        * Changed property `countryCode` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
        * Changed property `currency` (string)
            > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > CSV File of payee data

    Changed items (object):

    * Changed property `addressCountry` (string)
        > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
    * Changed property `paymentChannelCountryCode` (string)
        > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
##### `GET` /v3/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status

* Changed content type : `application/json`

    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Changed property `paymentChannel` (object)

                * Changed property `iban` (string)
                    > Must match the regular expression ```^[A-Za-z0-9]+$```.

                * Changed property `countryCode` (string)
                    > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
                * Changed property `currency` (string)
                    > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

                    Removed enum values:

                    * `USD`
                    * `GBP`
                    * `EUR`
##### `POST` /v3/payees/{payeeId}/payeeDetailsUpdate


###### Request:

Changed content type : `application/json`

* Changed property `address` (object)

    * Changed property `country` (string)
        > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

##### `GET` /v4/payees


###### Return Type:

Changed response : **200 OK**
> Details of Payee

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `country` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

##### `POST` /v4/payees


###### Request:

Changed content type : `application/json`

* Changed property `payees` (array)

    Changed items (object):

    * Changed property `address` (object)

        * Changed property `country` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
    * Changed property `paymentChannel` (object)

        * Changed property `iban` (string)
            > Must match the regular expression ```^[A-Za-z0-9]+$```.

        * Changed property `countryCode` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
        * Changed property `currency` (string)
            > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

            Removed enum values:

            * `USD`
            * `GBP`
            * `EUR`
Changed content type : `multipart/form-data`

* Changed property `file` (array)
    > CSV File of payee data

    Changed items (object):

    * Changed property `addressCountry` (string)
        > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
    * Changed property `paymentChannelCountryCode` (string)
        > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
##### `GET` /v4/payees/batch/{batchId}


###### Return Type:

Changed response : **200 OK**
> Get Batch Status

* Changed content type : `application/json`

    * Changed property `failures` (array)

        Changed items (object):

        * Changed property `failedSubmission` (object)

            * Changed property `address` (object)

                * Changed property `country` (string)
                    > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
            * Changed property `paymentChannel` (object)

                * Changed property `iban` (string)
                    > Must match the regular expression ```^[A-Za-z0-9]+$```.

                * Changed property `countryCode` (string)
                    > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

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
                * Changed property `currency` (string)
                    > Valid ISO 4217 3 letter currency code. See the <a href="https://www.iso.org/iso-4217-currency-codes.html" target="_blank" a>ISO specification</a> for details.

                    Removed enum values:

                    * `USD`
                    * `GBP`
                    * `EUR`
##### `GET` /v4/payees/deltas


###### Return Type:

Changed response : **200 OK**
> Details of Payee Changes

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `payeeCountry` (string)
            > Valid ISO 3166 2 character country code. See the <a href="https://www.iso.org/iso-3166-country-codes.html" target="_blank" a>ISO specification</a> for details.

##### `GET` /v4/paymentaudit/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `events` (array)

            Changed items (object):

            * Added property `scheduledAt` (string)

            * Added property `scheduledFor` (string)

            * Added property `scheduledBy` (string)
                > Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application.

##### `GET` /v4/paymentaudit/payments


###### Return Type:

Changed response : **200 OK**
> Paginated list of payments

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Changed property `events` (array)

            Changed items (object):

            * Added property `scheduledAt` (string)

            * Added property `scheduledFor` (string)

            * Added property `scheduledBy` (string)
                > Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application.

##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`

    * Changed property `events` (array)

        Changed items (object):

        * Added property `scheduledAt` (string)

        * Added property `scheduledFor` (string)

        * Added property `scheduledBy` (string)
            > Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application.

