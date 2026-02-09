@maxLength(11)
param storageAccountPrefix string ='bicep'
param location string = resourceGroup().location

var sta = '${storageAccountPrefix}${uniqueString(subscription().id)}'

resource sta 'Microsoft.Storage/storageAccounts@2021-01-01' = {
  name: sta
  location: location
  sku: {
    name: 'Premium_LRS'
  }
  kind: 'StorageV2'
}