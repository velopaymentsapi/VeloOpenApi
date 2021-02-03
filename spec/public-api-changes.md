==========================================================================
==                            API CHANGE LOG                            ==
==========================================================================
                            Velo Payments APIs                            
--------------------------------------------------------------------------
--                            What's Deleted                            --
--------------------------------------------------------------------------
- GET    /v1/payees/{payeeId}
- DELETE /v1/payees/{payeeId}
- GET    /v1/payees
- POST   /v1/payees/{payeeId}/invite
- GET    /v1/payees/payors/{payorId}/invitationStatus
- POST   /v1/payees/{payeeId}/remoteIdUpdate
- GET    /v1/deltas/payees
- GET    /v2/payees/{payeeId}
- POST   /v2/payees
- GET    /v2/payees/batch/{batchId}
- GET    /v2/payees/payors/{payorId}/invitationStatus

--------------------------------------------------------------------------
--                          What's Deprecated                           --
--------------------------------------------------------------------------
- DELETE /v3/payees/{payeeId}
- GET    /v1/deltas/payments

--------------------------------------------------------------------------
--                            What's Changed                            --
--------------------------------------------------------------------------
- GET    /v2/payors/{payorId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- GET    /v3/payees/{payeeId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- DELETE /v3/payees/{payeeId}
- GET    /v3/payees
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- POST   /v3/payees
  Request:
        - Changed application/json
          Schema: Backward compatible
- GET    /v3/payees/batch/{batchId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/payees/{payeeId}/invite
- GET    /v3/payees/payors/{payorId}/invitationStatus
- GET    /v3/payees/deltas
- POST   /v3/payees/{payeeId}/remoteIdUpdate
- POST   /v3/payees/{payeeId}/payeeDetailsUpdate
  Request:
        - Changed application/json
          Schema: Backward compatible
- GET    /v4/payees/batch/{batchId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/paymentaudit/fundings
- GET    /v1/paymentaudit/payoutStatistics
- GET    /v1/deltas/payments
- GET    /v3/paymentaudit/payouts
- GET    /v3/paymentaudit/payouts/{payoutId}
- GET    /v3/paymentaudit/payments
- GET    /v3/paymentaudit/payments/{paymentId}
- GET    /v3/paymentaudit/transactions
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/csv
          Schema: Broken compatibility
- GET    /v4/paymentaudit/payouts/{payoutId}
  Parameter:
    - Add remoteSystemId in query
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/payments
  Parameter:
    - Add remoteSystemId in query
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/payments/{paymentId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/payouts
  Request:
        - Changed application/json
          Schema: Backward compatible
        - Changed multipart/form-data
          Schema: Backward compatible
- GET    /v3/payouts/{payoutId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- GET    /v3/payouts/{payoutId}/payments
  Parameter:
    - Add transmissionType in query
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
--------------------------------------------------------------------------
--                                Result                                --
--------------------------------------------------------------------------
                 API changes broke backward compatibility                 
--------------------------------------------------------------------------

