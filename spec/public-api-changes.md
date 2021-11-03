#### What's New
---

##### `POST` /v3/payouts/{payoutId}/schedule

> Schedule a payout

##### `DELETE` /v3/payouts/{payoutId}/schedule

> Deschedule a payout

#### What's Changed
---

##### `GET` /v4/paymentaudit/payouts


###### Parameters:

Added: `scheduledForDateFrom` in `query`
> Filter payouts scheduled to run on or after the given date. Format is yyyy-MM-dd.

Added: `scheduledForDateTo` in `query`
> Filter payouts scheduled to run on or before the given date. Format is yyyy-MM-dd.

Added: `scheduleStatus` in `query`
> Payout Schedule Status

Changed: `sort` in `query`
> List of sort fields (e.g. ?sort=submittedDateTime:asc,instructedDateTime:asc,status:asc)
> Default is submittedDateTime:asc
> The supported sort fields are: submittedDateTime, instructedDateTime, status, totalPayments, payoutId, scheduledFor

###### Return Type:

Changed response : **200 OK**
> Payor data found

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `schedule` (object)
            > Details relating to a payout that was executed via a schedule or is still waiting to be executed

            * Property `scheduleStatus` (string)

                Enum values:

                * `SCHEDULED`
                * `EXECUTED`
                * `FAILED`
            * Property `scheduledAt` (string)

            * Property `scheduledFor` (string)

            * Property `scheduledByPrincipalId` (string)
                > ID of the user or application that scheduled the payout

            * Property `notificationsEnabled` (boolean)

            * Property `scheduledBy` (string)
                > Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application.

##### `GET` /v4/paymentaudit/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> 200 response, data found okay

* Changed content type : `application/json`

    * Changed property `summary` (object)

        * Added property `schedule` (object)
            > Details relating to a payout that was executed via a schedule or is still waiting to be executed

            * Property `scheduleStatus` (string)

                Enum values:

                * `SCHEDULED`
                * `EXECUTED`
                * `FAILED`
            * Property `scheduledAt` (string)

            * Property `scheduledFor` (string)

            * Property `scheduledByPrincipalId` (string)
                > ID of the user or application that scheduled the payout

            * Property `notificationsEnabled` (boolean)

            * Property `scheduledBy` (string)
                > Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application.

    * Changed property `content` (array)

        Changed items (object):

        * Added property `autoWithdrawnReasonCode` (string)
            > Populated with rejection reason code if the payment was withdrawn automatically at instruct time

        * Added property `schedule` (object)
            > Details relating to a payout that was executed via a schedule or is still waiting to be executed

            * Property `scheduleStatus` (string)

                Enum values:

                * `SCHEDULED`
                * `EXECUTED`
                * `FAILED`
            * Property `scheduledAt` (string)

            * Property `scheduledFor` (string)

            * Property `scheduledByPrincipalId` (string)
                > ID of the user or application that scheduled the payout

            * Property `notificationsEnabled` (boolean)

            * Property `scheduledBy` (string)
                > Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application.

##### `GET` /v4/paymentaudit/payments


###### Parameters:

Added: `scheduledForDateFrom` in `query`
> Filter payouts scheduled to run on or after the given date. Format is yyyy-MM-dd.

Added: `scheduledForDateTo` in `query`
> Filter payouts scheduled to run on or before the given date. Format is yyyy-MM-dd.

Added: `scheduleStatus` in `query`
> Payout Schedule Status

###### Return Type:

Changed response : **200 OK**
> Paginated list of payments

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `autoWithdrawnReasonCode` (string)
            > Populated with rejection reason code if the payment was withdrawn automatically at instruct time

        * Added property `schedule` (object)
            > Details relating to a payout that was executed via a schedule or is still waiting to be executed

            * Property `scheduleStatus` (string)

                Enum values:

                * `SCHEDULED`
                * `EXECUTED`
                * `FAILED`
            * Property `scheduledAt` (string)

            * Property `scheduledFor` (string)

            * Property `scheduledByPrincipalId` (string)
                > ID of the user or application that scheduled the payout

            * Property `notificationsEnabled` (boolean)

            * Property `scheduledBy` (string)
                > Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application.

##### `GET` /v4/paymentaudit/payments/{paymentId}


###### Return Type:

Changed response : **200 OK**
> 200 response, request completed okay

* Changed content type : `application/json`

    * Added property `autoWithdrawnReasonCode` (string)
        > Populated with rejection reason code if the payment was withdrawn automatically at instruct time

    * Added property `schedule` (object)
        > Details relating to a payout that was executed via a schedule or is still waiting to be executed

        * Property `scheduleStatus` (string)

            Enum values:

            * `SCHEDULED`
            * `EXECUTED`
            * `FAILED`
        * Property `scheduledAt` (string)

        * Property `scheduledFor` (string)

        * Property `scheduledByPrincipalId` (string)
            > ID of the user or application that scheduled the payout

        * Property `notificationsEnabled` (boolean)

        * Property `scheduledBy` (string)
            > Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application.

##### `GET` /v3/payouts/{payoutId}


###### Return Type:

Changed response : **200 OK**
> Details of Payout

* Changed content type : `application/json`

    * Added property `schedule` (object)
        > Details relating to a payout that was executed via a schedule or is still waiting to be executed

        * Property `scheduleStatus` (string)

            Enum values:

            * `SCHEDULED`
            * `EXECUTED`
            * `FAILED`
        * Property `scheduledAt` (string)

        * Property `scheduledFor` (string)

        * Property `scheduledByPrincipalId` (string)
            > ID of the user or application that scheduled the payout

        * Property `notificationsEnabled` (boolean)

##### `POST` /v3/payouts/{payoutId}


###### Request:
> Additional instruct payout parameters

New content type : `application/json`

##### `DELETE` /v3/payouts/{payoutId}


##### `GET` /v3/payouts/{payoutId}/payments


###### Return Type:

Changed response : **200 OK**
> Payments for payout

* Changed content type : `application/json`

    * Changed property `content` (array)

        Changed items (object):

        * Added property `autoWithdrawnReasonCode` (string)
            > Populated only if the payment was automatically withdrawn during instruction for being invalid

