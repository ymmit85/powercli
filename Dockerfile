FROM mcr.microsoft.com/powershell
RUN pwsh -c "set-psrepository -name psgallery -InstallationPolicy Trusted"
RUN pwsh -c "install-module -name VMware.PowerCLI"

RUN pwsh -c "Install-Module -Name PowervRA -RequiredVersion 3.7.0"

RUN pwsh -c "Install-Module -Name AsBuiltReport.VMware.vSphere"

RUN pwsh -c "Set-PowerCLIConfiguration -Scope AllUsers -ParticipateInCeip:\$false -InvalidCertificateAction Ignore -Confirm:\$false"