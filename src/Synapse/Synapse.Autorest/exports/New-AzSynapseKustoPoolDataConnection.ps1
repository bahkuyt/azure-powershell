
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Creates or updates a data connection.
.Description
Creates or updates a data connection.
.Example
PS C:\> New-AzSynapseKustoPoolDataConnection -ResourceGroupName testrg -WorkspaceName testws -KustoPoolName testkustopool -DatabaseName testdatabase -Name eventhubdc -Location eastus2 -Kind EventHub -EventHubResourceId "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/testeventhubns/eventhubs/testeventhub" -DataFormat "JSON" -ConsumerGroup '$Default' -Compression "None" -TableName "Events" -MappingRuleName "EventsMapping"

Kind     Location  Name                                            
----     --------  ----                                            
EventHub East US 2 testws/testkustopool/testdatabase/eventhubdc
.Example
PS C:\> New-AzSynapseKustoPoolDataConnection -ResourceGroupName testrg -WorkspaceName testws -KustoPoolName testkustopool -DatabaseName testdatabase -Name eventgriddc -Location eastus2 -Kind EventGrid -EventHubResourceId "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/testeventhubns/eventhubs/testeventhub" -StorageAccountResourceId "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Storage/storageAccounts/teststorage" -DataFormat "JSON" -ConsumerGroup '$Default' -TableName "Events" -MappingRuleName "EventsMapping" -IgnoreFirstRecord -BlobStorageEventType "Microsoft.Storage.BlobRenamed"

Kind      Location  Name
----      --------  ----                                              
EventGrid East US 2 testws/testkustopool/testdatabase/eventgriddc
.Example
PS C:\> New-AzSynapseKustoPoolDataConnection -ResourceGroupName testrg -WorkspaceName testws -KustoPoolName testkustopool -DatabaseName testdatabase -Name iothubdc -Location eastus2 -Kind IotHub -IotHubResourceId "/subscriptions/051ddeca-1ed6-4d8b-ba6f-1ff561e5f3b3/resourceGroups/ywtest/providers/Microsoft.Devices/IotHubs/ywtestiothub" -SharedAccessPolicyName registryRead -DataFormat "JSON" -ConsumerGroup '$Default' -TableName "Events" -MappingRuleName "EventsMapping"

Kind   Location  Name 
----   --------  ----                                           
IotHub East US 2 testws/testkustopool/testdatabase/iothubdc

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Synapse.Models.Api20210601Preview.IDataConnection
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Synapse.Models.Api20210601Preview.IDataConnection
.Link
https://learn.microsoft.com/powershell/module/az.synapse/new-azsynapsekustopooldataconnection
#>
function New-AzSynapseKustoPoolDataConnection {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Synapse.Models.Api20210601Preview.IDataConnection])]
[CmdletBinding(DefaultParameterSetName='CreateExpandedEventHub', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('Name')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Path')]
    [System.String]
    # The name of the data connection.
    ${DataConnectionName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Path')]
    [System.String]
    # The name of the database in the Kusto pool.
    ${DatabaseName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Path')]
    [System.String]
    # The name of the Kusto pool.
    ${KustoPoolName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Path')]
    [System.String]
    # The name of the workspace
    ${WorkspaceName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(Mandatory)]
    [ArgumentCompleter({ param ( $CommandName, $ParameterName, $WordToComplete, $CommandAst, $FakeBoundParameters ) return @('EventHub', 'EventGrid', 'IotHub') })]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Support.DataConnectionKind]
    # Kind of the endpoint for the data connection
    ${Kind},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String]
    # The event/iot hub consumer group.
    ${ConsumerGroup},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String]
    # Resource location.
    ${Location},

    [Parameter(ParameterSetName='CreateExpandedEventHub', Mandatory)]
    [Parameter(ParameterSetName='CreateExpandedEventGrid', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String]
    # The resource ID of the event hub to be used to create a data connection / event grid is configured to send events.
    ${EventHubResourceId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Support.EventGridDataFormat]
    # The data format of the message.
    # Optionally the data format can be added to each message.
    ${DataFormat},

    [Parameter(ParameterSetName='CreateExpandedEventHub')]
    [Parameter(ParameterSetName='CreateExpandedIotHub')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String[]]
    # System properties of the event/iot hub.
    ${EventSystemProperty},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String]
    # The mapping rule to be used to ingest the data.
    # Optionally the mapping information can be added to each message.
    ${MappingRuleName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String]
    # The table where the data should be ingested.
    # Optionally the table information can be added to each message.
    ${TableName},

    [Parameter(ParameterSetName='CreateExpandedEventHub')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Support.Compression]
    # The event hub messages compression type.
    ${Compression},

    [Parameter(ParameterSetName='CreateExpandedEventGrid', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String]
    # The resource ID of the storage account where the data resides.
    ${StorageAccountResourceId},

    [Parameter(ParameterSetName='UpdateViaIdentityExpandedEventGrid')]
    [Parameter(ParameterSetName='UpdateExpandedEventGrid')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Support.BlobStorageEventType]
    # The name of blob storage event type to process.
    ${BlobStorageEventType},

    [Parameter(ParameterSetName='UpdateViaIdentityExpandedEventGrid')]
    [Parameter(ParameterSetName='UpdateExpandedEventGrid')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # If set to true, indicates that ingestion should ignore the first record of every file.
    ${IgnoreFirstRecord},

    [Parameter(ParameterSetName='CreateExpandedIotHub', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String]
    # The resource ID of the Iot hub to be used to create a data connection.
    ${IotHubResourceId},

    [Parameter(ParameterSetName='CreateExpandedIotHub', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Body')]
    [System.String]
    # The name of the share access policy.
    ${SharedAccessPolicyName},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            CreateExpandedEventHub = 'Az.Synapse.custom\New-AzSynapseKustoPoolDataConnection';
            CreateExpandedEventGrid = 'Az.Synapse.custom\New-AzSynapseKustoPoolDataConnection';
            UpdateViaIdentityExpandedEventGrid = 'Az.Synapse.custom\New-AzSynapseKustoPoolDataConnection';
            UpdateExpandedEventGrid = 'Az.Synapse.custom\New-AzSynapseKustoPoolDataConnection';
            CreateExpandedIotHub = 'Az.Synapse.custom\New-AzSynapseKustoPoolDataConnection';
        }
        if (('CreateExpandedEventHub', 'CreateExpandedEventGrid', 'UpdateViaIdentityExpandedEventGrid', 'UpdateExpandedEventGrid', 'CreateExpandedIotHub') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Synapse.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
