// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Deployment Manager API (manager/v1beta2)
// Description:
//   The Deployment Manager API allows users to declaratively configure, deploy
//   and run complex solutions on the Google Cloud Platform.
// Documentation:
//   https://developers.google.com/deployment-manager/

#import "GTLRManagerObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRManager_AccessConfig
//

@implementation GTLRManager_AccessConfig
@dynamic name, natIp, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_Action
//

@implementation GTLRManager_Action
@dynamic commands, timeoutMs;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"commands" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_AllowedRule
//

@implementation GTLRManager_AllowedRule
@dynamic IPProtocol, ports;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"ports" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_AutoscalingModule
//

@implementation GTLRManager_AutoscalingModule
@dynamic coolDownPeriodSec, descriptionProperty, maxNumReplicas, minNumReplicas,
         signalType, targetModule, targetUtilization;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_AutoscalingModuleStatus
//

@implementation GTLRManager_AutoscalingModuleStatus
@dynamic autoscalingConfigUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_Deployment
//

@implementation GTLRManager_Deployment
@dynamic creationDate, descriptionProperty, modules, name, overrides, state,
         templateName;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"overrides" : [GTLRManager_ParamOverride class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_DeploymentModules
//

@implementation GTLRManager_DeploymentModules

+ (Class)classForAdditionalProperties {
  return [GTLRManager_ModuleStatus class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_DeploymentsListResponse
//

@implementation GTLRManager_DeploymentsListResponse
@dynamic nextPageToken, resources;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resources" : [GTLRManager_Deployment class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"resources";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_DeployState
//

@implementation GTLRManager_DeployState
@dynamic details, status;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_DiskAttachment
//

@implementation GTLRManager_DiskAttachment
@dynamic deviceName, index;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_EnvVariable
//

@implementation GTLRManager_EnvVariable
@dynamic hidden, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ExistingDisk
//

@implementation GTLRManager_ExistingDisk
@dynamic attachment, source;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_FirewallModule
//

@implementation GTLRManager_FirewallModule
@dynamic allowed, descriptionProperty, network, sourceRanges, sourceTags,
         targetTags;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"allowed" : [GTLRManager_AllowedRule class],
    @"sourceRanges" : [NSString class],
    @"sourceTags" : [NSString class],
    @"targetTags" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_FirewallModuleStatus
//

@implementation GTLRManager_FirewallModuleStatus
@dynamic firewallUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_HealthCheckModule
//

@implementation GTLRManager_HealthCheckModule
@dynamic checkIntervalSec, descriptionProperty, healthyThreshold, host, path,
         port, timeoutSec, unhealthyThreshold;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_HealthCheckModuleStatus
//

@implementation GTLRManager_HealthCheckModuleStatus
@dynamic healthCheckUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_LbModule
//

@implementation GTLRManager_LbModule
@dynamic descriptionProperty, healthChecks, ipAddress, ipProtocol, portRange,
         sessionAffinity, targetModules;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"healthChecks" : [NSString class],
    @"targetModules" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_LbModuleStatus
//

@implementation GTLRManager_LbModuleStatus
@dynamic forwardingRuleUrl, targetPoolUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_Metadata
//

@implementation GTLRManager_Metadata
@dynamic fingerPrint, items;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRManager_MetadataItem class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_MetadataItem
//

@implementation GTLRManager_MetadataItem
@dynamic key, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_Module
//

@implementation GTLRManager_Module
@dynamic autoscalingModule, firewallModule, healthCheckModule, lbModule,
         networkModule, replicaPoolModule, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ModuleStatus
//

@implementation GTLRManager_ModuleStatus
@dynamic autoscalingModuleStatus, firewallModuleStatus, healthCheckModuleStatus,
         lbModuleStatus, networkModuleStatus, replicaPoolModuleStatus, state,
         type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_NetworkInterface
//

@implementation GTLRManager_NetworkInterface
@dynamic accessConfigs, name, network, networkIp;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"accessConfigs" : [GTLRManager_AccessConfig class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_NetworkModule
//

@implementation GTLRManager_NetworkModule
@dynamic descriptionProperty, gatewayIPv4, IPv4Range;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_NetworkModuleStatus
//

@implementation GTLRManager_NetworkModuleStatus
@dynamic networkUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_NewDisk
//

@implementation GTLRManager_NewDisk
@dynamic attachment, autoDelete, boot, initializeParams;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_NewDiskInitializeParams
//

@implementation GTLRManager_NewDiskInitializeParams
@dynamic diskSizeGb, diskType, sourceImage;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ParamOverride
//

@implementation GTLRManager_ParamOverride
@dynamic path, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ReplicaPoolModule
//

@implementation GTLRManager_ReplicaPoolModule
@dynamic envVariables, healthChecks, numReplicas, replicaPoolParams,
         resourceView;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"healthChecks" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ReplicaPoolModuleEnvVariables
//

@implementation GTLRManager_ReplicaPoolModuleEnvVariables

+ (Class)classForAdditionalProperties {
  return [GTLRManager_EnvVariable class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ReplicaPoolModuleStatus
//

@implementation GTLRManager_ReplicaPoolModuleStatus
@dynamic replicaPoolUrl, resourceViewUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ReplicaPoolParams
//

@implementation GTLRManager_ReplicaPoolParams
@dynamic v1beta1;
@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ReplicaPoolParamsV1Beta1
//

@implementation GTLRManager_ReplicaPoolParamsV1Beta1
@dynamic autoRestart, baseInstanceName, canIpForward, descriptionProperty,
         disksToAttach, disksToCreate, initAction, machineType, metadata,
         networkInterfaces, onHostMaintenance, serviceAccounts, tags,
         zoneProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"zoneProperty" : @"zone"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"disksToAttach" : [GTLRManager_ExistingDisk class],
    @"disksToCreate" : [GTLRManager_NewDisk class],
    @"networkInterfaces" : [GTLRManager_NetworkInterface class],
    @"serviceAccounts" : [GTLRManager_ServiceAccount class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_ServiceAccount
//

@implementation GTLRManager_ServiceAccount
@dynamic email, scopes;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"scopes" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_Tag
//

@implementation GTLRManager_Tag
@dynamic fingerPrint, items;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_Template
//

@implementation GTLRManager_Template
@dynamic actions, descriptionProperty, modules, name;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_TemplateActions
//

@implementation GTLRManager_TemplateActions

+ (Class)classForAdditionalProperties {
  return [GTLRManager_Action class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_TemplateModules
//

@implementation GTLRManager_TemplateModules

+ (Class)classForAdditionalProperties {
  return [GTLRManager_Module class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRManager_TemplatesListResponse
//

@implementation GTLRManager_TemplatesListResponse
@dynamic nextPageToken, resources;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resources" : [GTLRManager_Template class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"resources";
}

@end