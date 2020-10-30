==========================================================================
==                            API CHANGE LOG                            ==
==========================================================================
                            Velo Payments APIs                            
--------------------------------------------------------------------------
--                            What's Deleted                            --
--------------------------------------------------------------------------
- POST   /v1/webhooks/{webhookId}/ping

--------------------------------------------------------------------------
--                            What's Changed                            --
--------------------------------------------------------------------------
- POST   /v1/logout
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/password/reset
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/validate
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/users
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/users/{userId}
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- DELETE /v2/users/{userId}
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/{userId}/disable
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/{userId}/enable
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/invite
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 412 Precondition Failed
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/{userId}/roleUpdate
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/{userId}/mfa/unregister
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/{userId}/tokens
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/{userId}/unlock
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/{userId}/userDetailsUpdate
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/registration/sms
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/users/self
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/self/userDetailsUpdate
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/self/mfa/unregister
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/self/password
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/users/self/password/validate
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/payors/{payorId}
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/payors/{payorId}
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Backward compatible
- POST   /v1/payors/{payorId}/applications
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/payors/{payorId}/applications/{applicationId}/keys
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/payors/{payorId}/reminderEmailsUpdate
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Backward compatible
- POST   /v1/payors/{payorId}/branding/logos
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/payors/{payorId}/branding
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Backward compatible
- GET    /v1/payorLinks
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/payorLinks
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/payees/{payeeId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- GET    /v1/payees
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- POST   /v1/payees/{payeeId}/invite
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/payees/payors/{payorId}/invitationStatus
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/payees/{payeeId}/remoteIdUpdate
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/payees/{payeeId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- POST   /v2/payees
  Request:
        - Changed application/json
          Schema: Broken compatibility
        - Changed multipart/form-data
          Schema: Broken compatibility
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/payees/batch/{batchId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/payees/payors/{payorId}/invitationStatus
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/payees/{payeeId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- GET    /v3/payees
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/payees
  Request:
        - Changed application/json
          Schema: Broken compatibility
        - Changed multipart/form-data
          Schema: Broken compatibility
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/payees/batch/{batchId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/payees/{payeeId}/invite
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/payees/payors/{payorId}/invitationStatus
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/payees/{payeeId}/remoteIdUpdate
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/payees/{payeeId}/payeeDetailsUpdate
  Request:
        - Changed application/json
          Schema: Broken compatibility
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/payees/{payeeId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
- POST   /v4/payees/{payeeId}/payeeDetailsUpdate
  Request:
        - Changed application/json
          Schema: Broken compatibility
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v4/payees/{payeeId}/remoteIdUpdate
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/payees
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v4/payees
  Request:
        - Changed application/json
          Schema: Broken compatibility
        - Changed multipart/form-data
          Schema: Broken compatibility
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/payees/batch/{batchId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v4/payees/{payeeId}/invite
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/payees/payors/{payorId}/invitationStatus
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/sourceAccounts
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/sourceAccounts/{sourceAccountId}
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/sourceAccounts/{sourceAccountId}/achFundingRequest
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/sourceAccounts/{sourceAccountId}/notifications
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/sourceAccounts/{sourceAccountId}/fundingRequest
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/sourceAccounts
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/sourceAccounts/{sourceAccountId}
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/sourceAccounts/{sourceAccountId}/transfers
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/fundingAccounts
  Return Type:
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/fundingAccounts/{fundingAccountId}
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/fundingAccounts
  Return Type:
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v2/fundingAccounts
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v2/fundingAccounts/{fundingAccountId}
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/sourceAccounts/{sourceAccountId}/fundingRequest
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/sourceAccounts
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/sourceAccounts/{sourceAccountId}
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/sourceAccounts/{sourceAccountId}/transfers
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/deltas/fundings
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/paymentaudit/fundings
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/paymentaudit/payoutStatistics
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/paymentaudit/payouts
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/paymentaudit/payouts/{payoutId}
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/paymentaudit/payments
  Return Type:
    - Changed 200 OK
      Media types:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/paymentaudit/payments/{paymentId}
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/paymentaudit/transactions
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/csv
          Schema: Broken compatibility
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/payouts
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/payouts/{payoutId}
  Parameter:
    - Add transmissionType in query
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/payments
  Parameter:
    - Add transmissionType in query
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/payments/{paymentId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/fundings
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/payoutStatistics
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v4/paymentaudit/transactions
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/csv
          Schema: Broken compatibility
- POST   /v3/payouts
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/payouts/{payoutId}
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/payouts/{payoutId}
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- DELETE /v3/payouts/{payoutId}
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v3/payouts/{payoutId}/quote
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 409 Conflict
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v3/payouts/{payoutId}/payments
  Return Type:
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/paymentChannelRules
  Return Type:
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/payments/{paymentId}/withdraw
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/webhooks
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/webhooks
  Request:
        - Changed application/json
          Schema: Backward compatible
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- GET    /v1/webhooks/{webhookId}
  Return Type:
    - Changed 200 OK
      Media types:
        - Changed application/json
          Schema: Backward compatible
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
- POST   /v1/webhooks/{webhookId}
  Request:
        - Changed application/json
          Schema: Backward compatible
  Return Type:
    - Changed 400 Bad Request
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 401 Unauthorized
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 403 Forbidden
      Media types:
        - Changed application/json
          Schema: Broken compatibility
    - Changed 404 Not Found
      Media types:
        - Changed application/json
          Schema: Broken compatibility
--------------------------------------------------------------------------
--                                Result                                --
--------------------------------------------------------------------------
                 API changes broke backward compatibility                 
--------------------------------------------------------------------------

