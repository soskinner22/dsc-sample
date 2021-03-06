# Generated with Microsoft365DSC version 1.22.309.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
    [parameter()]
    [System.Management.Automation.PSCredential]
    $Credential
)

Configuration M365TenantConfig
{
    param (
        [parameter()]
        [System.Management.Automation.PSCredential]
        $Credential
    )

    if ($null -eq $Credential)
    {
        <# Credentials #>
        $Credscertificatepassword = Get-Credential -Message "Credentials"
        $Credscredential = Get-Credential -Message "Credentials"

    }
    else
    {
        $CredsCredential = $Credential
    }

    $OrganizationName = $CredsCredential.UserName.Split('@')[1]
    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.22.309.1'

    Node localhost
    {
        AADApplication f6398e5d-a9bc-492a-ac18-8a429a845900
        {
            AppId                     = "c96de19d-7e5e-44c8-9a32-71876cfc364c";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "App-sharedsolutionit.onmicrosoft.com $OrganizationName-20220215-160800";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "03c97363-d013-4f3b-9afa-f35b478dac43";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'Analysis.All'
                Type                = 'Delegated'
                SourceAPI           = 'PowerApps-Advisor'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Analysis.All'
                Type                = 'Delegated'
                SourceAPI           = 'PowerApps-Advisor'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 97382288-6a84-43ad-bf30-4a2d3d90b9f2
        {
            AppId                     = "1b6516a0-19b3-416a-be30-d2780d78345c";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "SharePoint Online Client Extensibility Web Application Principal";
            Ensure                    = "Present";
            IdentifierUris            = @("https://microsoft.spfx3rdparty.com");
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "3e9d23ca-29a2-43b0-ba5e-6579fdd430e2";
            PublicClient              = $False;
            ReplyURLs                 = @("https://sharedsolutionit-admin.sharepoint.com/_forms/spfxsinglesignon.aspx","https://sharedsolutionit.sharepoint.com/_forms/spfxsinglesignon.aspx?redirect","https://sharedsolutionit.sharepoint.com/_forms/spfxsinglesignon.aspx","https://sharedsolutionit.sharepoint.com/");
        }
        AADApplication 9013903b-eaaf-4126-bde9-973a504ed4d1
        {
            AppId                     = "d399e430-5b67-49fc-903b-d087f240b7c7";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "SPOFunctionApp";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "3eef9cb0-a994-4255-a69b-36f34041c5c4";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'Sites.FullControl.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication b9140ca8-9190-4363-8699-d39c281fd0a4
        {
            AppId                     = "43b874ba-1839-4ccc-a893-a1b5df11a3bc";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "SPOProvisioning";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "4ce9af02-29a1-48d9-9437-1f19ec03d74f";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'User.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.FullControl.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 047eb949-aec7-4d02-b8b5-16488e654506
        {
            AppId                     = "74dd27c0-5341-4f52-b023-24a506d446d0";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "PowerPlatform-AzureDevOps";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "71ff3a4f-fe79-4003-92ae-5c2228863600";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'user_impersonation'
                Type                = 'Delegated'
                SourceAPI           = 'Dataverse'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User'
                Type                = 'Delegated'
                SourceAPI           = 'PowerApps Service'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'user_impersonation'
                Type                = 'Delegated'
                SourceAPI           = 'Windows Azure Service Management API'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Flows.Manage.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Flow Service'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Activity.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Flow Service'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Approvals.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Flow Service'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Approvals.Manage.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Flow Service'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'user_impersonation'
                Type                = 'Delegated'
                SourceAPI           = 'Azure DevOps'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 3f3d096e-8df7-4ec6-b4c0-a28766c1027d
        {
            AppId                     = "80bdc225-62d3-4d5f-b3d9-016bec5c32ee";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "SharePoint_Site_MGMT";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "7b6d9a37-09c0-4cc6-8e1a-e79e783d88f4";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Selected'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.FullControl.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Manage.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 99ff161d-4515-480e-b1bd-bd65f32cc0b7
        {
            AppId                     = "fecbb298-35e0-4c1b-b3ec-914171cd6b6c";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "BWProvisionApp";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "8869b90d-3d6b-4e6a-b9ac-9d162fac72d2";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Directory.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'PrivilegedAccess.ReadWrite.AzureADGroup'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'GroupMember.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.Create'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.FullControl.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Manage.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Manage.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.FullControl.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 0b8bae3f-2035-47d1-8d30-b04ee098b920
        {
            AppId                     = "da5601ca-8a58-46c9-991a-6efa928fb5e5";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "P2P Server";
            Ensure                    = "Present";
            IdentifierUris            = @("urn:p2p_cert");
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "9d09ca89-f306-49f5-85a4-85d8013aadd1";
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 348b5cf4-bf31-47b1-807d-d85c316bb255
        {
            AppId                     = "6d766dff-3c3c-49c1-b73f-f7bfadc3f513";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "AZSphereTest";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "9d37a292-3b9c-4607-9be2-337ff599319c";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'user_impersonation'
                Type                = 'Delegated'
                SourceAPI           = 'Windows Azure Service Management API'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication c41c1995-2d06-4905-9c0c-7581da4c4f0c
        {
            AppId                     = "774b3ed7-7ea9-4c5a-9833-fee88efb582c";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Azure-DSC";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "b374bc0e-d4cc-42fd-9649-b005213dc522";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'DelegatedAdminRelationship.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'RoleManagement.Read.CloudPC'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'CustomSecAttributeAssignment.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'CustomSecAttributeDefinition.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ExternalConnection.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ExternalItem.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'SecurityIncident.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'SecurityAlert.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'eDiscovery.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ThreatHunting.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamworkDevice.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'IdentityRiskyServicePrincipal.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'SearchConfiguration.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'OnlineMeetingArtifact.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'AppCatalog.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamworkTag.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Selected'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'CloudPC.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ServicePrincipalEndpoint.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'AgreementAcceptance.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Agreement.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ConsentRequest.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.ReadBasic.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'RoleManagement.Read.Directory'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Organization.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Place.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Member.Read.Hidden'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementConfiguration.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementApps.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementManagedDevices.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementRBAC.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementServiceConfig.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TrustFrameworkKeySet.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Policy.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'IdentityProvider.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'AdministrativeUnit.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'InformationProtectionPolicy.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Notes.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'SecurityActions.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'SecurityEvents.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Files.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'IdentityRiskEvent.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'EduRoster.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'EduAssignments.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'EduAdministration.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'IdentityRiskyUser.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'AuditLog.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ProgramControl.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'AccessReview.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Reports.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'People.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Chat.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ChannelMessage.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'MailboxSettings.Read'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.Read'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Contacts.Read'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Directory.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Calendars.Read'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'IdentityUserFlow.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'OnlineMeetings.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'OrgContact.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamsActivity.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'PrivilegedAccess.Read.AzureAD'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'PrivilegedAccess.Read.AzureADGroup'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'PrivilegedAccess.Read.AzureResources'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ThreatIndicators.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamsApp.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Application.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'BitlockerKey.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'GroupMember.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ThreatAssessment.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Schedule.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'CallRecords.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'UserAuthenticationMethod.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamsTab.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Domain.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Device.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'UserShiftPreferences.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'EntitlementManagement.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ChannelSettings.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Team.ReadBasic.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Channel.ReadBasic.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamSettings.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamMember.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ChannelMember.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamsAppInstallation.ReadForChat.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamsAppInstallation.ReadForTeam.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamsAppInstallation.ReadForUser.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TermStore.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ShortNotes.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'RoleManagement.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'CallRecord-PstnCalls.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ChatMessage.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'APIConnectors.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ChatMember.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'CrossTenantInformation.ReadBasic.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DirectoryRecommendations.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'CrossTenantUserProfileSharing.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'SharePointTenantSettings.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication a25e5f5a-65fb-4a40-b3e8-374eb1e62feb
        {
            AppId                     = "116da558-5547-4995-b61e-5b3055213cdc";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "SharePoint Online Client Extensibility Web Application Principal Helper";
            Ensure                    = "Present";
            IdentifierUris            = @("https://microsoft.spfx3rdpartyadmin.com");
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "dc4e691f-3af7-454e-8271-c9a9991f3b36";
            PublicClient              = $False;
            ReplyURLs                 = @("https://sharedsolutionit-admin.sharepoint.com/_forms/spfxsinglesignon.aspx");
        }
        AADApplication 35ba079b-5efc-4d01-81dc-b954042c9ed1
        {
            AppId                     = "43d4238e-f612-4f7e-9238-49a04d620637";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "PnPprovisionFlow";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "fc16c223-82c5-4975-a049-56c203a829d4";
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'Group.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.FullControl.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'AllSites.FullControl'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADConditionalAccessPolicy aa964ec2-e763-45a2-af84-99986262a5f0
        {
            ApplicationEnforcedRestrictionsIsEnabled = $True;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "Extarnet";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "6b282d12-21c7-47a5-bb6e-4e694402fbad";
            IncludeApplications                      = @("00000003-0000-0ff1-ce00-000000000000");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("GuestsOrExternalUsers");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "enabledForReportingButNotEnforced";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 40e7cca2-1a71-447f-b6a2-1a55b4345e68
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "PowerPlatform";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "c9678529-fc0b-41db-90c0-20312f9a6fc1";
            IncludeApplications                      = @("7df0a125-d3be-4c96-aa54-591f83ff541c","475226c6-020e-4fb2-8a90-7a972cbfc1d4");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("john.ammerman@$OrganizationName");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADGroup b7fb167a-d9e9-4ad2-ae02-030c987383a1
        {
            Credential           = $Credscredential;
            Description          = "Current projects";
            DisplayName          = "Open Projects";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "0a6a9b27-9c85-4dd6-9809-dfcc10afef3f";
            MailEnabled          = $True;
            MailNickname         = "OpenProjects";
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup d33491f0-32d7-4b69-ab02-b79199a4517e
        {
            Credential           = $Credscredential;
            DisplayName          = "IoTCentral Guest Users";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "190ff0ad-fcdc-41de-b1bc-601020844b19";
            MailEnabled          = $False;
            MailNickname         = "1a9c40a4-e";
            SecurityEnabled      = $True;
        }
        AADGroup bfc374d7-9ff1-4dec-81cf-05514cf5e307
        {
            Credential           = $Credscredential;
            Description          = "Manage tasks, share documents, conduct project meetings and document risks and decisions with this template for general project management.";
            DisplayName          = "Olympus Property Migration";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "308e0cb8-468b-4436-92d2-8985f0191e37";
            MailEnabled          = $True;
            MailNickname         = "OlympusPropertyMigration";
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup c8647794-ff53-4dbb-a873-9df5ab64f412
        {
            Credential           = $Credscredential;
            Description          = "External File Share Test";
            DisplayName          = "External File Share Test";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "3e0d8af8-c5a9-48a2-9d6a-f340a714cb98";
            MailEnabled          = $True;
            MailNickname         = "ExternalFileShareTest";
            SecurityEnabled      = $False;
            Visibility           = "Private";
        }
        AADGroup f607e840-0e91-4989-9f92-118b2d8399b3
        {
            Credential           = $Credscredential;
            Description          = "Sunrise Test";
            DisplayName          = "Sunrise Test";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "45ab4389-a8e7-41a1-a8f5-7784ffb67f81";
            MailEnabled          = $True;
            MailNickname         = "SunriseTest";
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup b799f163-56dd-4ad8-a38a-ae1e159fab77
        {
            Credential           = $Credscredential;
            Description          = "Invoicing";
            DisplayName          = "Invoicing";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "5a1b5f13-12b1-4f38-88e4-138b6f199a08";
            MailEnabled          = $True;
            MailNickname         = "Invoicing";
            SecurityEnabled      = $False;
            Visibility           = "Private";
        }
        AADGroup 31ad2595-96f4-4656-963b-544cb270f675
        {
            Credential           = $Credscredential;
            Description          = "SharePoint Dashboard";
            DisplayName          = "SharePoint Dashboard";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "776b6356-f0b8-4103-990f-1aa2385bf9b1";
            MailEnabled          = $True;
            MailNickname         = "SharePointDashboard";
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup 574f0f62-a115-4851-88a6-4f92d46beb46
        {
            Credential           = $Credscredential;
            Description          = " ";
            DisplayName          = "Sales";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "84f4285c-83f8-4728-8b60-666982ad29be";
            MailEnabled          = $True;
            MailNickname         = "Sales";
            SecurityEnabled      = $False;
            Visibility           = "Private";
        }
        AADGroup f75f2147-5268-402b-9e06-3d04f3a5a600
        {
            Credential           = $Credscredential;
            Description          = "New Legal 3";
            DisplayName          = "New Legal 3";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "a1ef62ca-4668-4d94-8320-f288b1431388";
            MailEnabled          = $True;
            MailNickname         = "NewLegal3";
            SecurityEnabled      = $False;
            Visibility           = "Private";
        }
        AADGroup 925a3a8b-3fc4-4afd-ac11-4eeae4b9ce67
        {
            Credential           = $Credscredential;
            Description          = "This is the default group for everyone in the network";
            DisplayName          = "All Company";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "a6be1b5c-7f6e-46af-9275-a7abede1de08";
            MailEnabled          = $True;
            MailNickname         = "allcompany";
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup c411d5c7-0af7-4740-bf2f-16595ddf142f
        {
            Credential           = $Credscredential;
            Description          = "Sandbox";
            DisplayName          = "Sandbox";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "baf6bde4-df49-41a9-b82b-e897aaecfd72";
            MailEnabled          = $True;
            MailNickname         = "Sandbox";
            SecurityEnabled      = $False;
            Visibility           = "Private";
        }
        AADGroup 895ef014-2bef-4e62-882c-1cd70a1c81d1
        {
            Credential           = $Credscredential;
            Description          = "SharedSolutions";
            DisplayName          = "SharedSolutions";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "c09cdc9f-d986-41dd-bb1c-c3dbc051db8e";
            MailEnabled          = $True;
            MailNickname         = "SharedSolutions";
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup 65a563f1-2d01-4c51-a9fd-acbf2bf2ee91
        {
            Credential           = $Credscredential;
            Description          = "DevOps";
            DisplayName          = "DevOps";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "c912ed04-d14d-4dfd-bc8f-3475839beec7";
            MailEnabled          = $True;
            MailNickname         = "DevOps";
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup d951e225-728f-4102-9f87-3079d5652581
        {
            Credential           = $Credscredential;
            Description          = "New Legal Site 2";
            DisplayName          = "New Legal Site 2";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "c94c6f3e-ff01-4378-bf21-8501bd13a27c";
            MailEnabled          = $True;
            MailNickname         = "NewLegalSite2";
            SecurityEnabled      = $False;
            Visibility           = "Private";
        }
        AADGroup a080c1cf-7217-44bb-a74b-881a20a297c5
        {
            Credential           = $Credscredential;
            DisplayName          = "TestExt";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "f7b18e2d-70ea-4843-8f99-8243fe721044";
            MailEnabled          = $False;
            MailNickname         = "a72281b8-2";
            SecurityEnabled      = $True;
        }
        AADGroupsSettings 2ecf1bcd-94b5-4806-8b24-e1f7f9f57c9c
        {
            Credential           = $Credscredential;
            Ensure               = "Absent";
            IsSingleInstance     = "Yes";
        }
        AADRoleDefinition 9df62b2a-7c6f-4106-8e33-1ad99a96c311
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of Azure AD and Microsoft services that use Azure AD identities.";
            DisplayName          = "Global Administrator";
            Ensure               = "Present";
            Id                   = "62e90394-69f5-4237-9190-012177145e10";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/allProperties/allTasks","microsoft.directory/accessReviews/definitions/allProperties/allTasks","microsoft.directory/adminConsentRequestPolicy/allProperties/allTasks","microsoft.directory/administrativeUnits/allProperties/allTasks","microsoft.directory/appConsent/appConsentRequests/allProperties/read","microsoft.directory/applications/allProperties/allTasks","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/users/authenticationMethods/create","microsoft.directory/users/authenticationMethods/delete","microsoft.directory/users/authenticationMethods/standard/read","microsoft.directory/users/authenticationMethods/basic/update","microsoft.directory/authorizationPolicy/allProperties/allTasks","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.directory/connectors/create","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/create","microsoft.directory/connectorGroups/delete","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/connectorGroups/allProperties/update","microsoft.directory/contacts/allProperties/allTasks","microsoft.directory/contracts/allProperties/allTasks","microsoft.directory/customAuthenticationExtensions/allProperties/allTasks","microsoft.directory/deletedItems/delete","microsoft.directory/deletedItems/restore","microsoft.directory/devices/allProperties/allTasks","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceManagementPolicies/basic/update","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/deviceRegistrationPolicy/basic/update","microsoft.directory/directoryRoles/allProperties/allTasks","microsoft.directory/directoryRoleTemplates/allProperties/allTasks","microsoft.directory/domains/allProperties/allTasks","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/allProperties/allTasks","microsoft.directory/groupsAssignableToRoles/create","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/groupSettings/allProperties/allTasks","microsoft.directory/groupSettingTemplates/allProperties/allTasks","microsoft.directory/hybridAuthenticationPolicy/allProperties/allTasks","microsoft.directory/identityProtection/allProperties/allTasks","microsoft.directory/loginOrganizationBranding/allProperties/allTasks","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/organization/allProperties/allTasks","microsoft.directory/passwordHashSync/allProperties/allTasks","microsoft.directory/policies/allProperties/allTasks","microsoft.directory/conditionalAccessPolicies/allProperties/allTasks","microsoft.directory/crossTenantAccessPolicies/allProperties/allTasks","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/serviceAction/activateService","microsoft.directory/serviceAction/disableDirectoryFeature","microsoft.directory/serviceAction/enableDirectoryFeature","microsoft.directory/serviceAction/getAvailableExtentionProperties","microsoft.directory/servicePrincipals/allProperties/allTasks","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-company-admin","microsoft.directory/servicePrincipals/managePermissionGrantsForGroup.microsoft-all-application-permissions","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.directory/subscribedSkus/allProperties/allTasks","microsoft.directory/users/allProperties/allTasks","microsoft.directory/permissionGrantPolicies/create","microsoft.directory/permissionGrantPolicies/delete","microsoft.directory/permissionGrantPolicies/standard/read","microsoft.directory/permissionGrantPolicies/basic/update","microsoft.directory/servicePrincipalCreationPolicies/create","microsoft.directory/servicePrincipalCreationPolicies/delete","microsoft.directory/servicePrincipalCreationPolicies/standard/read","microsoft.directory/servicePrincipalCreationPolicies/basic/update","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/revoke","microsoft.directory/verifiableCredentials/configuration/contracts/create","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/update","microsoft.directory/verifiableCredentials/configuration/create","microsoft.directory/verifiableCredentials/configuration/delete","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/update","microsoft.azure.advancedThreatProtection/allEntities/allTasks","microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.cloudPC/allEntities/allProperties/allTasks","microsoft.commerce.billing/allEntities/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.edge/allEntities/allProperties/allTasks","microsoft.flow/allEntities/allTasks","microsoft.insights/allEntities/allProperties/allTasks","microsoft.intune/allEntities/allTasks","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.desktopAnalytics/allEntities/allTasks","microsoft.office365.exchange/allEntities/basic/allTasks","microsoft.office365.knowledge/contentUnderstanding/allProperties/allTasks","microsoft.office365.knowledge/contentUnderstanding/analytics/allProperties/read","microsoft.office365.knowledge/knowledgeNetwork/allProperties/allTasks","microsoft.office365.knowledge/knowledgeNetwork/topicVisibility/allProperties/allTasks","microsoft.office365.knowledge/learningSources/allProperties/allTasks","microsoft.office365.lockbox/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.network/performance/allProperties/read","microsoft.office365.protectionCenter/allEntities/allProperties/allTasks","microsoft.office365.search/content/manage","microsoft.office365.securityComplianceCenter/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.userCommunication/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.office365.yammer/allEntities/allProperties/allTasks","microsoft.powerApps/allEntities/allTasks","microsoft.powerApps.powerBI/allEntities/allTasks","microsoft.teams/allEntities/allProperties/allTasks","microsoft.virtualVisits/allEntities/allProperties/allTasks","microsoft.windows.defenderAdvancedThreatProtection/allEntities/allTasks","microsoft.windows.updatesDeployments/allEntities/allProperties/allTasks");
            TemplateId           = "62e90394-69f5-4237-9190-012177145e10";
            Version              = "1";
        }
        AADRoleDefinition 0e334eb1-f4c9-4856-8e6d-3558a647045f
        {
            Credential           = $Credscredential;
            Description          = "Default role for guest users. Can read a limited set of directory information.";
            DisplayName          = "Guest User";
            Ensure               = "Present";
            Id                   = "10dae51f-b6af-4016-8d66-8c2a99b929b3";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/standard/limitedRead","microsoft.directory/applications/owners/limitedRead","microsoft.directory/applications/policies/limitedRead","microsoft.directory/domains/standard/read","microsoft.directory/groups/standard/limitedRead","microsoft.directory/groups/appRoleAssignments/limitedRead","microsoft.directory/groups/memberOf/limitedRead","microsoft.directory/groups/members/limitedRead","microsoft.directory/groups/owners/limitedRead","microsoft.directory/groups/settings/limitedRead","microsoft.directory/organization/basicProfile/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/limitedRead","microsoft.directory/servicePrincipals/appRoleAssignments/limitedRead","microsoft.directory/servicePrincipals/standard/limitedRead","microsoft.directory/servicePrincipals/memberOf/limitedRead","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/limitedRead","microsoft.directory/servicePrincipals/owners/limitedRead","microsoft.directory/servicePrincipals/ownedObjects/limitedRead","microsoft.directory/servicePrincipals/policies/limitedRead","microsoft.directory/users/inviteGuest","microsoft.directory/users/guestBasicProfile/limitedRead","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/eligibleMemberOf/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/pendingMemberOf/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read","microsoft.directory/users/password/update");
            TemplateId           = "10dae51f-b6af-4016-8d66-8c2a99b929b3";
            Version              = "1";
        }
        AADRoleDefinition 026183bb-0827-43d2-8a40-7c4d17ddb793
        {
            Credential           = $Credscredential;
            Description          = "Restricted role for guest users. Can read a limited set of directory information.";
            DisplayName          = "Restricted Guest User";
            Ensure               = "Present";
            Id                   = "2af84b1e-32c8-42b7-82bc-daa82404023b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/standard/limitedRead","microsoft.directory/applications/owners/limitedRead","microsoft.directory/applications/policies/limitedRead","microsoft.directory/domains/standard/read","microsoft.directory/organization/basicProfile/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/limitedRead","microsoft.directory/servicePrincipals/appRoleAssignments/limitedRead","microsoft.directory/servicePrincipals/standard/limitedRead","microsoft.directory/servicePrincipals/memberOf/limitedRead","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/limitedRead","microsoft.directory/servicePrincipals/owners/limitedRead","microsoft.directory/servicePrincipals/ownedObjects/limitedRead","microsoft.directory/servicePrincipals/policies/limitedRead","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/eligibleMemberOf/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/pendingMemberOf/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read","microsoft.directory/users/password/update");
            TemplateId           = "2af84b1e-32c8-42b7-82bc-daa82404023b";
            Version              = "1";
        }
        AADRoleDefinition 300ff9d7-2f11-42f4-8a38-6420cfdad828
        {
            Credential           = $Credscredential;
            Description          = "Can invite guest users independent of the 'members can invite guests' setting.";
            DisplayName          = "Guest Inviter";
            Ensure               = "Present";
            Id                   = "95e79109-95c0-4d8e-aee3-d01accf2d47b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/inviteGuest","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read");
            TemplateId           = "95e79109-95c0-4d8e-aee3-d01accf2d47b";
            Version              = "1";
        }
        AADRoleDefinition de5236cf-9f93-4016-9ef7-b044c9f43894
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of users and groups, including resetting passwords for limited admins.";
            DisplayName          = "User Administrator";
            Ensure               = "Present";
            Id                   = "fe930be7-5e62-47db-91af-98c3a49a38b1";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/definitions.applications/allProperties/allTasks","microsoft.directory/accessReviews/definitions.directoryRoles/allProperties/read","microsoft.directory/accessReviews/definitions.entitlementManagement/allProperties/allTasks","microsoft.directory/accessReviews/definitions.groups/allProperties/update","microsoft.directory/accessReviews/definitions.groups/create","microsoft.directory/accessReviews/definitions.groups/delete","microsoft.directory/accessReviews/definitions.groups/allProperties/read","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/deletedItems.groups/restore","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/policies/standard/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/inviteGuest","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/photo/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "fe930be7-5e62-47db-91af-98c3a49a38b1";
            Version              = "1";
        }
        AADRoleDefinition d1c2e552-94d0-434d-85ac-312fb249ade3
        {
            Credential           = $Credscredential;
            Description          = "Can reset passwords for non-administrators and Helpdesk Administrators.";
            DisplayName          = "Helpdesk Administrator";
            Ensure               = "Present";
            Id                   = "729827e3-9c14-49f7-bb1b-9608f156bbb8";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/bitlockerKeys/key/read","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/password/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "729827e3-9c14-49f7-bb1b-9608f156bbb8";
            Version              = "1";
        }
        AADRoleDefinition e02081d5-0d2e-4830-ad15-8701d54c0aff
        {
            Credential           = $Credscredential;
            Description          = "Can read service health information and manage support tickets.";
            DisplayName          = "Service Support Administrator";
            Ensure               = "Present";
            Id                   = "f023fd81-a637-4b56-95fd-791ac0226033";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "f023fd81-a637-4b56-95fd-791ac0226033";
            Version              = "1";
        }
        AADRoleDefinition 905bbf9e-d1b8-4c32-ba89-5a2c736ce601
        {
            Credential           = $Credscredential;
            Description          = "Can perform common billing related tasks like updating payment information.";
            DisplayName          = "Billing Administrator";
            Ensure               = "Present";
            Id                   = "b0f54661-2d74-4c50-afa3-1ec803f12efe";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/organization/basic/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.commerce.billing/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "b0f54661-2d74-4c50-afa3-1ec803f12efe";
            Version              = "1";
        }
        AADRoleDefinition 1a34c658-9559-4f58-af2e-d178f76e3208
        {
            Credential           = $Credscredential;
            Description          = "Default role for member users. Can read all and write a limited set of directory information.";
            DisplayName          = "User";
            Ensure               = "Present";
            Id                   = "a0b1b346-4d3e-4e8b-98f8-753987be4970";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/administrativeUnits/standard/read","microsoft.directory/administrativeUnits/members/read","microsoft.directory/applications/standard/read","microsoft.directory/applications/owners/read","microsoft.directory/applications/policies/read","microsoft.directory/applications/createAsOwner","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/contacts/standard/read","microsoft.directory/contacts/memberOf/read","microsoft.directory/contracts/standard/read","microsoft.directory/devices/standard/read","microsoft.directory/devices/memberOf/read","microsoft.directory/devices/registeredOwners/read","microsoft.directory/devices/registeredUsers/read","microsoft.directory/directoryRoles/standard/read","microsoft.directory/directoryRoles/eligibleMembers/read","microsoft.directory/directoryRoles/members/read","microsoft.directory/domains/standard/read","microsoft.directory/groups/createAsOwner","microsoft.directory/groups/standard/read","microsoft.directory/groups/appRoleAssignments/read","microsoft.directory/groups/memberOf/read","microsoft.directory/groups/members/read","microsoft.directory/groups/owners/read","microsoft.directory/oAuth2PermissionGrants/standard/read","microsoft.directory/organization/standard/read","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/applicationPolicies/createAsOwner","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/roleAssignments/standard/read","microsoft.directory/roleDefinitions/standard/read","microsoft.directory/servicePrincipals/createAsOwner","microsoft.directory/servicePrincipals/authentication/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/read","microsoft.directory/servicePrincipals/appRoleAssignments/read","microsoft.directory/servicePrincipals/standard/read","microsoft.directory/servicePrincipals/memberOf/read","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/read","microsoft.directory/servicePrincipals/owners/read","microsoft.directory/servicePrincipals/ownedObjects/read","microsoft.directory/servicePrincipals/policies/read","microsoft.directory/subscribedSkus/standard/read","microsoft.directory/users/activateServicePlan","microsoft.directory/users/inviteGuest","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/extensionProperties/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/applications/verification/update","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/deletedItems.applications/delete","microsoft.directory/deletedItems.applications/restore","microsoft.directory/deletedItems.groups/restore","microsoft.directory/devices/disable","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/policies/delete","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/signInReports/allProperties/read","microsoft.directory/users/changePassword","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/basicProfile/update","microsoft.directory/users/identities/update","microsoft.directory/users/mobile/update","microsoft.directory/users/searchableDeviceKey/update","microsoft.directory/userInfos/address/read","microsoft.directory/userInfos/email/read","microsoft.directory/userInfos/openId/read","microsoft.directory/userInfos/phone/read","microsoft.directory/userInfos/profile/read");
            TemplateId           = "a0b1b346-4d3e-4e8b-98f8-753987be4970";
            Version              = "1";
        }
        AADRoleDefinition 52a015d6-2622-4209-9aa0-987eaccfdabd
        {
            Credential           = $Credscredential;
            Description          = "Do not use - not intended for general use.";
            DisplayName          = "Partner Tier1 Support";
            Ensure               = "Present";
            Id                   = "4ba39ca4-527c-499a-b93d-d9b492c50246";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/deletedItems.groups/restore","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/photo/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4ba39ca4-527c-499a-b93d-d9b492c50246";
            Version              = "1";
        }
        AADRoleDefinition bc899e7e-c6b4-4b4c-876f-3cfe8ae6fefd
        {
            Credential           = $Credscredential;
            Description          = "Do not use - not intended for general use.";
            DisplayName          = "Partner Tier2 Support";
            Ensure               = "Present";
            Id                   = "e00e864a-17c5-4a4b-9c06-f5b95a8d5bd8";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/deletedItems.groups/restore","microsoft.directory/domains/allProperties/allTasks","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/organization/basic/update","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/subscribedSkus/standard/read","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/photo/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e00e864a-17c5-4a4b-9c06-f5b95a8d5bd8";
            Version              = "1";
        }
        AADRoleDefinition 4eb9e5ce-e3d9-4dc7-be46-7850f99d905b
        {
            Credential           = $Credscredential;
            Description          = "Can read basic directory information. Commonly used to grant directory read access to applications and guests.";
            DisplayName          = "Directory Readers";
            Ensure               = "Present";
            Id                   = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/administrativeUnits/standard/read","microsoft.directory/administrativeUnits/members/read","microsoft.directory/applications/standard/read","microsoft.directory/applications/owners/read","microsoft.directory/applications/policies/read","microsoft.directory/contacts/standard/read","microsoft.directory/contacts/memberOf/read","microsoft.directory/contracts/standard/read","microsoft.directory/devices/standard/read","microsoft.directory/devices/memberOf/read","microsoft.directory/devices/registeredOwners/read","microsoft.directory/devices/registeredUsers/read","microsoft.directory/directoryRoles/standard/read","microsoft.directory/directoryRoles/eligibleMembers/read","microsoft.directory/directoryRoles/members/read","microsoft.directory/domains/standard/read","microsoft.directory/groups/standard/read","microsoft.directory/groups/appRoleAssignments/read","microsoft.directory/groups/memberOf/read","microsoft.directory/groups/members/read","microsoft.directory/groups/owners/read","microsoft.directory/groups/settings/read","microsoft.directory/groupSettings/standard/read","microsoft.directory/groupSettingTemplates/standard/read","microsoft.directory/oAuth2PermissionGrants/standard/read","microsoft.directory/organization/standard/read","microsoft.directory/organization/trustedCAsForPasswordlessAuth/read","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/roleAssignments/standard/read","microsoft.directory/roleDefinitions/standard/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/read","microsoft.directory/servicePrincipals/appRoleAssignments/read","microsoft.directory/servicePrincipals/standard/read","microsoft.directory/servicePrincipals/memberOf/read","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/read","microsoft.directory/servicePrincipals/owners/read","microsoft.directory/servicePrincipals/ownedObjects/read","microsoft.directory/servicePrincipals/policies/read","microsoft.directory/subscribedSkus/standard/read","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read");
            TemplateId           = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b";
            Version              = "1";
        }
        AADRoleDefinition 2a3132aa-f9d6-44b9-a696-c4e24633d8f9
        {
            Credential           = $Credscredential;
            Description          = "Can read and write basic directory information. For granting access to applications, not intended for users.";
            DisplayName          = "Directory Writers";
            Ensure               = "Present";
            Id                   = "9360feb5-f418-4baa-8175-e2a00bac4301";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/extensionProperties/update","microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/groupSettings/create","microsoft.directory/groupSettings/delete","microsoft.directory/groupSettings/basic/update","microsoft.directory/oAuth2PermissionGrants/create","microsoft.directory/oAuth2PermissionGrants/basic/update","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/managePermissionGrantsForGroup.microsoft-all-application-permissions","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/inviteGuest","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/photo/update","microsoft.directory/users/userPrincipalName/update");
            TemplateId           = "9360feb5-f418-4baa-8175-e2a00bac4301";
            Version              = "1";
        }
        AADRoleDefinition 03ff6256-392c-4123-ba5d-fd3ffb991c79
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Exchange product.";
            DisplayName          = "Exchange Administrator";
            Ensure               = "Present";
            Id                   = "29232cdf-9323-42fd-ade2-1d097af3e4de";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.exchange/allEntities/basic/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "29232cdf-9323-42fd-ade2-1d097af3e4de";
            Version              = "1";
        }
        AADRoleDefinition fae75bc5-93e6-4403-972b-fcebd2f384d1
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the SharePoint service.";
            DisplayName          = "SharePoint Administrator";
            Ensure               = "Present";
            Id                   = "f28a1f50-f6e7-4571-818b-6a12f2af6b6c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "f28a1f50-f6e7-4571-818b-6a12f2af6b6c";
            Version              = "1";
        }
        AADRoleDefinition 035679a8-d6a7-4561-aef7-d2077ef16725
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Skype for Business product.";
            DisplayName          = "Skype for Business Administrator";
            Ensure               = "Present";
            Id                   = "75941009-915a-4869-abe7-691bff18279e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "75941009-915a-4869-abe7-691bff18279e";
            Version              = "1";
        }
        AADRoleDefinition 510c1e61-66b3-480c-8bb4-3fe7a1d65de6
        {
            Credential           = $Credscredential;
            Description          = "Users assigned to this role are added to the local administrators group on Azure AD-joined devices.";
            DisplayName          = "Azure AD Joined Device Local Administrator";
            Ensure               = "Present";
            Id                   = "9f06204d-73c1-4d4c-880a-6edb90606fd8";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groupSettings/standard/read","microsoft.directory/groupSettingTemplates/standard/read");
            TemplateId           = "9f06204d-73c1-4d4c-880a-6edb90606fd8";
            Version              = "1";
        }
        AADRoleDefinition 93cfb159-7741-4dd7-ac97-521159e16dfe
        {
            Credential           = $Credscredential;
            Description          = "Can read and manage compliance configuration and reports in Azure AD and Microsoft 365.";
            DisplayName          = "Compliance Administrator";
            Ensure               = "Present";
            Id                   = "17315797-102d-40b4-93e0-432062caca18";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.directory/entitlementManagement/allProperties/read","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "17315797-102d-40b4-93e0-432062caca18";
            Version              = "1";
        }
        AADRoleDefinition 63fec914-a62c-4c3a-977d-c92025b37d02
        {
            Credential           = $Credscredential;
            Description          = "Only used by Azure AD Connect service.";
            DisplayName          = "Directory Synchronization Accounts";
            Ensure               = "Present";
            Id                   = "d29b2b05-8046-44ba-8758-1e26182fcf32";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/hybridAuthenticationPolicy/allProperties/allTasks","microsoft.directory/organization/dirSync/update","microsoft.directory/passwordHashSync/allProperties/allTasks","microsoft.directory/policies/create","microsoft.directory/policies/delete","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/policies/tenantDefault/update","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/appRoleAssignedTo/read","microsoft.directory/servicePrincipals/appRoleAssignments/read","microsoft.directory/servicePrincipals/standard/read","microsoft.directory/servicePrincipals/memberOf/read","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/read","microsoft.directory/servicePrincipals/owners/read","microsoft.directory/servicePrincipals/ownedObjects/read","microsoft.directory/servicePrincipals/policies/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update");
            TemplateId           = "d29b2b05-8046-44ba-8758-1e26182fcf32";
            Version              = "1";
        }
        AADRoleDefinition 04486669-bc82-4612-bae1-80f98d4d3507
        {
            Credential           = $Credscredential;
            Description          = "Deprecated - Do Not Use.";
            DisplayName          = "Device Managers";
            Ensure               = "Present";
            Id                   = "2b499bcd-da44-4968-8aec-78e1674fa64d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/devices/standard/read","microsoft.directory/devices/memberOf/read","microsoft.directory/devices/registeredOwners/read","microsoft.directory/devices/registeredUsers/read","microsoft.directory/devices/basic/update","microsoft.directory/devices/extensionAttributeSet1/update","microsoft.directory/devices/extensionAttributeSet2/update","microsoft.directory/devices/extensionAttributeSet3/update","microsoft.directory/devices/registeredOwners/update","microsoft.directory/devices/registeredUsers/update");
            TemplateId           = "2b499bcd-da44-4968-8aec-78e1674fa64d";
            Version              = "1";
        }
        AADRoleDefinition 58399500-1ab3-40fb-98eb-82ab84bea120
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of app registrations and enterprise apps.";
            DisplayName          = "Application Administrator";
            Ensure               = "Present";
            Id                   = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/adminConsentRequestPolicy/allProperties/allTasks","microsoft.directory/appConsent/appConsentRequests/allProperties/read","microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/applicationProxy/read","microsoft.directory/applications/applicationProxy/update","microsoft.directory/applications/applicationProxyAuthentication/update","microsoft.directory/applications/applicationProxySslCertificate/update","microsoft.directory/applications/applicationProxyUrlSettings/update","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/extensionProperties/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/applications/verification/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/connectors/create","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/create","microsoft.directory/connectorGroups/delete","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/connectorGroups/allProperties/update","microsoft.directory/customAuthenticationExtensions/allProperties/allTasks","microsoft.directory/deletedItems.applications/delete","microsoft.directory/deletedItems.applications/restore","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/applicationPolicies/create","microsoft.directory/applicationPolicies/delete","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/applicationPolicies/owners/read","microsoft.directory/applicationPolicies/policyAppliedTo/read","microsoft.directory/applicationPolicies/basic/update","microsoft.directory/applicationPolicies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-application-admin","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3";
            Version              = "1";
        }
        AADRoleDefinition 104b3b64-a6fc-4e2a-8479-7cb8a84e17e4
        {
            Credential           = $Credscredential;
            Description          = "Can create application registrations independent of the 'Users can register applications' setting.";
            DisplayName          = "Application Developer";
            Ensure               = "Present";
            Id                   = "cf1c38e5-3621-4004-a7cb-879624dced7c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/createAsOwner","microsoft.directory/oAuth2PermissionGrants/createAsOwner","microsoft.directory/servicePrincipals/createAsOwner");
            TemplateId           = "cf1c38e5-3621-4004-a7cb-879624dced7c";
            Version              = "1";
        }
        AADRoleDefinition f9436ae9-9fd1-461b-b39a-6e90ceef5073
        {
            Credential           = $Credscredential;
            Description          = "Can read security information and reports in Azure AD and Office 365.";
            DisplayName          = "Security Reader";
            Ensure               = "Present";
            Id                   = "5d6b6bb7-de71-4623-b4af-96380a352509";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/definitions/allProperties/read","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/identityProtection/allProperties/read","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.protectionCenter/allEntities/standard/read","microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "5d6b6bb7-de71-4623-b4af-96380a352509";
            Version              = "1";
        }
        AADRoleDefinition 6ab9dd29-31b4-4c13-b740-34dcedc0aaca
        {
            Credential           = $Credscredential;
            Description          = "Can read security information and reports, and manage configuration in Azure AD and Office 365.";
            DisplayName          = "Security Administrator";
            Ensure               = "Present";
            Id                   = "194ae4cb-b126-40b2-bd5b-6091b380977d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/policies/update","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/hybridAuthenticationPolicy/allProperties/allTasks","microsoft.directory/identityProtection/allProperties/read","microsoft.directory/identityProtection/allProperties/update","microsoft.directory/passwordHashSync/allProperties/allTasks","microsoft.directory/policies/create","microsoft.directory/policies/delete","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/policies/tenantDefault/update","microsoft.directory/conditionalAccessPolicies/create","microsoft.directory/conditionalAccessPolicies/delete","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/basic/update","microsoft.directory/conditionalAccessPolicies/owners/update","microsoft.directory/conditionalAccessPolicies/tenantDefault/update","microsoft.directory/crossTenantAccessPolicies/create","microsoft.directory/crossTenantAccessPolicies/delete","microsoft.directory/crossTenantAccessPolicies/standard/read","microsoft.directory/crossTenantAccessPolicies/owners/read","microsoft.directory/crossTenantAccessPolicies/policyAppliedTo/read","microsoft.directory/crossTenantAccessPolicies/basic/update","microsoft.directory/crossTenantAccessPolicies/owners/update","microsoft.directory/crossTenantAccessPolicies/tenantDefault/update","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.protectionCenter/allEntities/standard/read","microsoft.office365.protectionCenter/allEntities/basic/update","microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "194ae4cb-b126-40b2-bd5b-6091b380977d";
            Version              = "1";
        }
        AADRoleDefinition 27097c2d-3c98-4f2e-935a-3b11c813660b
        {
            Credential           = $Credscredential;
            Description          = "Can manage role assignments in Azure AD, and all aspects of Privileged Identity Management.";
            DisplayName          = "Privileged Role Administrator";
            Ensure               = "Present";
            Id                   = "e8611ab8-c189-46e8-94e1-60213ab1f814";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/definitions.applications/allProperties/read","microsoft.directory/accessReviews/definitions.directoryRoles/allProperties/allTasks","microsoft.directory/accessReviews/definitions.groupsAssignableToRoles/allProperties/update","microsoft.directory/accessReviews/definitions.groupsAssignableToRoles/create","microsoft.directory/accessReviews/definitions.groupsAssignableToRoles/delete","microsoft.directory/accessReviews/definitions.groups/allProperties/read","microsoft.directory/administrativeUnits/allProperties/allTasks","microsoft.directory/authorizationPolicy/allProperties/allTasks","microsoft.directory/directoryRoles/allProperties/allTasks","microsoft.directory/groupsAssignableToRoles/create","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/privilegedIdentityManagement/allProperties/allTasks","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-company-admin","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e8611ab8-c189-46e8-94e1-60213ab1f814";
            Version              = "1";
        }
        AADRoleDefinition dd7814ed-e7e1-4ea5-b9b9-3ee11369ac42
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Intune product.";
            DisplayName          = "Intune Administrator";
            Ensure               = "Present";
            Id                   = "3a2c62db-5318-420d-8d74-23affee5d9d5";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/bitlockerKeys/key/read","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/devices/create","microsoft.directory/devices/delete","microsoft.directory/devices/disable","microsoft.directory/devices/enable","microsoft.directory/devices/basic/update","microsoft.directory/devices/extensionAttributeSet1/update","microsoft.directory/devices/extensionAttributeSet2/update","microsoft.directory/devices/extensionAttributeSet3/update","microsoft.directory/devices/registeredOwners/update","microsoft.directory/devices/registeredUsers/update","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.security/create","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/classification/update","microsoft.directory/groups.security/dynamicMembershipRule/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.directory/groups.security/visibility/update","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/photo/update","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.cloudPC/allEntities/allProperties/allTasks","microsoft.intune/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "3a2c62db-5318-420d-8d74-23affee5d9d5";
            Version              = "1";
        }
        AADRoleDefinition 175c895d-1103-42b3-9a2f-077b2ffa8de1
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of app registrations and enterprise apps except App Proxy.";
            DisplayName          = "Cloud Application Administrator";
            Ensure               = "Present";
            Id                   = "158c047a-c907-4556-b7ef-446551a6b5f7";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/adminConsentRequestPolicy/allProperties/allTasks","microsoft.directory/appConsent/appConsentRequests/allProperties/read","microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/extensionProperties/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/applications/verification/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/deletedItems.applications/delete","microsoft.directory/deletedItems.applications/restore","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/applicationPolicies/create","microsoft.directory/applicationPolicies/delete","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/applicationPolicies/owners/read","microsoft.directory/applicationPolicies/policyAppliedTo/read","microsoft.directory/applicationPolicies/basic/update","microsoft.directory/applicationPolicies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-application-admin","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "158c047a-c907-4556-b7ef-446551a6b5f7";
            Version              = "1";
        }
        AADRoleDefinition 42c05c1b-8bba-4c78-a96c-8003a9f3588f
        {
            Credential           = $Credscredential;
            Description          = "Can approve Microsoft support requests to access customer organizational data.";
            DisplayName          = "Customer LockBox Access Approver";
            Ensure               = "Present";
            Id                   = "5c4f9dcd-47dc-4cf7-8c9a-9e4207cbfc91";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.lockbox/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "5c4f9dcd-47dc-4cf7-8c9a-9e4207cbfc91";
            Version              = "1";
        }
        AADRoleDefinition b06966a4-33d9-470d-bb1b-936b2cf95bb6
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Dynamics 365 product.";
            DisplayName          = "Dynamics 365 Administrator";
            Ensure               = "Present";
            Id                   = "44367163-eba1-44c3-98af-f5787879f96a";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "44367163-eba1-44c3-98af-f5787879f96a";
            Version              = "1";
        }
        AADRoleDefinition aaf3233d-dd4a-4252-affa-c7f07d3a0ebe
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Power BI product.";
            DisplayName          = "Power BI Administrator";
            Ensure               = "Present";
            Id                   = "a9ea8996-122f-4c74-9520-8edcd192826c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.powerApps.powerBI/allEntities/allTasks");
            TemplateId           = "a9ea8996-122f-4c74-9520-8edcd192826c";
            Version              = "1";
        }
        AADRoleDefinition 436196fd-3cab-431f-aab3-aad54e21bd2b
        {
            Credential           = $Credscredential;
            Description          = "Can manage Conditional Access capabilities.";
            DisplayName          = "Conditional Access Administrator";
            Ensure               = "Present";
            Id                   = "b1be1c3e-b65d-4f19-8427-f6fa0d97feb9";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/conditionalAccessPolicies/create","microsoft.directory/conditionalAccessPolicies/delete","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/basic/update","microsoft.directory/conditionalAccessPolicies/owners/update","microsoft.directory/conditionalAccessPolicies/tenantDefault/update","microsoft.directory/crossTenantAccessPolicies/create","microsoft.directory/crossTenantAccessPolicies/delete","microsoft.directory/crossTenantAccessPolicies/standard/read","microsoft.directory/crossTenantAccessPolicies/owners/read","microsoft.directory/crossTenantAccessPolicies/policyAppliedTo/read","microsoft.directory/crossTenantAccessPolicies/basic/update","microsoft.directory/crossTenantAccessPolicies/owners/update","microsoft.directory/crossTenantAccessPolicies/tenantDefault/update");
            TemplateId           = "b1be1c3e-b65d-4f19-8427-f6fa0d97feb9";
            Version              = "1";
        }
        AADRoleDefinition 9f69a188-ea74-4ae8-b385-9cfc04f9cd93
        {
            Credential           = $Credscredential;
            Description          = "Can read sign-in and audit reports.";
            DisplayName          = "Reports Reader";
            Ensure               = "Present";
            Id                   = "4a5d8f65-41da-4de4-8968-e035b65339cf";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4a5d8f65-41da-4de4-8968-e035b65339cf";
            Version              = "1";
        }
        AADRoleDefinition b469c0d2-a271-4d27-bef9-abd52c1306a3
        {
            Credential           = $Credscredential;
            Description          = "Can read messages and updates for their organization in Office 365 Message Center only.";
            DisplayName          = "Message Center Reader";
            Ensure               = "Present";
            Id                   = "790c1fb9-7f7d-4f88-86a1-ef1f95c05c1b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "790c1fb9-7f7d-4f88-86a1-ef1f95c05c1b";
            Version              = "1";
        }
        AADRoleDefinition caa3018a-66c3-463a-8b3a-68ebf52921c1
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Azure Information Protection product.";
            DisplayName          = "Azure Information Protection Administrator";
            Ensure               = "Present";
            Id                   = "7495fdc4-34c4-4d15-a289-98788ce399fd";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "7495fdc4-34c4-4d15-a289-98788ce399fd";
            Version              = "1";
        }
        AADRoleDefinition b1fbfff1-8e3b-4e62-a887-7d0d85fedd4e
        {
            Credential           = $Credscredential;
            Description          = "Can access and manage Desktop management tools and services.";
            DisplayName          = "Desktop Analytics Administrator";
            Ensure               = "Present";
            Id                   = "38a96431-2bdf-4b4c-8b6e-5d3d8abac1a4";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.desktopAnalytics/allEntities/allTasks");
            TemplateId           = "38a96431-2bdf-4b4c-8b6e-5d3d8abac1a4";
            Version              = "1";
        }
        AADRoleDefinition 19495bf4-5d96-42d0-90e5-c239e2effd16
        {
            Credential           = $Credscredential;
            Description          = "Can manage product licenses on users and groups.";
            DisplayName          = "License Administrator";
            Ensure               = "Present";
            Id                   = "4d6ac14f-3453-41d0-bef9-a3e0c569773a";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/groups/assignLicense","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/users/assignLicense","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/usageLocation/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4d6ac14f-3453-41d0-bef9-a3e0c569773a";
            Version              = "1";
        }
        AADRoleDefinition dff6337d-92ec-4493-9ed2-1f28fc0b1604
        {
            Credential           = $Credscredential;
            Description          = "Limited access to manage devices in Azure AD.";
            DisplayName          = "Cloud Device Administrator";
            Ensure               = "Present";
            Id                   = "7698a772-787b-4ac8-901f-60d6b08affd2";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/devices/delete","microsoft.directory/devices/disable","microsoft.directory/devices/enable","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceManagementPolicies/basic/update","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/deviceRegistrationPolicy/basic/update","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks");
            TemplateId           = "7698a772-787b-4ac8-901f-60d6b08affd2";
            Version              = "1";
        }
        AADRoleDefinition 3e46c27f-2b77-48e9-96f2-7ddbec68d149
        {
            Credential           = $Credscredential;
            Description          = "Can access to view, set and reset authentication method information for any non-admin user.";
            DisplayName          = "Authentication Administrator";
            Ensure               = "Present";
            Id                   = "c4e39bd9-1100-46d3-8c65-fb160da0071f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/authenticationMethods/create","microsoft.directory/users/authenticationMethods/delete","microsoft.directory/users/authenticationMethods/standard/restrictedRead","microsoft.directory/users/authenticationMethods/basic/update","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/password/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "c4e39bd9-1100-46d3-8c65-fb160da0071f";
            Version              = "1";
        }
        AADRoleDefinition deb7e957-056d-4f5b-9d69-b9aaa6253e19
        {
            Credential           = $Credscredential;
            Description          = "Can access to view, set and reset authentication method information for any user (admin or non-admin).";
            DisplayName          = "Privileged Authentication Administrator";
            Ensure               = "Present";
            Id                   = "7be44c8a-adaf-4e2a-84d6-ab2649e08a13";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/authenticationMethods/create","microsoft.directory/users/authenticationMethods/delete","microsoft.directory/users/authenticationMethods/standard/read","microsoft.directory/users/authenticationMethods/basic/update","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/password/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "7be44c8a-adaf-4e2a-84d6-ab2649e08a13";
            Version              = "1";
        }
        AADRoleDefinition 66fc24d5-7bfa-4e27-ac3a-27ceeba71eca
        {
            Credential           = $Credscredential;
            Description          = "Can manage calling and meetings features within the Microsoft Teams service.";
            DisplayName          = "Teams Communications Administrator";
            Ensure               = "Present";
            Id                   = "baf37b3a-610e-45da-9e62-d9d1e5e8914b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/allProperties/read","microsoft.teams/meetings/allProperties/allTasks","microsoft.teams/voice/allProperties/allTasks");
            TemplateId           = "baf37b3a-610e-45da-9e62-d9d1e5e8914b";
            Version              = "1";
        }
        AADRoleDefinition 1bbb0e3c-f8b5-4da5-8054-3b66f13ccfcf
        {
            Credential           = $Credscredential;
            Description          = "Can troubleshoot communications issues within Teams using advanced tools.";
            DisplayName          = "Teams Communications Support Engineer";
            Ensure               = "Present";
            Id                   = "f70938a0-fc10-4177-9e90-2178f8765737";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/allProperties/read");
            TemplateId           = "f70938a0-fc10-4177-9e90-2178f8765737";
            Version              = "1";
        }
        AADRoleDefinition 38f3f6eb-77ee-4b4a-a6a6-2060f10549e6
        {
            Credential           = $Credscredential;
            Description          = "Can troubleshoot communications issues within Teams using basic tools.";
            DisplayName          = "Teams Communications Support Specialist";
            Ensure               = "Present";
            Id                   = "fcf91098-03e3-41a9-b5ba-6f0ec8188a12";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/standard/read");
            TemplateId           = "fcf91098-03e3-41a9-b5ba-6f0ec8188a12";
            Version              = "1";
        }
        AADRoleDefinition 988d6858-b0ba-43a7-8c27-317a8a1e4cf8
        {
            Credential           = $Credscredential;
            Description          = "Can manage the Microsoft Teams service.";
            DisplayName          = "Teams Administrator";
            Ensure               = "Present";
            Id                   = "69091246-20e8-4a56-aa4d-066075b2a7a8";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.directory/servicePrincipals/managePermissionGrantsForGroup.microsoft-all-application-permissions","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/allEntities/allProperties/allTasks");
            TemplateId           = "69091246-20e8-4a56-aa4d-066075b2a7a8";
            Version              = "1";
        }
        AADRoleDefinition a07cd5ba-1516-4ebe-8889-d28ce229a3bd
        {
            Credential           = $Credscredential;
            Description          = "Has administrative access in the Microsoft 365 Insights app.";
            DisplayName          = "Insights Administrator";
            Ensure               = "Present";
            Id                   = "eb1f4a8d-243a-41f0-9fbd-c7cdf6c5ef7c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.insights/allEntities/allProperties/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "eb1f4a8d-243a-41f0-9fbd-c7cdf6c5ef7c";
            Version              = "1";
        }
        AADRoleDefinition 308c0d1f-eae3-4177-af93-31cd6c35745f
        {
            Credential           = $Credscredential;
            Description          = "Can read security messages and updates in Office 365 Message Center only.";
            DisplayName          = "Message Center Privacy Reader";
            Ensure               = "Present";
            Id                   = "ac16e43d-7b2d-40e0-ac05-243ff356ab5b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "ac16e43d-7b2d-40e0-ac05-243ff356ab5b";
            Version              = "1";
        }
        AADRoleDefinition bc1647bf-0442-4d10-8ede-9c9a911e080c
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of user flows.";
            DisplayName          = "External ID User Flow Administrator";
            Ensure               = "Present";
            Id                   = "6e591065-9bad-43ed-90f3-e9424366d2f0";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cUserFlow/allProperties/allTasks";
            TemplateId           = "6e591065-9bad-43ed-90f3-e9424366d2f0";
            Version              = "1";
        }
        AADRoleDefinition c73cef32-11da-4cd4-bd24-33268ad09448
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage the attribute schema available to all user flows.";
            DisplayName          = "External ID User Flow Attribute Administrator";
            Ensure               = "Present";
            Id                   = "0f971eea-41eb-4569-a71e-57bb8a3eff1e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cUserAttribute/allProperties/allTasks";
            TemplateId           = "0f971eea-41eb-4569-a71e-57bb8a3eff1e";
            Version              = "1";
        }
        AADRoleDefinition 77de8c41-f870-4a55-b94c-bca8785ef928
        {
            Credential           = $Credscredential;
            Description          = "Can manage secrets for federation and encryption in the Identity Experience Framework (IEF).";
            DisplayName          = "B2C IEF Keyset Administrator";
            Ensure               = "Present";
            Id                   = "aaf43236-0c0d-4d5f-883a-6955382ac081";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cTrustFrameworkKeySet/allProperties/allTasks";
            TemplateId           = "aaf43236-0c0d-4d5f-883a-6955382ac081";
            Version              = "1";
        }
        AADRoleDefinition ffbbe0f2-84b2-4a69-8e91-b97f42ccf131
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage trust framework policies in the Identity Experience Framework (IEF).";
            DisplayName          = "B2C IEF Policy Administrator";
            Ensure               = "Present";
            Id                   = "3edaf663-341e-4475-9f94-5c398ef6c070";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cTrustFrameworkPolicy/allProperties/allTasks";
            TemplateId           = "3edaf663-341e-4475-9f94-5c398ef6c070";
            Version              = "1";
        }
        AADRoleDefinition 9d2388a0-1db2-4bd9-a763-cbf55fede47d
        {
            Credential           = $Credscredential;
            Description          = "Can configure identity providers for use in direct federation.";
            DisplayName          = "External Identity Provider Administrator";
            Ensure               = "Present";
            Id                   = "be2f45a1-457d-42af-a067-6ec1fa63bc45";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/identityProviders/allProperties/allTasks";
            TemplateId           = "be2f45a1-457d-42af-a067-6ec1fa63bc45";
            Version              = "1";
        }
        AADRoleDefinition e87bf018-09a2-47da-81bf-08cb165536cc
        {
            Credential           = $Credscredential;
            Description          = "Creates and manages compliance content.";
            DisplayName          = "Compliance Data Administrator";
            Ensure               = "Present";
            Id                   = "e6d1a23a-da11-4be4-9570-befc86d067a7";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e6d1a23a-da11-4be4-9570-befc86d067a7";
            Version              = "1";
        }
        AADRoleDefinition f4879c24-5cda-4f19-a7a4-dd2714f20de8
        {
            Credential           = $Credscredential;
            Description          = "Creates and manages security events.";
            DisplayName          = "Security Operator";
            Ensure               = "Present";
            Id                   = "5f2222b1-57c3-48ba-8ad5-d4759f1fde6f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.directory/identityProtection/allProperties/allTasks","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.advancedThreatProtection/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.intune/allEntities/read","microsoft.office365.securityComplianceCenter/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.windows.defenderAdvancedThreatProtection/allEntities/allTasks");
            TemplateId           = "5f2222b1-57c3-48ba-8ad5-d4759f1fde6f";
            Version              = "1";
        }
        AADRoleDefinition 23401bce-8453-42fb-a854-8ea8d430941a
        {
            Credential           = $Credscredential;
            Description          = "Can manage settings for Microsoft Kaizala.";
            DisplayName          = "Kaizala Administrator";
            Ensure               = "Present";
            Id                   = "74ef975b-6605-40af-a5d2-b9539d836353";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "74ef975b-6605-40af-a5d2-b9539d836353";
            Version              = "1";
        }
        AADRoleDefinition 84afaefe-b1a9-4ba6-b7be-ffc0f3a5b3e7
        {
            Credential           = $Credscredential;
            Description          = "Can read everything that a Global Administrator can, but not update anything.";
            DisplayName          = "Global Reader";
            Ensure               = "Present";
            Id                   = "f2ef992c-3afb-46b9-b7cf-a126ee74c451";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/allProperties/read","microsoft.directory/accessReviews/definitions/allProperties/read","microsoft.directory/adminConsentRequestPolicy/allProperties/read","microsoft.directory/administrativeUnits/allProperties/read","microsoft.directory/appConsent/appConsentRequests/allProperties/read","microsoft.directory/applications/allProperties/read","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/users/authenticationMethods/standard/restrictedRead","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/cloudAppSecurity/allProperties/read","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/contacts/allProperties/read","microsoft.directory/customAuthenticationExtensions/allProperties/read","microsoft.directory/devices/allProperties/read","microsoft.directory/directoryRoles/allProperties/read","microsoft.directory/directoryRoleTemplates/allProperties/read","microsoft.directory/domains/allProperties/read","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/groups/allProperties/read","microsoft.directory/groupSettings/allProperties/read","microsoft.directory/groupSettingTemplates/allProperties/read","microsoft.directory/identityProtection/allProperties/read","microsoft.directory/loginOrganizationBranding/allProperties/read","microsoft.directory/oAuth2PermissionGrants/allProperties/read","microsoft.directory/organization/allProperties/read","microsoft.directory/permissionGrantPolicies/standard/read","microsoft.directory/policies/allProperties/read","microsoft.directory/conditionalAccessPolicies/allProperties/read","microsoft.directory/crossTenantAccessPolicies/allProperties/read","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/roleAssignments/allProperties/read","microsoft.directory/roleDefinitions/allProperties/read","microsoft.directory/scopedRoleMemberships/allProperties/read","microsoft.directory/serviceAction/getAvailableExtentionProperties","microsoft.directory/servicePrincipals/allProperties/read","microsoft.directory/servicePrincipalCreationPolicies/standard/read","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.directory/subscribedSkus/allProperties/read","microsoft.directory/users/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.cloudPC/allEntities/allProperties/read","microsoft.commerce.billing/allEntities/read","microsoft.edge/allEntities/allProperties/read","microsoft.insights/allEntities/allProperties/read","microsoft.office365.exchange/allEntities/standard/read","microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.network/performance/allProperties/read","microsoft.office365.protectionCenter/allEntities/allProperties/read","microsoft.office365.securityComplianceCenter/allEntities/read","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.office365.yammer/allEntities/allProperties/read","microsoft.teams/allEntities/allProperties/read","microsoft.virtualVisits/allEntities/allProperties/read","microsoft.windows.updatesDeployments/allEntities/allProperties/read");
            TemplateId           = "f2ef992c-3afb-46b9-b7cf-a126ee74c451";
            Version              = "1";
        }
        AADRoleDefinition fc252a71-c062-4be4-86c2-3f5196b9b6b7
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of Microsoft Search settings.";
            DisplayName          = "Search Administrator";
            Ensure               = "Present";
            Id                   = "0964bb5e-9bdb-4d7b-ac29-58e794862a40";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.search/content/manage","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "0964bb5e-9bdb-4d7b-ac29-58e794862a40";
            Version              = "1";
        }
        AADRoleDefinition d3f0ec61-f097-4fde-944f-639e8a21113f
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage the editorial content such as bookmarks, Q and As, locations, floorplan.";
            DisplayName          = "Search Editor";
            Ensure               = "Present";
            Id                   = "8835291a-918c-4fd7-a9ce-faa49f0cf7d9";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.search/content/manage","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "8835291a-918c-4fd7-a9ce-faa49f0cf7d9";
            Version              = "1";
        }
        AADRoleDefinition 620fe2d7-4162-414c-89b6-f38e3293190b
        {
            Credential           = $Credscredential;
            Description          = "Can reset passwords for non-administrators and Password Administrators.";
            DisplayName          = "Password Administrator";
            Ensure               = "Present";
            Id                   = "966707d0-3269-4727-9be2-8c3a10f19b9d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/password/update","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "966707d0-3269-4727-9be2-8c3a10f19b9d";
            Version              = "1";
        }
        AADRoleDefinition b825d4c8-8c87-46b2-80d1-f478aaa0b85d
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of printers and printer connectors.";
            DisplayName          = "Printer Administrator";
            Ensure               = "Present";
            Id                   = "644ef478-e28f-4e28-b9dc-3fdde9aa0b1f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.azure.print/allEntities/allProperties/allTasks";
            TemplateId           = "644ef478-e28f-4e28-b9dc-3fdde9aa0b1f";
            Version              = "1";
        }
        AADRoleDefinition de32df25-8133-4df0-b1bb-2f83ebff0efd
        {
            Credential           = $Credscredential;
            Description          = "Can register and unregister printers and update printer status.";
            DisplayName          = "Printer Technician";
            Ensure               = "Present";
            Id                   = "e8cef6f1-e4bd-4ea8-bc07-4b8d950f4477";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.print/connectors/allProperties/read","microsoft.azure.print/printers/allProperties/read","microsoft.azure.print/printers/register","microsoft.azure.print/printers/unregister","microsoft.azure.print/printers/basic/update");
            TemplateId           = "e8cef6f1-e4bd-4ea8-bc07-4b8d950f4477";
            Version              = "1";
        }
        AADRoleDefinition 491fa109-729e-4a75-8327-7465fd7c5963
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage the authentication methods policy, tenant-wide MFA settings, password protection policy, and verifiable credentials.";
            DisplayName          = "Authentication Policy Administrator";
            Ensure               = "Present";
            Id                   = "0526716b-113d-4c15-b2c8-68e3c22b9f80";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/organization/strongAuthentication/allTasks","microsoft.directory/userCredentialPolicies/create","microsoft.directory/userCredentialPolicies/delete","microsoft.directory/userCredentialPolicies/standard/read","microsoft.directory/userCredentialPolicies/owners/read","microsoft.directory/userCredentialPolicies/policyAppliedTo/read","microsoft.directory/userCredentialPolicies/basic/update","microsoft.directory/userCredentialPolicies/owners/update","microsoft.directory/userCredentialPolicies/tenantDefault/update","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/revoke","microsoft.directory/verifiableCredentials/configuration/contracts/create","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/update","microsoft.directory/verifiableCredentials/configuration/create","microsoft.directory/verifiableCredentials/configuration/delete","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/update","microsoft.azure.supportTickets/allEntities/allTasks");
            TemplateId           = "0526716b-113d-4c15-b2c8-68e3c22b9f80";
            Version              = "1";
        }
        AADRoleDefinition 5cc9f8e2-0db2-4d31-8a2e-4ed32edf0ffd
        {
            Credential           = $Credscredential;
            Description          = "Members of this role can create/manage groups, create/manage groups settings like naming and expiration policies, and view groups activity and audit reports.";
            DisplayName          = "Groups Administrator";
            Ensure               = "Present";
            Id                   = "fdd7a751-b60b-444a-984c-02652fe8fa1c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/deletedItems.groups/delete","microsoft.directory/deletedItems.groups/restore","microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/servicePrincipals/managePermissionGrantsForGroup.microsoft-all-application-permissions","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "fdd7a751-b60b-444a-984c-02652fe8fa1c";
            Version              = "1";
        }
        AADRoleDefinition 2be18bbd-fac7-4970-9527-6827a0b9e8a8
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of Microsoft Dynamics 365, PowerApps and Microsoft Flow.";
            DisplayName          = "Power Platform Administrator";
            Ensure               = "Present";
            Id                   = "11648597-926c-4cf3-9c36-bcebb0ba8dcc";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.flow/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.powerApps/allEntities/allTasks");
            TemplateId           = "11648597-926c-4cf3-9c36-bcebb0ba8dcc";
            Version              = "1";
        }
        AADRoleDefinition 3c132b8a-5191-4fd7-a337-fd62a9bbdaf3
        {
            Credential           = $Credscredential;
            Description          = "Can manage Azure DevOps organization policy and settings.";
            DisplayName          = "Azure DevOps Administrator";
            Ensure               = "Present";
            Id                   = "e3973bdf-4987-49ae-837a-ba8e231c7286";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.azure.devOps/allEntities/allTasks";
            TemplateId           = "e3973bdf-4987-49ae-837a-ba8e231c7286";
            Version              = "1";
        }
        AADRoleDefinition 57099122-f933-4ea2-a9d3-99812ffe05fd
        {
            Credential           = $Credscredential;
            Description          = "Can manage AD to Azure AD cloud provisioning, Azure AD Connect, and federation settings.";
            DisplayName          = "Hybrid Identity Administrator";
            Ensure               = "Present";
            Id                   = "8ac3fc64-6eca-42ea-9e69-59f4c7b60eb2";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/cloudProvisioning/allProperties/allTasks","microsoft.directory/deletedItems.applications/delete","microsoft.directory/deletedItems.applications/restore","microsoft.directory/domains/allProperties/read","microsoft.directory/domains/federation/update","microsoft.directory/hybridAuthenticationPolicy/allProperties/allTasks","microsoft.directory/organization/dirSync/update","microsoft.directory/passwordHashSync/allProperties/allTasks","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "8ac3fc64-6eca-42ea-9e69-59f4c7b60eb2";
            Version              = "1";
        }
        AADRoleDefinition e7fc879d-3165-40b8-9241-72465836e651
        {
            Credential           = $Credscredential;
            Description          = "Can manage Office apps cloud services, including policy and settings management, and manage the ability to select, unselect and publish 'what's new' feature content to end-user's devices.";
            DisplayName          = "Office Apps Administrator";
            Ensure               = "Present";
            Id                   = "2b745bdf-0803-4d80-aa65-822c4493daac";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.userCommunication/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "2b745bdf-0803-4d80-aa65-822c4493daac";
            Version              = "1";
        }
        AADRoleDefinition 1269a0ad-5bda-42af-89e0-fc12572794db
        {
            Credential           = $Credscredential;
            Description          = "Can manage network locations and review enterprise network design insights for Microsoft 365 Software as a Service applications.";
            DisplayName          = "Network Administrator";
            Ensure               = "Present";
            Id                   = "d37c8bed-0711-4417-ba38-b4abe66ce4c2";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.network/locations/allProperties/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "d37c8bed-0711-4417-ba38-b4abe66ce4c2";
            Version              = "1";
        }
        AADRoleDefinition 71df4f87-67ed-4c20-a491-c339ac4df8c1
        {
            Credential           = $Credscredential;
            Description          = "Can view and share dashboards and insights via the M365 Insights app.";
            DisplayName          = "Insights Business Leader";
            Ensure               = "Present";
            Id                   = "31e939ad-9672-4796-9c2e-873181342d2d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.insights/reports/allProperties/read","microsoft.insights/programs/allProperties/update");
            TemplateId           = "31e939ad-9672-4796-9c2e-873181342d2d";
            Version              = "1";
        }
        AADRoleDefinition f6f7ec93-a4bd-43c9-8005-2b8a3052222f
        {
            Credential           = $Credscredential;
            Description          = "Can perform management related tasks on Teams certified devices.";
            DisplayName          = "Teams Devices Administrator";
            Ensure               = "Present";
            Id                   = "3d762c5a-1b6c-493f-843e-55a3b42923d4";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/devices/standard/read");
            TemplateId           = "3d762c5a-1b6c-493f-843e-55a3b42923d4";
            Version              = "1";
        }
        AADRoleDefinition d366dfbd-3ab3-40f9-b64e-2d66deed9720
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of attack simulation campaigns.";
            DisplayName          = "Attack Simulation Administrator";
            Ensure               = "Present";
            Id                   = "c430b396-e693-46cc-96f3-db01bf8bb62a";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/allTasks");
            TemplateId           = "c430b396-e693-46cc-96f3-db01bf8bb62a";
            Version              = "1";
        }
        AADRoleDefinition 24e244a7-5672-4820-8d79-f71ac59740c4
        {
            Credential           = $Credscredential;
            Description          = "Can create attack payloads that an administrator can initiate later.";
            DisplayName          = "Attack Payload Author";
            Ensure               = "Present";
            Id                   = "9c6df0f2-1e7c-4dc3-b195-66dfbd24aa8f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read");
            TemplateId           = "9c6df0f2-1e7c-4dc3-b195-66dfbd24aa8f";
            Version              = "1";
        }
        AADRoleDefinition 9b5c452b-8727-4411-837c-f844e11ee990
        {
            Credential           = $Credscredential;
            Description          = "Can see only tenant level aggregates in Microsoft 365 Usage Analytics and Productivity Score.";
            DisplayName          = "Usage Summary Reports Reader";
            Ensure               = "Present";
            Id                   = "75934031-6c7e-415a-99d7-48dbd49e875e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.network/performance/allProperties/read","microsoft.office365.usageReports/allEntities/standard/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "75934031-6c7e-415a-99d7-48dbd49e875e";
            Version              = "1";
        }
        AADRoleDefinition c9db225a-3fbd-4cd8-9ee1-9278a3eadb1e
        {
            Credential           = $Credscredential;
            Description          = "Can configure knowledge, learning, and other intelligent features.";
            DisplayName          = "Knowledge Administrator";
            Ensure               = "Present";
            Id                   = "b5a8dcf3-09d5-43a9-a639-8e29ef291470";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.security/create","microsoft.directory/groups.security/createAsOwner","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.office365.knowledge/contentUnderstanding/allProperties/allTasks","microsoft.office365.knowledge/knowledgeNetwork/allProperties/allTasks","microsoft.office365.knowledge/learningSources/allProperties/allTasks","microsoft.office365.protectionCenter/sensitivityLabels/allProperties/read","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "b5a8dcf3-09d5-43a9-a639-8e29ef291470";
            Version              = "1";
        }
        AADRoleDefinition 91b6aa3c-20ef-486c-82e3-06f260a8bf5d
        {
            Credential           = $Credscredential;
            Description          = "Has access to topic management dashboard and can manage content.";
            DisplayName          = "Knowledge Manager";
            Ensure               = "Present";
            Id                   = "744ec460-397e-42ad-a462-8b3f9747a02c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.security/create","microsoft.directory/groups.security/createAsOwner","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.office365.knowledge/contentUnderstanding/analytics/allProperties/read","microsoft.office365.knowledge/knowledgeNetwork/topicVisibility/allProperties/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "744ec460-397e-42ad-a462-8b3f9747a02c";
            Version              = "1";
        }
        AADRoleDefinition ee22a0d2-2fe8-4acc-9fbe-3d504566f4c9
        {
            Credential           = $Credscredential;
            Description          = "Can manage domain names in cloud and on-premises.";
            DisplayName          = "Domain Name Administrator";
            Ensure               = "Present";
            Id                   = "8329153b-31d0-4727-b945-745eb3bc5f31";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/domains/allProperties/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "8329153b-31d0-4727-b945-745eb3bc5f31";
            Version              = "1";
        }
        AADRoleDefinition 28ec0d2b-9498-4d15-a9c2-e2a50c03993f
        {
            Credential           = $Credscredential;
            Description          = "Define and manage the definition of custom security attributes.";
            DisplayName          = "Attribute Definition Administrator";
            Ensure               = "Present";
            Id                   = "8424c6f0-a189-499e-bbd0-26c1753c96d4";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/attributeSets/allProperties/allTasks","microsoft.directory/customSecurityAttributeDefinitions/allProperties/allTasks");
            TemplateId           = "8424c6f0-a189-499e-bbd0-26c1753c96d4";
            Version              = "1";
        }
        AADRoleDefinition 43069129-b7ff-4e9d-9540-f426fdff44f9
        {
            Credential           = $Credscredential;
            Description          = "Assign custom security attribute keys and values to supported Azure AD objects.";
            DisplayName          = "Attribute Assignment Administrator";
            Ensure               = "Present";
            Id                   = "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/attributeSets/allProperties/read","microsoft.directory/customSecurityAttributeDefinitions/allProperties/read","microsoft.directory/devices/customSecurityAttributes/read","microsoft.directory/devices/customSecurityAttributes/update","microsoft.directory/servicePrincipals/customSecurityAttributes/read","microsoft.directory/servicePrincipals/customSecurityAttributes/update","microsoft.directory/users/customSecurityAttributes/read","microsoft.directory/users/customSecurityAttributes/update");
            TemplateId           = "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d";
            Version              = "1";
        }
        AADRoleDefinition 9ff3a60b-bbbf-4e03-9fa3-294f1cdafd34
        {
            Credential           = $Credscredential;
            Description          = "Read the definition of custom security attributes.";
            DisplayName          = "Attribute Definition Reader";
            Ensure               = "Present";
            Id                   = "1d336d2c-4ae8-42ef-9711-b3604ce3fc2c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/attributeSets/allProperties/read","microsoft.directory/customSecurityAttributeDefinitions/allProperties/read");
            TemplateId           = "1d336d2c-4ae8-42ef-9711-b3604ce3fc2c";
            Version              = "1";
        }
        AADRoleDefinition 75ff902f-7cf7-4047-9b75-391e1af0c448
        {
            Credential           = $Credscredential;
            Description          = "Read custom security attribute keys and values for supported Azure AD objects.";
            DisplayName          = "Attribute Assignment Reader";
            Ensure               = "Present";
            Id                   = "ffd52fa5-98dc-465c-991d-fc073eb59f8f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/attributeSets/allProperties/read","microsoft.directory/customSecurityAttributeDefinitions/allProperties/read","microsoft.directory/devices/customSecurityAttributes/read","microsoft.directory/servicePrincipals/customSecurityAttributes/read","microsoft.directory/users/customSecurityAttributes/read");
            TemplateId           = "ffd52fa5-98dc-465c-991d-fc073eb59f8f";
            Version              = "1";
        }
        AADRoleDefinition 83d18e51-959f-4a3d-8de7-853aaeb8952e
        {
            Credential           = $Credscredential;
            Description          = "Can create or update Exchange Online recipients within the Exchange Online organization.";
            DisplayName          = "Exchange Recipient Administrator";
            Ensure               = "Present";
            Id                   = "31392ffb-586c-42d1-9346-e59415a2cc4e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.exchange/allRecipients/allProperties/allTasks","microsoft.office365.exchange/messageTracking/allProperties/allTasks","microsoft.office365.exchange/migration/allProperties/allTasks");
            TemplateId           = "31392ffb-586c-42d1-9346-e59415a2cc4e";
            Version              = "1";
        }
        AADRoleDefinition 7c3276e6-ab5a-4cb0-8538-6a27c996a6ae
        {
            Credential           = $Credscredential;
            Description          = "Manage access using Azure AD for identity governance scenarios.";
            DisplayName          = "Identity Governance Administrator";
            Ensure               = "Present";
            Id                   = "45d8d3c5-c802-45c6-b32a-1d70b5e1e86e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/definitions.applications/allProperties/allTasks","microsoft.directory/accessReviews/definitions.entitlementManagement/allProperties/allTasks","microsoft.directory/accessReviews/definitions.groups/allProperties/read","microsoft.directory/accessReviews/definitions.groups/allProperties/update","microsoft.directory/accessReviews/definitions.groups/create","microsoft.directory/accessReviews/definitions.groups/delete","microsoft.directory/accessReviews/allProperties/allTasks","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/members/update","microsoft.directory/servicePrincipals/appRoleAssignedTo/update");
            TemplateId           = "45d8d3c5-c802-45c6-b32a-1d70b5e1e86e";
            Version              = "1";
        }
        AADRoleDefinition 104c0770-b68c-4fb1-8018-71b2e11f26af
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Cloud App Security product.";
            DisplayName          = "Cloud App Security Administrator";
            Ensure               = "Present";
            Id                   = "892c5842-a9a6-463a-8041-72aa08ca3cf6";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "892c5842-a9a6-463a-8041-72aa08ca3cf6";
            Version              = "1";
        }
        AADRoleDefinition 973b72d8-1c7c-44e5-822d-92b47a4aae34
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of Windows Update deployments through the Windows Update for Business deployment service.";
            DisplayName          = "Windows Update Deployment Administrator";
            Ensure               = "Present";
            Id                   = "32696413-001a-46ae-978c-ce0f6b3620d2";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.windows.updatesDeployments/allEntities/allProperties/allTasks";
            TemplateId           = "32696413-001a-46ae-978c-ce0f6b3620d2";
            Version              = "1";
        }
        AADRoleDefinition b01b6aa7-2de9-47aa-9042-a27f30b07f56
        {
            Credential           = $Credscredential;
            Description          = "Can provision and manage all aspects of Cloud PCs.";
            DisplayName          = "Windows 365 Administrator";
            Ensure               = "Present";
            Id                   = "11451d60-acb2-45eb-a7d6-43d0f0125c13";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/devices/create","microsoft.directory/devices/delete","microsoft.directory/devices/disable","microsoft.directory/devices/enable","microsoft.directory/devices/basic/update","microsoft.directory/devices/extensionAttributeSet1/update","microsoft.directory/devices/extensionAttributeSet2/update","microsoft.directory/devices/extensionAttributeSet3/update","microsoft.directory/devices/registeredOwners/update","microsoft.directory/devices/registeredUsers/update","microsoft.directory/groups.security/create","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/classification/update","microsoft.directory/groups.security/dynamicMembershipRule/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.directory/groups.security/visibility/update","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.cloudPC/allEntities/allProperties/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "11451d60-acb2-45eb-a7d6-43d0f0125c13";
            Version              = "1";
        }
        AADRoleDefinition 3891edd7-8395-4e98-9c4c-f95a3aa1425f
        {
            Credential           = $Credscredential;
            Description          = "Manage all aspects of Microsoft Edge.";
            DisplayName          = "Edge Administrator";
            Ensure               = "Present";
            Id                   = "3f1acade-1e04-4fbc-9b69-f0302cd84aef";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.edge/allEntities/allProperties/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "3f1acade-1e04-4fbc-9b69-f0302cd84aef";
            Version              = "1";
        }
        AADTenantDetails 76cfef6c-15b1-484d-b563-d5b9eb49b1fa
        {
            Credential                           = $Credscredential;
            IsSingleInstance                     = "Yes";
            MarketingNotificationEmails          = @();
            SecurityComplianceNotificationMails  = @();
            SecurityComplianceNotificationPhones = @();
            TechnicalNotificationMails           = @("sean.skinner@$OrganizationName");
        }
        EXOAcceptedDomain 687ae98b-2fad-47e4-8173-4e0d8151bdef
        {
            Credential           = $Credscredential;
            DomainType           = "Authoritative";
            Ensure               = "Present";
            Identity             = "sharedsolutionit.onmicrosoft.com";
            MatchSubDomains      = $False;
            OutboundOnly         = $False;
        }
        EXOAcceptedDomain 2387a367-33ed-4b06-ab5e-6f954c40c072
        {
            Credential           = $Credscredential;
            DomainType           = "Authoritative";
            Ensure               = "Present";
            Identity             = "$OrganizationName";
            MatchSubDomains      = $False;
            OutboundOnly         = $False;
        }
        EXOAntiPhishPolicy 4259a256-c3ef-4219-92f1-bb3897dd21e6
        {
            AdminDisplayName                              = "";
            AuthenticationFailAction                      = "MoveToJmf";
            Credential                                    = $Credscredential;
            Enabled                                       = $True;
            EnableFirstContactSafetyTips                  = $False;
            EnableMailboxIntelligence                     = $True;
            EnableMailboxIntelligenceProtection           = $False;
            EnableOrganizationDomainsProtection           = $False;
            EnableSimilarDomainsSafetyTips                = $False;
            EnableSimilarUsersSafetyTips                  = $False;
            EnableSpoofIntelligence                       = $True;
            EnableTargetedDomainsProtection               = $False;
            EnableTargetedUserProtection                  = $False;
            EnableUnauthenticatedSender                   = $True;
            EnableUnusualCharactersSafetyTips             = $False;
            EnableViaTag                                  = $True;
            Ensure                                        = "Present";
            ExcludedDomains                               = @();
            ExcludedSenders                               = @();
            Identity                                      = "Office365 AntiPhish Default";
            ImpersonationProtectionState                  = "Automatic";
            MailboxIntelligenceProtectionAction           = "NoAction";
            MailboxIntelligenceProtectionActionRecipients = @();
            MakeDefault                                   = $True;
            PhishThresholdLevel                           = 1;
            TargetedDomainActionRecipients                = @();
            TargetedDomainsToProtect                      = @();
            TargetedUserActionRecipients                  = @();
            TargetedUserProtectionAction                  = "NoAction";
            TargetedUsersToProtect                        = @();
        }
        EXOAtpPolicyForO365 4c795e63-fed5-41ab-96ad-ffe73ac04712
        {
            AllowClickThrough             = $False;
            AllowSafeDocsOpen             = $False;
            BlockUrls                     = @();
            Credential                    = $Credscredential;
            EnableATPForSPOTeamsODB       = $True;
            EnableSafeDocs                = $True;
            EnableSafeLinksForO365Clients = $True;
            Ensure                        = "Present";
            Identity                      = "Default";
            IsSingleInstance              = "Yes";
            TrackClicks                   = $False;
        }
        EXOCASMailboxPlan d273579d-cc83-4d74-ae49-28028c464d45
        {
            ActiveSyncEnabled    = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "ExchangeOnlineEnterprise-9f1cf3e8-0e67-4828-965f-a1f1b7bb4574";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan c48fbe87-911c-4e9c-aa0a-6a93a1cfa68b
        {
            ActiveSyncEnabled    = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "ExchangeOnline-f96143f7-b746-424f-a737-5a6814e441ea";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan 4dd182a5-b672-465f-9bb3-2e54a5249fbf
        {
            ActiveSyncEnabled    = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "ExchangeOnlineDeskless-c4f40da8-31ba-4755-865d-3f77e94af97d";
            ImapEnabled          = $False;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan 0f3bff1f-de5c-4d36-adad-4274484d0317
        {
            ActiveSyncEnabled    = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "ExchangeOnlineEssentials-90d8f017-76ab-47e2-b1bd-eb48c005a663";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOEmailAddressPolicy 765ce6e3-c4c8-4b20-878b-1aef132f94ed
        {
            Credential                        = $Credscredential;
            EnabledEmailAddressTemplates      = @("SMTP:@sharedsolutionit.onmicrosoft.com");
            EnabledPrimarySMTPAddressTemplate = "@sharedsolutionit.onmicrosoft.com";
            Ensure                            = "Present";
            ManagedByFilter                   = "";
            Name                              = "Default Policy";
            Priority                          = "Lowest";
        }
        EXOHostedConnectionFilterPolicy 636b682e-c3c8-4dc4-bc0d-b272ff4e5c11
        {
            AdminDisplayName     = "";
            Credential           = $Credscredential;
            EnableSafeList       = $False;
            Ensure               = "Present";
            Identity             = "Default";
            IPAllowList          = @();
            IPBlockList          = @();
            MakeDefault          = $False;
        }
        EXOHostedContentFilterPolicy e5839549-12f2-4e42-863b-a33220838da0
        {
            AddXHeaderValue                      = "";
            AdminDisplayName                     = "";
            BulkSpamAction                       = "MoveToJmf";
            BulkThreshold                        = 7;
            Credential                           = $Credscredential;
            DownloadLink                         = $False;
            EnableEndUserSpamNotifications       = $False;
            EnableLanguageBlockList              = $False;
            EnableRegionBlockList                = $False;
            EndUserSpamNotificationCustomSubject = "";
            EndUserSpamNotificationFrequency     = 3;
            EndUserSpamNotificationLanguage      = "Default";
            Ensure                               = "Present";
            HighConfidencePhishAction            = "Quarantine";
            HighConfidenceSpamAction             = "MoveToJmf";
            Identity                             = "Default";
            IncreaseScoreWithBizOrInfoUrls       = "Off";
            IncreaseScoreWithImageLinks          = "Off";
            IncreaseScoreWithNumericIps          = "Off";
            IncreaseScoreWithRedirectToOtherPort = "Off";
            InlineSafetyTipsEnabled              = $True;
            LanguageBlockList                    = @();
            MakeDefault                          = $True;
            MarkAsSpamBulkMail                   = "On";
            MarkAsSpamEmbedTagsInHtml            = "Off";
            MarkAsSpamEmptyMessages              = "Off";
            MarkAsSpamFormTagsInHtml             = "Off";
            MarkAsSpamFramesInHtml               = "Off";
            MarkAsSpamFromAddressAuthFail        = "Off";
            MarkAsSpamJavaScriptInHtml           = "Off";
            MarkAsSpamNdrBackscatter             = "Off";
            MarkAsSpamObjectTagsInHtml           = "Off";
            MarkAsSpamSensitiveWordList          = "Off";
            MarkAsSpamSpfRecordHardFail          = "Off";
            MarkAsSpamWebBugsInHtml              = "Off";
            ModifySubjectValue                   = "";
            PhishSpamAction                      = "MoveToJmf";
            PhishZapEnabled                      = $True;
            QuarantineRetentionPeriod            = 15;
            RedirectToRecipients                 = @();
            RegionBlockList                      = @();
            SpamAction                           = "MoveToJmf";
            SpamZapEnabled                       = $True;
            TestModeAction                       = "None";
            TestModeBccToRecipients              = @();
        }
        EXOHostedOutboundSpamFilterPolicy bdcc4d31-b83f-4848-8798-e3348aae9743
        {
            ActionWhenThresholdReached                = "BlockUserForToday";
            AdminDisplayName                          = "";
            AutoForwardingMode                        = "Automatic";
            BccSuspiciousOutboundAdditionalRecipients = @();
            BccSuspiciousOutboundMail                 = $False;
            Credential                                = $Credscredential;
            Ensure                                    = "Present";
            Identity                                  = "Default";
            NotifyOutboundSpam                        = $False;
            NotifyOutboundSpamRecipients              = @();
            RecipientLimitExternalPerHour             = 0;
            RecipientLimitInternalPerHour             = 0;
            RecipientLimitPerDay                      = 0;
        }
        EXOMailboxPlan 1093dfb4-c417-47e8-9908-daf1223a2af2
        {
            Credential               = $Credscredential;
            Ensure                   = "Present";
            Identity                 = "ExchangeOnlineEnterprise";
            IssueWarningQuota        = "98 GB (105,226,698,752 bytes)";
            MaxReceiveSize           = "36 MB (37,748,736 bytes)";
            MaxSendSize              = "35 MB (36,700,160 bytes)";
            ProhibitSendQuota        = "99 GB (106,300,440,576 bytes)";
            ProhibitSendReceiveQuota = "100 GB (107,374,182,400 bytes)";
            RetainDeletedItemsFor    = "14.00:00:00";
            RoleAssignmentPolicy     = "Default Role Assignment Policy";
        }
        EXOMailboxPlan 74afe985-5061-4c97-850e-2a29faa852b9
        {
            Credential               = $Credscredential;
            Ensure                   = "Present";
            Identity                 = "ExchangeOnline";
            IssueWarningQuota        = "49 GB (52,613,349,376 bytes)";
            MaxReceiveSize           = "36 MB (37,748,736 bytes)";
            MaxSendSize              = "35 MB (36,700,160 bytes)";
            ProhibitSendQuota        = "49.5 GB (53,150,220,288 bytes)";
            ProhibitSendReceiveQuota = "50 GB (53,687,091,200 bytes)";
            RetainDeletedItemsFor    = "14.00:00:00";
            RoleAssignmentPolicy     = "Default Role Assignment Policy";
        }
        EXOMailboxPlan 77d0305a-bb19-4aca-aa47-0bc740d1630b
        {
            Credential               = $Credscredential;
            Ensure                   = "Present";
            Identity                 = "ExchangeOnlineDeskless";
            IssueWarningQuota        = "1.96 GB (2,104,492,032 bytes)";
            MaxReceiveSize           = "36 MB (37,748,736 bytes)";
            MaxSendSize              = "35 MB (36,700,160 bytes)";
            ProhibitSendQuota        = "1.979 GB (2,125,463,552 bytes)";
            ProhibitSendReceiveQuota = "2 GB (2,147,483,648 bytes)";
            RetainDeletedItemsFor    = "14.00:00:00";
            RoleAssignmentPolicy     = "Default Role Assignment Policy";
        }
        EXOMailboxPlan 3b6af8d5-2618-404c-85a7-d8017c820b59
        {
            Credential               = $Credscredential;
            Ensure                   = "Present";
            Identity                 = "ExchangeOnlineEssentials";
            IssueWarningQuota        = "14.7 GB (15,783,165,952 bytes)";
            MaxReceiveSize           = "36 MB (37,748,736 bytes)";
            MaxSendSize              = "35 MB (36,700,160 bytes)";
            ProhibitSendQuota        = "14.85 GB (15,944,646,656 bytes)";
            ProhibitSendReceiveQuota = "15 GB (16,106,127,360 bytes)";
            RetainDeletedItemsFor    = "14.00:00:00";
            RoleAssignmentPolicy     = "Default Role Assignment Policy";
        }
        EXOMailTips b3036157-5603-4120-b6d0-6a8fc54c42ad
        {
            Credential                            = $Credscredential;
            Ensure                                = "Present";
            MailTipsAllTipsEnabled                = $True;
            MailTipsExternalRecipientsTipsEnabled = $False;
            MailTipsGroupMetricsEnabled           = $True;
            MailTipsLargeAudienceThreshold        = 25;
            MailTipsMailboxSourcedTipsEnabled     = $True;
            Organization                          = "$OrganizationName";
        }
        EXOMalwareFilterPolicy 0f47053e-df24-402d-8ebd-45f6d7098d15
        {
            Action                                 = "DeleteMessage";
            Credential                             = $Credscredential;
            CustomNotifications                    = $False;
            EnableExternalSenderAdminNotifications = $False;
            EnableExternalSenderNotifications      = $False;
            EnableFileFilter                       = $False;
            EnableInternalSenderAdminNotifications = $False;
            EnableInternalSenderNotifications      = $False;
            Ensure                                 = "Present";
            FileTypes                              = @("ace","ani","app","cab","docm","exe","iso","jar","jnlp","reg","scr","vbe","vbs");
            Identity                               = "Default";
            MakeDefault                            = $True;
            ZapEnabled                             = $True;
        }
        EXOMobileDeviceMailboxPolicy a3fefae9-95e4-4087-b58f-4537ff62d1a1
        {
            AllowApplePushNotifications              = $True;
            AllowBluetooth                           = "Allow";
            AllowBrowser                             = $True;
            AllowCamera                              = $True;
            AllowConsumerEmail                       = $True;
            AllowDesktopSync                         = $True;
            AllowExternalDeviceManagement            = $False;
            AllowGooglePushNotifications             = $True;
            AllowHTMLEmail                           = $True;
            AllowInternetSharing                     = $True;
            AllowIrDA                                = $True;
            AllowMicrosoftPushNotifications          = $True;
            AllowMobileOTAUpdate                     = $True;
            AllowNonProvisionableDevices             = $True;
            AllowPOPIMAPEmail                        = $True;
            AllowRemoteDesktop                       = $True;
            AllowSimplePassword                      = $True;
            AllowSMIMEEncryptionAlgorithmNegotiation = "AllowAnyAlgorithmNegotiation";
            AllowSMIMESoftCerts                      = $True;
            AllowStorageCard                         = $True;
            AllowTextMessaging                       = $True;
            AllowUnsignedApplications                = $True;
            AllowUnsignedInstallationPackages        = $True;
            AllowWiFi                                = $True;
            AlphanumericPasswordRequired             = $False;
            ApprovedApplicationList                  = @();
            AttachmentsEnabled                       = $True;
            Credential                               = $Credscredential;
            DeviceEncryptionEnabled                  = $False;
            DevicePolicyRefreshInterval              = "Unlimited";
            Ensure                                   = "Present";
            IrmEnabled                               = $True;
            IsDefault                                = $True;
            MaxAttachmentSize                        = "Unlimited";
            MaxCalendarAgeFilter                     = "All";
            MaxEmailAgeFilter                        = "All";
            MaxEmailBodyTruncationSize               = "Unlimited";
            MaxEmailHTMLBodyTruncationSize           = "Unlimited";
            MaxInactivityTimeLock                    = "Unlimited";
            MaxPasswordFailedAttempts                = "Unlimited";
            MinPasswordComplexCharacters             = 1;
            Name                                     = "Default";
            PasswordEnabled                          = $False;
            PasswordExpiration                       = "Unlimited";
            PasswordHistory                          = 0;
            PasswordRecoveryEnabled                  = $False;
            RequireDeviceEncryption                  = $False;
            RequireEncryptedSMIMEMessages            = $False;
            RequireEncryptionSMIMEAlgorithm          = "TripleDES";
            RequireManualSyncWhenRoaming             = $False;
            RequireSignedSMIMEAlgorithm              = "SHA1";
            RequireSignedSMIMEMessages               = $False;
            RequireStorageCardEncryption             = $False;
            UnapprovedInROMApplicationList           = @();
            UNCAccessEnabled                         = $True;
            WSSAccessEnabled                         = $True;
        }
        EXOOrganizationConfig 7e7f5ccd-069b-4671-a345-9b568eb19318
        {
            ActivityBasedAuthenticationTimeoutEnabled                 = $True;
            ActivityBasedAuthenticationTimeoutInterval                = "06:00:00";
            ActivityBasedAuthenticationTimeoutWithSingleSignOnEnabled = $True;
            AllowPlusAddressInRecipients                              = $True;
            AppsForOfficeEnabled                                      = $True;
            AsyncSendEnabled                                          = $True;
            AuditDisabled                                             = $False;
            AutoExpandingArchive                                      = $False;
            BookingsEnabled                                           = $True;
            BookingsPaymentsEnabled                                   = $False;
            BookingsSocialSharingRestricted                           = $False;
            ByteEncoderTypeFor7BitCharsets                            = 0;
            ConnectorsActionableMessagesEnabled                       = $True;
            ConnectorsEnabled                                         = $True;
            ConnectorsEnabledForOutlook                               = $True;
            ConnectorsEnabledForSharepoint                            = $True;
            ConnectorsEnabledForTeams                                 = $True;
            ConnectorsEnabledForYammer                                = $True;
            Credential                                                = $Credscredential;
            DefaultGroupAccessType                                    = "Private";
            DefaultPublicFolderDeletedItemRetention                   = "30.00:00:00";
            DefaultPublicFolderIssueWarningQuota                      = "1.7 GB (1,825,361,920 bytes)";
            DefaultPublicFolderMaxItemSize                            = "Unlimited";
            DefaultPublicFolderMovedItemRetention                     = "7.00:00:00";
            DefaultPublicFolderProhibitPostQuota                      = "2 GB (2,147,483,648 bytes)";
            DirectReportsGroupAutoCreationEnabled                     = $False;
            DistributionGroupNameBlockedWordsList                     = @();
            DistributionGroupNamingPolicy                             = "";
            ElcProcessingDisabled                                     = $False;
            EndUserDLUpgradeFlowsDisabled                             = $False;
            ExchangeNotificationEnabled                               = $True;
            ExchangeNotificationRecipients                            = @();
            IPListBlocked                                             = @();
            IsSingleInstance                                          = "Yes";
            LeanPopoutEnabled                                         = $False;
            LinkPreviewEnabled                                        = $True;
            MailTipsAllTipsEnabled                                    = $True;
            MailTipsExternalRecipientsTipsEnabled                     = $False;
            MailTipsGroupMetricsEnabled                               = $True;
            MailTipsLargeAudienceThreshold                            = 25;
            MailTipsMailboxSourcedTipsEnabled                         = $True;
            MessageRemindersEnabled                                   = $True;
            MobileAppEducationEnabled                                 = $True;
            OAuth2ClientProfileEnabled                                = $True;
            OutlookGifPickerDisabled                                  = $False;
            OutlookMobileGCCRestrictionsEnabled                       = $False;
            OutlookPayEnabled                                         = $True;
            PublicComputersDetectionEnabled                           = $False;
            PublicFoldersEnabled                                      = "Local";
            PublicFolderShowClientControl                             = $False;
            ReadTrackingEnabled                                       = $False;
            RemotePublicFolderMailboxes                               = @();
            SendFromAliasEnabled                                      = $False;
            SmtpActionableMessagesEnabled                             = $True;
            VisibleMeetingUpdateProperties                            = "Location,AllProperties:15";
            WebPushNotificationsDisabled                              = $False;
            WebSuggestedRepliesDisabled                               = $False;
        }
        EXOOwaMailboxPolicy ce526fdc-ea4d-4a2b-bee0-56eb63546ed8
        {
            ActionForUnknownFileAndMIMETypes                     = "Allow";
            ActiveSyncIntegrationEnabled                         = $True;
            AdditionalStorageProvidersAvailable                  = $True;
            AllAddressListsEnabled                               = $True;
            AllowCopyContactsToDeviceAddressBook                 = $True;
            AllowedFileTypes                                     = @(".rpmsg",".xlsx",".xlsm",".xlsb",".vstx",".vstm",".vssx",".vssm",".vsdx",".vsdm",".tiff",".pptx",".pptm",".ppsx",".ppsm",".docx",".docm",".zip",".xls",".wmv",".wma",".wav",".vtx",".vsx",".vst",".vss",".vsd",".vdx",".txt",".tif",".rtf",".pub",".ppt",".png",".pdf",".one",".mp3",".jpg",".gif",".doc",".csv",".bmp",".avi");
            AllowedMimeTypes                                     = @("image/jpeg","image/png","image/gif","image/bmp");
            BlockedFileTypes                                     = @(".settingcontent-ms",".printerexport",".appcontent-ms",".appref-ms",".vsmacros",".website",".msh2xml",".msh1xml",".diagcab",".webpnp",".ps2xml",".ps1xml",".mshxml",".gadget",".theme",".psdm1",".mhtml",".cdxml",".xbap",".vhdx",".pyzw",".pssc",".psd1",".psc2",".psc1",".msh2",".msh1",".jnlp",".aspx",".appx",".xnk",".xll",".wsh",".wsf",".wsc",".wsb",".vsw",".vhd",".vbs",".vbp",".vbe",".url",".udl",".tmp",".shs",".shb",".sct",".scr",".scf",".reg",".pyz",".pyw",".pyo",".pyc",".pst",".ps2",".ps1",".prg",".prf",".plg",".pif",".pcd",".osd",".ops",".msu",".mst",".msp",".msi",".msh",".msc",".mht",".mdz",".mdw",".mdt",".mde",".mdb",".mda",".mcf",".maw",".mav",".mau",".mat",".mas",".mar",".maq",".mam",".mag",".maf",".mad",".lnk",".ksh",".jse",".jar",".its",".isp",".ins",".inf",".htc",".hta",".hpj",".hlp",".grp",".fxp",".exe",".der",".csh",".crt",".cpl",".com",".cnt",".cmd",".chm",".cer",".bat",".bas",".asx",".asp",".app",".apk",".adp",".ade",".ws",".vb",".py",".pl",".js");
            BlockedMimeTypes                                     = @("application/x-javascript","application/javascript","application/msaccess","x-internet-signup","text/javascript","application/prg","application/hta","text/scriplet");
            ClassicAttachmentsEnabled                            = $True;
            ConditionalAccessPolicy                              = "Off";
            Credential                                           = $Credscredential;
            DefaultTheme                                         = "";
            DirectFileAccessOnPrivateComputersEnabled            = $True;
            DirectFileAccessOnPublicComputersEnabled             = $True;
            DisplayPhotosEnabled                                 = $True;
            Ensure                                               = "Present";
            ExplicitLogonEnabled                                 = $True;
            ExternalImageProxyEnabled                            = $True;
            ForceSaveAttachmentFilteringEnabled                  = $False;
            ForceSaveFileTypes                                   = @(".svgz",".html",".xml",".swf",".svg",".spl",".htm",".dir",".dcr");
            ForceSaveMimeTypes                                   = @("Application/x-shockwave-flash","Application/octet-stream","Application/futuresplash","Application/x-director","application/xml","image/svg+xml","text/html","text/xml");
            ForceWacViewingFirstOnPrivateComputers               = $False;
            ForceWacViewingFirstOnPublicComputers                = $False;
            FreCardsEnabled                                      = $True;
            GlobalAddressListEnabled                             = $True;
            GroupCreationEnabled                                 = $True;
            InstantMessagingEnabled                              = $True;
            InstantMessagingType                                 = "Ocs";
            InterestingCalendarsEnabled                          = $True;
            IRMEnabled                                           = $True;
            IsDefault                                            = $True;
            JournalEnabled                                       = $True;
            LocalEventsEnabled                                   = $False;
            LogonAndErrorLanguage                                = 0;
            Name                                                 = "OwaMailboxPolicy-Default";
            NotesEnabled                                         = $True;
            NpsSurveysEnabled                                    = $True;
            OnSendAddinsEnabled                                  = $False;
            OrganizationEnabled                                  = $True;
            OutboundCharset                                      = "AutoDetect";
            OutlookBetaToggleEnabled                             = $True;
            OWALightEnabled                                      = $True;
            PersonalAccountCalendarsEnabled                      = $True;
            PhoneticSupportEnabled                               = $False;
            PlacesEnabled                                        = $True;
            PremiumClientEnabled                                 = $True;
            PrintWithoutDownloadEnabled                          = $True;
            PublicFoldersEnabled                                 = $True;
            RecoverDeletedItemsEnabled                           = $True;
            ReferenceAttachmentsEnabled                          = $True;
            RemindersAndNotificationsEnabled                     = $True;
            ReportJunkEmailEnabled                               = $True;
            RulesEnabled                                         = $True;
            SatisfactionEnabled                                  = $True;
            SaveAttachmentsToCloudEnabled                        = $True;
            SearchFoldersEnabled                                 = $True;
            SetPhotoEnabled                                      = $True;
            SetPhotoURL                                          = "";
            SignaturesEnabled                                    = $True;
            SkipCreateUnifiedGroupCustomSharepointClassification = $True;
            TeamSnapCalendarsEnabled                             = $True;
            TextMessagingEnabled                                 = $True;
            ThemeSelectionEnabled                                = $True;
            UMIntegrationEnabled                                 = $True;
            UseGB18030                                           = $False;
            UseISO885915                                         = $False;
            UserVoiceEnabled                                     = $True;
            WacEditingEnabled                                    = $True;
            WacExternalServicesEnabled                           = $True;
            WacOMEXEnabled                                       = $False;
            WacViewingOnPrivateComputersEnabled                  = $True;
            WacViewingOnPublicComputersEnabled                   = $True;
            WeatherEnabled                                       = $True;
            WebPartsFrameOptionsType                             = "SameOrigin";
        }
        EXORemoteDomain ea5a57c0-a447-469b-8c49-dfc938c7c5ed
        {
            AllowedOOFType                       = "External";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "iso-8859-1";
            ContentType                          = "MimeHtmlText";
            Credential                           = $Credscredential;
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "*";
            Ensure                               = "Present";
            Identity                             = "Default";
            IsInternal                           = $False;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "Default";
            NonMimeCharacterSet                  = "iso-8859-1";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORoleAssignmentPolicy 9f4292c2-db66-4fc3-8d61-6f53023b4f75
        {
            Credential           = $Credscredential;
            Description          = "This policy grants end users the permission to set their options in Outlook on the web and perform other self-administration tasks.";
            Ensure               = "Present";
            IsDefault            = $True;
            Name                 = "Default Role Assignment Policy";
            Roles                = @("My ReadWriteMailbox Apps","MyTeamMailboxes","MyTextMessaging","MyContactInformation","MyBaseOptions","MyMailSubscriptions","MyProfileInformation","My Custom Apps","MyRetentionPolicies","My Marketplace Apps","MyDistributionGroups","MyDistributionGroupMembership","MyVoiceMail");
        }
        EXOSafeAttachmentPolicy 19a3ed3b-3266-4bcc-b21d-7c9637e06774
        {
            Action               = "Block";
            ActionOnError        = $True;
            AdminDisplayName     = "";
            Credential           = $Credscredential;
            Enable               = $True;
            Ensure               = "Present";
            Identity             = "Built-In Protection Policy";
            Redirect             = $False;
            RedirectAddress      = "";
        }
        EXOSafeLinksPolicy fc9d3b47-e7e5-4239-bd35-ca153ca18214
        {
            AdminDisplayName           = "";
            Credential                 = $Credscredential;
            CustomNotificationText     = "";
            DeliverMessageAfterScan    = $True;
            DoNotAllowClickThrough     = $False;
            DoNotRewriteUrls           = @();
            DoNotTrackUserClicks       = $False;
            EnableForInternalSenders   = $True;
            EnableOrganizationBranding = $False;
            EnableSafeLinksForTeams    = $True;
            Ensure                     = "Present";
            Identity                   = "Built-In Protection Policy";
            IsEnabled                  = $True;
            ScanUrls                   = $True;
        }
        EXOSharedMailbox d4a08101-9c49-4eb4-b7c6-a726481fd155
        {
            Aliases              = @("hr@sharedsolutionit.onmicrosoft.com");
            Credential           = $Credscredential;
            DisplayName          = "hr";
            Ensure               = "Present";
            PrimarySMTPAddress   = "hr@$OrganizationName";
        }
        EXOSharedMailbox 45c65110-384a-4d3a-ad02-95e88fc277bf
        {
            Aliases              = @("pm@sharedsolutionit.onmicrosoft.com");
            Credential           = $Credscredential;
            DisplayName          = "pm";
            Ensure               = "Present";
            PrimarySMTPAddress   = "pm@$OrganizationName";
        }
        EXOSharedMailbox 0db67d53-bb65-4372-80ba-89340d16bb41
        {
            Aliases              = @("accounting@sharedsolutionit.onmicrosoft.com");
            Credential           = $Credscredential;
            DisplayName          = "accounting";
            Ensure               = "Present";
            PrimarySMTPAddress   = "accounting@$OrganizationName";
        }
        EXOSharedMailbox bfbe362c-fd14-4291-a170-bb8b3a60f02c
        {
            Aliases              = @("support@sharedsolutionit.onmicrosoft.com");
            Credential           = $Credscredential;
            DisplayName          = "support";
            Ensure               = "Present";
            PrimarySMTPAddress   = "support@$OrganizationName";
        }
        EXOSharingPolicy f1c9ae58-2eb4-4b4e-a1d4-8847efa85988
        {
            Credential           = $Credscredential;
            Default              = $True;
            Domains              = @("Anonymous:CalendarSharingFreeBusyReviewer","*:CalendarSharingFreeBusySimple");
            Enabled              = $True;
            Ensure               = "Present";
            Name                 = "Default Sharing Policy";
        }
        O365OrgCustomizationSetting ac4a2b96-84ed-4cd6-af2d-20b14ffb6c06
        {
            Credential           = $Credscredential;
            Ensure               = "Present";
            IsSingleInstance     = "Yes";
        }
        ODSettings 682b18e8-05cc-4d41-aa94-0549716bfb96
        {
            BlockMacSync                              = $False;
            Credential                                = $Credscredential;
            DisableReportProblemDialog                = $False;
            DomainGuids                               = @();
            Ensure                                    = "Present";
            ExcludedFileExtensions                    = @();
            IsSingleInstance                          = "Yes";
            NotificationsInOneDriveForBusinessEnabled = $True;
            NotifyOwnersWhenInvitationsAccepted       = $True;
            ODBAccessRequests                         = "Unspecified";
            ODBMembersCanShare                        = "Unspecified";
            OneDriveForGuestsEnabled                  = $False;
            OneDriveStorageQuota                      = 1048576;
            OrphanedPersonalSitesRetentionPeriod      = 30;
        }
        SPOAccessControlSettings ad121ddb-86cc-4f66-aa37-f31c03e7c249
        {
            CommentsOnSitePagesDisabled  = $False;
            Credential                   = $Credscredential;
            DisallowInfectedFileDownload = $False;
            DisplayStartASiteOption      = $True;
            EmailAttestationReAuthDays   = 14;
            EmailAttestationRequired     = $True;
            ExternalServicesEnabled      = $True;
            IPAddressAllowList           = "";
            IPAddressEnforcement         = $False;
            IPAddressWACTokenLifetime    = 15;
            IsSingleInstance             = "Yes";
            SocialBarOnSitePagesDisabled = $False;
        }
        SPOBrowserIdleSignout 0388891a-b57c-45db-bfe4-faaf29596192
        {
            Credential           = $Credscredential;
            Enabled              = $False;
            IsSingleInstance     = "Yes";
            SignOutAfter         = "00:00:00";
            WarnAfter            = "00:00:00";
        }
        SPOHomeSite 4762461a-8a0c-40df-ac3f-9e059daab7f1
        {
            Credential           = $Credscredential;
            Ensure               = "Absent";
            IsSingleInstance     = "Yes";
        }
        SPOHubSite 4121d46e-696b-4c11-b361-56fd59804763
        {
            AllowedToJoin        = @();
            Credential           = $Credscredential;
            Ensure               = "Present";
            RequiresJoinApproval = $False;
            SiteDesignId         = "00000000-0000-0000-0000-000000000000";
            Title                = "External Share Hub";
            Url                  = "https://sharedsolutionit.sharepoint.com/sites/ExternalShareHub";
        }
        SPOHubSite d2a8877f-fb37-429f-8b7d-83e05c7d8757
        {
            AllowedToJoin        = @();
            Credential           = $Credscredential;
            Ensure               = "Present";
            RequiresJoinApproval = $False;
            SiteDesignId         = "00000000-0000-0000-0000-000000000000";
            Title                = "SharedSolutions Intranet";
            Url                  = "https://sharedsolutionit.sharepoint.com";
        }
        SPOHubSite 5ab9caaa-80b0-4fa1-b595-d1319fb11436
        {
            AllowedToJoin        = @();
            Credential           = $Credscredential;
            Ensure               = "Present";
            RequiresJoinApproval = $False;
            SiteDesignId         = "00000000-0000-0000-0000-000000000000";
            Title                = "Sunrise Management Hub";
            Url                  = "https://sharedsolutionit.sharepoint.com/sites/SunriseDEV";
        }
        SPOSharingSettings 7739c8b0-12d3-435d-81f0-1e01266a7c50
        {
            BccExternalSharingInvitations              = $False;
            Credential                                 = $Credscredential;
            DefaultLinkPermission                      = "Edit";
            DefaultSharingLinkType                     = "Internal";
            EnableGuestSignInAcceleration              = $False;
            FileAnonymousLinkType                      = "Edit";
            FolderAnonymousLinkType                    = "Edit";
            IsSingleInstance                           = "Yes";
            NotifyOwnersWhenItemsReshared              = $True;
            PreventExternalUsersFromResharing          = $True;
            ProvisionSharedWithEveryoneFolder          = $False;
            RequireAcceptingAccountMatchInvitedAccount = $True;
            SharingCapability                          = "ExternalUserSharingOnly";
            SharingDomainRestrictionMode               = "None";
            ShowAllUsersClaim                          = $False;
            ShowEveryoneClaim                          = $False;
            ShowEveryoneExceptExternalUsersClaim       = $True;
            ShowPeoplePickerSuggestionsForGuestUsers   = $False;
        }
        SPOSiteDesign 59493fbe-3ff5-4d9b-a721-7c00daeb5d5b
        {
            Credential           = $Credscredential;
            Description          = "Customer Landing site";
            Ensure               = "Present";
            IsDefault            = $False;
            PreviewImageAltText  = "site preview";
            PreviewImageUrl      = "https://southcentralus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=fFNQTw&docid=https%3A%2F%2Fsharedsolutionit.sharepoint.com%3A443%2F_api%2Fv2.0%2Fdrives%2Fb!xsnmXhujuUKa6IwMOn0PVzEpbUq3B5VGuG5s7AwAgCzO5viGg0XCRJZLeF9pakrM%2Fitems%2F013ZLRXPQ273NAL756YNDKKXIXCGWJKJ47%3Fversion%3DPublished&access_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIn0.eyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvc2hhcmVkc29sdXRpb25pdC5zaGFyZXBvaW50LmNvbUBkN2QzNWZhYy1lNTcyLTQyODMtOTY2Yi0zM2UxNzJlZmMxYmEiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjMxNTU2MDAwIiwiZXhwIjoiMTYzMTU3NzYwMCIsImVuZHBvaW50dXJsIjoiZ3hjK3RvYUxKQWsrU0hTM0tvdzVrUll6a2hEMlpLNGIzVytMRENrUVoxbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjEyMyIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik5XVmxObU01WXpZdFlUTXhZaTAwTW1JNUxUbGhaVGd0T0dNd1l6TmhOMlF3WmpVMyIsInNpZ25pbl9zdGF0ZSI6IltcImttc2lcIl0iLCJuYW1laWQiOiIwIy5mfG1lbWJlcnNoaXB8c2Vhbi5za2lubmVyQHNoYXJlZC1zb2x1dGlvbnMubmV0IiwibmlpIjoibWljcm9zb2Z0LnNoYXJlcG9pbnQiLCJpc3VzZXIiOiJ0cnVlIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MTAwMzIwMDExN2NiY2Y5OEBsaXZlLmNvbSIsInNlc3Npb25pZCI6IjNlYzc4YzJjLWUwMWMtNDY5YS1hNzI5LTJjYTE0Mjk4NjljMiIsInR0IjoiMCIsInVzZVBlcnNpc3RlbnRDb29raWUiOiIzIn0.b05JdWNzTHVaSExLd2dwbWR5UThPREZiU2JMTm14MnUvWXlYWkxzendWTT0&cTag=%22c%3A%7B05DAFE1A-BEFF-46C3-A55D-1711AC95279F%7D%2C3%22&encodeFailures=1&srcWidth=&srcHeight=&width=1459&height=841&action=Access";
            SiteScriptNames      = @("DavacoLists");
            Title                = "Davaco Customer";
            Version              = 1;
            WebTemplate          = "TeamSite";
        }
        SPOSiteScript 3ddd7e2d-f0b3-4186-8eb2-b7772786a06d
        {
            Content              = "{
    `"$schema`": `"schema.json`",
    `"actions`": [
        {
            `"verb`": `"createSPList`",
            `"listName`": `"Program Sites`",
            `"templateType`": 103,
            `"subactions`": [
              {
                `"verb`": `"setDescription`",
                `"description`": `"List of Program Sites`"
              }
            ]
          },
          {
            `"verb`": `"createSPList`",
            `"listName`": `"Contacts`",
            `"templateType`": 105,
            `"subactions`": [
              {
                `"verb`": `"setDescription`",
                `"description`": `"List of Customer Contacts`"
              }
            ]
          }
    ],
    `"bindata`": { },
    `"version`": 1
  }";
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "10a6c07c-7cc8-4413-b955-3af5940f3735";
            Title                = "DavacoLists";
        }
        SPOTenantCdnPolicy e1c6f49b-eda7-45b3-82ef-a97c202437e1
        {
            CDNType                              = "Public";
            Credential                           = $Credscredential;
            ExcludeRestrictedSiteClassifications = @();
            IncludeFileExtensions                = @();
        }
        SPOTenantSettings 8fc0ed4c-2adc-4d11-acfd-fed3d851602c
        {
            ApplyAppEnforcedRestrictionsToAdHocRecipients = $True;
            ConditionalAccessPolicy                       = "AllowFullAccess";
            Credential                                    = $Credscredential;
            FilePickerExternalImageSearchEnabled          = $True;
            HideDefaultThemes                             = $False;
            IsSingleInstance                              = "Yes";
            LegacyAuthProtocolsEnabled                    = $True;
            MarkNewFilesSensitiveByDefault                = "BlockExternalSharing";
            MaxCompatibilityLevel                         = "15";
            MinCompatibilityLevel                         = "15";
            NotificationsInSharePointEnabled              = $True;
            OfficeClientADALDisabled                      = $False;
            OwnerAnonymousNotification                    = $True;
            PublicCdnAllowedFileTypes                     = "CSS,EOT,GIF,ICO,JPEG,JPG,JS,MAP,PNG,SVG,TTF,WOFF";
            PublicCdnEnabled                              = $False;
            SearchResolveExactEmailOrUPN                  = $False;
            SignInAccelerationDomain                      = "";
            UseFindPeopleInPeoplePicker                   = $False;
            UsePersistentCookiesForExplorerView           = $False;
            UserVoiceForFeedbackEnabled                   = $True;
        }
        TeamsCallingPolicy 4832800d-cf30-48a8-b829-2dd2af2bb7c9
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Global";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy b0caea96-fd1c-4a0b-822b-33b4c9483777
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCalling";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 821723f9-f748-43d2-8afc-9cdfe2bfde79
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCallingPreventTollBypass";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $True;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy f7542962-4d15-43ab-975b-a487ba1c6ca3
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCallingPreventForwardingtoPhone";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 4d4d792d-140e-4999-bf50-da58b7453f7a
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $False;
            AllowCallGroups                   = $False;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $False;
            AllowPrivateCalling               = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "AlwaysDisabled";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:DisallowCalling";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsChannelsPolicy 78d81568-c478-43b0-b963-08cb048ecc30
        {
            AllowChannelSharingToExternalUser             = $True;
            AllowOrgWideTeamCreation                      = $True;
            AllowPrivateChannelCreation                   = $True;
            AllowPrivateTeamDiscovery                     = $True;
            AllowSharedChannelCreation                    = $True;
            AllowUserToParticipateInExternalSharedChannel = $True;
            Credential                                    = $Credscredential;
            Ensure                                        = "Present";
            Identity                                      = "Global";
        }
        TeamsChannelsPolicy 767b69f3-d86d-4ce4-a3ce-60469f2547ac
        {
            AllowChannelSharingToExternalUser             = $True;
            AllowOrgWideTeamCreation                      = $True;
            AllowPrivateChannelCreation                   = $True;
            AllowPrivateTeamDiscovery                     = $True;
            AllowSharedChannelCreation                    = $True;
            AllowUserToParticipateInExternalSharedChannel = $True;
            Credential                                    = $Credscredential;
            Ensure                                        = "Present";
            Identity                                      = "Tag:Default";
        }
        TeamsClientConfiguration d39af799-2cbf-432f-bea1-2d0cc8807d77
        {
            AllowBox                         = $True;
            AllowDropBox                     = $True;
            AllowEgnyte                      = $True;
            AllowEmailIntoChannel            = $True;
            AllowGoogleDrive                 = $True;
            AllowGuestUser                   = $True;
            AllowOrganizationTab             = $True;
            AllowResourceAccountSendMessage  = $True;
            AllowScopedPeopleSearchandAccess = $False;
            AllowShareFile                   = $True;
            AllowSkypeBusinessInterop        = $True;
            ContentPin                       = "RequiredOutsideScheduleMeeting";
            Credential                       = $Credscredential;
            Identity                         = "Global";
            ResourceAccountContentAccess     = "NoAccess";
        }
        TeamsEmergencyCallingPolicy 6212dcac-f046-4dcc-9a87-415f39971a75
        {
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "Global";
        }
        TeamsEmergencyCallRoutingPolicy 394b85bf-643a-4c0f-9997-785439b141b9
        {
            AllowEnhancedEmergencyServices = $False;
            Credential                     = $Credscredential;
            Ensure                         = "Present";
            Identity                       = "Global";
        }
        TeamsFederationConfiguration 249d7e72-002d-49a4-be90-5d9b6f49a0de
        {
            AllowFederatedUsers       = $True;
            AllowPublicUsers          = $True;
            AllowTeamsConsumer        = $True;
            AllowTeamsConsumerInbound = $True;
            Credential                = $Credscredential;
            Identity                  = "Global";
        }
        TeamsGuestCallingConfiguration 16227f7f-bca5-4e33-8c9a-21b0b068506f
        {
            AllowPrivateCalling  = $True;
            Credential           = $Credscredential;
            Identity             = "Global";
        }
        TeamsGuestMeetingConfiguration a1fc4370-9585-410f-96ae-4bc73c83c44f
        {
            AllowIPVideo         = $True;
            AllowMeetNow         = $True;
            Credential           = $Credscredential;
            Identity             = "Global";
            ScreenSharingMode    = "EntireScreen";
        }
        TeamsGuestMessagingConfiguration b2da6b54-0dfc-4c9b-88c4-ddf382eb1af0
        {
            AllowGiphy             = $True;
            AllowImmersiveReader   = $True;
            AllowMemes             = $True;
            AllowStickers          = $True;
            AllowUserChat          = $True;
            AllowUserDeleteMessage = $True;
            AllowUserEditMessage   = $True;
            Credential             = $Credscredential;
            GiphyRatingType        = "Moderate";
            Identity               = "Global";
        }
        TeamsMeetingBroadcastConfiguration a0b8364f-a168-4eb9-a566-5da5c3de2916
        {
            AllowSdnProviderForBroadcastMeeting = $False;
            Credential                          = $Credscredential;
            Identity                            = "Global";
            SdnApiTemplateUrl                   = "";
            SdnApiToken                         = "$ConfigurationData.Settings.SdnApiToken";
            SdnLicenseId                        = "";
            SdnProviderName                     = "";
            SupportURL                          = "https://support.office.com/home/contact";
        }
        TeamsMeetingBroadcastPolicy 77d0a179-28ae-4bea-9ac6-d06c960b5169
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Credential                      = $Credscredential;
            Ensure                          = "Present";
            Identity                        = "Global";
        }
        TeamsMeetingBroadcastPolicy 2ceed1c5-66b6-44c9-a1a2-146b15bd2aac
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Credential                      = $Credscredential;
            Ensure                          = "Present";
            Identity                        = "Tag:Default";
        }
        TeamsMeetingConfiguration 64080e9c-ed1a-462d-8917-7594fa931f05
        {
            ClientAppSharingPort        = 50040;
            ClientAppSharingPortRange   = 20;
            ClientAudioPort             = 50000;
            ClientAudioPortRange        = 20;
            ClientMediaPortRangeEnabled = $True;
            ClientVideoPort             = 50020;
            ClientVideoPortRange        = 20;
            Credential                  = $Credscredential;
            DisableAnonymousJoin        = $False;
            EnableQoS                   = $False;
            Identity                    = "Global";
        }
        TeamsMeetingPolicy b15c6f7c-1a0d-43a2-bec6-0c5d38d14fbf
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Credential                                 = $Credscredential;
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            Identity                                   = "Global";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy 1c01d81f-6ea5-4e87-af33-51bed411020f
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Credential                                 = $Credscredential;
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            Identity                                   = "Tag:AllOn";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy ed533933-b861-43aa-9f99-36c8415e9ebf
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Credential                                 = $Credscredential;
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            Identity                                   = "Tag:RestrictedAnonymousAccess";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy 86ef8a39-1f5b-4232-acad-667cd55a2458
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $False;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $False;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $False;
            AllowPowerPointSharing                     = $False;
            AllowPrivateMeetingScheduling              = $False;
            AllowPrivateMeetNow                        = $False;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $False;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $False;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Credential                                 = $Credscredential;
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            Identity                                   = "Tag:AllOff";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Disabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "Disabled";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy 67399d26-8042-460e-9eda-f76fe9fcb0b5
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $False;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Credential                                 = $Credscredential;
            Description                                = "Do not assign. This policy is similar to global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            Identity                                   = "Tag:RestrictedAnonymousNoRecording";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy 9e4ab6ec-609c-41dd-a5c0-9e270f22b855
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Credential                                 = $Credscredential;
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            Identity                                   = "Tag:Default";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy faa38f9c-fee2-4cec-82c1-77ecb6ccea87
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $False;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Credential                                 = $Credscredential;
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            Identity                                   = "Tag:Kiosk";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMessagingPolicy db580cdf-ab40-402f-97d4-fc3219445fc0
        {
            AllowGiphy                    = $True;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Credential                    = $Credscredential;
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            Identity                      = "Global";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy de8a4ae5-58b3-4d55-bc4d-34b2a4717284
        {
            AllowGiphy                    = $True;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Credential                    = $Credscredential;
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            Identity                      = "Default";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy f93c3a00-d338-46e7-b47c-97d5f2be2a5d
        {
            AllowGiphy                    = $False;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $True;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Credential                    = $Credscredential;
            Ensure                        = "Present";
            GiphyRatingType               = "Strict";
            Identity                      = "EduFaculty";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy c9decc90-2b24-49aa-996f-56e2bc39a419
        {
            AllowGiphy                    = $False;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Credential                    = $Credscredential;
            Ensure                        = "Present";
            GiphyRatingType               = "Strict";
            Identity                      = "EduStudent";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsTenantDialPlan 4f809e4b-a7f0-4e85-8d84-2d5d380323a2
        {
            Credential            = $Credscredential;
            Ensure                = "Present";
            Identity              = "Global";
            NormalizationRules    = @();
            OptimizeDeviceDialing = $False;
            SimpleName            = "DefaultTenantDialPlan";
        }
        TeamsUpgradeConfiguration df0ec516-6fb2-4b7d-9095-d28d25c2bd48
        {
            Credential           = $Credscredential;
            DownloadTeams        = $True;
            IsSingleInstance     = "Yes";
            SfBMeetingJoinUx     = "NativeLimitedClient";
        }
        TeamsUpgradePolicy 19f3248c-96f6-4b12-8ea2-130c5b1eba38
        {
            Credential             = $Credscredential;
            Identity               = "Global";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 7a92a7b1-237a-479e-a621-c144af5e44b5
        {
            Credential             = $Credscredential;
            Identity               = "UpgradeToTeams";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy b8c7964d-7142-4e95-aea8-4e06a3b53165
        {
            Credential             = $Credscredential;
            Identity               = "Islands";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 63187ff8-a22e-48bb-9d7e-6f910ec7fae4
        {
            Credential             = $Credscredential;
            Identity               = "IslandsWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy f9bcfa39-6bd1-4001-980e-6dcd5aef50ab
        {
            Credential             = $Credscredential;
            Identity               = "SfBOnly";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 13bf7766-06af-4aeb-adf5-443a860fe913
        {
            Credential             = $Credscredential;
            Identity               = "SfBOnlyWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 4d4be670-c4ff-4d81-a7ca-5a4e36fe27dd
        {
            Credential             = $Credscredential;
            Identity               = "SfBWithTeamsCollab";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 17129e8f-70f3-4a2d-9e7d-404098ef5283
        {
            Credential             = $Credscredential;
            Identity               = "SfBWithTeamsCollabWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy d1831e4a-5c98-4827-8680-17fab9cb5a72
        {
            Credential             = $Credscredential;
            Identity               = "SfBWithTeamsCollabAndMeetings";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 1b0d30df-415b-43f8-85a1-7be935064487
        {
            Credential             = $Credscredential;
            Identity               = "SfBWithTeamsCollabAndMeetingsWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsVoiceRoute eb0e742e-a333-4067-be04-d868c9e378ab
        {
            Credential            = $Credscredential;
            Ensure                = "Present";
            Identity              = "LocalRoute";
            NumberPattern         = "^(\+1[0-9]{10})$";
            OnlinePstnGatewayList = @();
            OnlinePstnUsages      = @();
            Priority              = 0;
        }
        TeamsVoiceRoutingPolicy 807a9bac-5a95-465d-8cef-be8813658a2a
        {
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "Global";
            OnlinePstnUsages     = @();
        }
    }
}
M365TenantConfig -ConfigurationData .\ConfigurationData.psd1 -Credential $Credential
