param(
    [String] $ProjectName,
    [String] $BranchName
)

[String] $WorkDir = Split-Path $MyInvocation.MyCommand.Path -Parent
[String] $MyScriptName = Split-Path $MyInvocation.MyCommand.Path -Leaf

function write-log
{
    param(
        [string] $message
    )
    $message | Out-File -filepath ("{0}\{1}.log" -f $WorkDir, $MyScriptName) -Append
}

# debug
pwd | write-log
Get-ChildItem -Path $WorkDir | write-log

$installer = Get-ChildItem -Path $WorkDir -Filter "chef-client-*"

# debug
$installer | write-log

msiexec /qn /i $installer.FullName | Out-Null
$env:Path += ";C:\opscode\chef\bin"

Set-Location $WorkDir

Configuration OpenMall
{
    Node localhost
    {
        Archive UnZip
        {
            Path = "{0}\{1}.zip" -f $WorkDir, $BranchName
            Destination = "C:\"
            Ensure = "Present"
        }
    }
}
OpenMall -OutputPath .
Start-DscConfiguration .\OpenMall -Wait -Verbose

#chef-solo -c C:\builder-master\solo.rb -o mc_server::setup -l debug -L chef.log
chef-solo -c ('C:\' + $ProjectName + '-' + $BranchName + '\solo.rb') -o mc_server::setup -l debug -L chef.log
