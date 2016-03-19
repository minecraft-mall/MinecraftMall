﻿$m_home = 'C:\mall'
mkdir C:\mall

$url = 'https://opscode-omnibus-packages.s3.amazonaws.com/windows/2012r2/i386/chef-client-12.7.2-1-x86.msi'
$uri = New-Object System.Uri($url)
$file = Split-Path $uri.AbsolutePath -Leaf
$cli = New-Object System.Net.WebClient
$cli.DownloadFile($uri, (Join-Path $m_home $file))


$url = 'https://github.com/minecraft-mall/builder/archive/master.zip'
$uri = New-Object System.Uri($url)
$file = Split-Path $uri.AbsolutePath -Leaf
$cli = New-Object System.Net.WebClient
$cli.DownloadFile($uri, (Join-Path $m_home $file))

$installer = "{0}\chef-client-12.7.2-1-x86.msi" -f $m_home
msiexec /qn /i $installer | Out-Null

$env:Path += ";C:\opscode\chef\bin"

cd $m_home

Configuration OpenMall
{
    Node localhost
    {
        Archive UnZip
        {
            Path = "{0}\master.zip" -f $m_home
            Destination = "C:\"
            Ensure = "Present"
        }
    }
}
OpenMall -OutputPath .
Start-DscConfiguration .\OpenMall -Wait -Verbose

# "$m_home\master.zip" is extracted to "C:\builder-master\"

chef-solo -c C:\builder-master\solo.rb -o mc_server::setup -l debug -L chef.log