// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Ad Exchange Buyer API II (adexchangebuyer2/v2beta1)
// Description:
//   Accesses the latest features for managing Ad Exchange accounts and
//   Real-Time Bidding configurations.
// Documentation:
//   https://developers.google.com/ad-exchange/buyer-rest/guides/client-access/

#import "GTLRAdExchangeBuyerIIQuery.h"

#import "GTLRAdExchangeBuyerIIObjects.h"

@implementation GTLRAdExchangeBuyerIIQuery

@dynamic fields;

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsCreate

@dynamic accountId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_Client *)object
                      accountId:(long long)accountId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"accountId" ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Client class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.create";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsGet

@dynamic accountId, clientAccountId;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(long long)clientAccountId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Client class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.get";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsCreate

@dynamic accountId, clientAccountId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_ClientUserInvitation *)object
                      accountId:(long long)accountId
                clientAccountId:(long long)clientAccountId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ClientUserInvitation class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.invitations.create";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsGet

@dynamic accountId, clientAccountId, invitationId;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(long long)clientAccountId
                      invitationId:(long long)invitationId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId", @"invitationId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations/{invitationId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.invitationId = invitationId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ClientUserInvitation class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.invitations.get";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsList

@dynamic accountId, clientAccountId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(NSString *)clientAccountId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListClientUserInvitationsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.invitations.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsList

@dynamic accountId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId {
  NSArray *pathParams = @[ @"accountId" ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListClientsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsUpdate

@dynamic accountId, clientAccountId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_Client *)object
                      accountId:(long long)accountId
                clientAccountId:(long long)clientAccountId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Client class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.update";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersGet

@dynamic accountId, clientAccountId, userId;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(long long)clientAccountId
                            userId:(long long)userId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId", @"userId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.userId = userId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ClientUser class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.users.get";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersList

@dynamic accountId, clientAccountId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(NSString *)clientAccountId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/users";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListClientUsersResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.users.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersUpdate

@dynamic accountId, clientAccountId, userId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_ClientUser *)object
                      accountId:(long long)accountId
                clientAccountId:(long long)clientAccountId
                         userId:(long long)userId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId", @"userId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.userId = userId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ClientUser class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.users.update";
  return query;
}

@end
