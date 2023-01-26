#### What's Deprecated
---

##### `GET` /v1/paymentChannelRules

> List Payment Channel Country Rules

##### `GET` /v2/supportedCountries

> List Supported Countries

#### What's Changed
---

##### `GET` /v4/paymentaudit/payouts/{payoutId}


###### Parameters:

Added: `railsId` in `query`
> Payout Rails ID filter - case insensitive match.
> Any value is allowed, but you should use one of the supported railsId values.
> To get this list of values, you should call the 'Get Supported Rails' endpoint.

##### `GET` /v1/paymentChannelRules


###### Return Type:

Changed response : **200 OK**
> List Payment Channel Country Rules

* Changed content type : `application/json`

    * Changed property `bank` (array)

        Changed items (object):

        * Changed property `rules` (array)
            > The rules for the given country

            Changed items (object):
                > Rules that will get applied when creating or updating a payment channel for the given country

            * Added property `description` (string)
                > An optional description, or hint, as to how the user should enter the field value.

##### `GET` /v2/supportedCountries


