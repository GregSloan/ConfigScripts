Param([string]$es_name,[string]$selector, [string]$server, [string]$user, [string]$pass)

$exeloc="& 'C:\Program Files (x86)\QualiSystems\TestShell\ExecutionServer\QsExecutionServerConsoleConfig.exe' "

$params = '/s:' + $server,'/u:' + $user,'/p:' + $pass, '/esn:' + $es_name, '/a:"{''Execution Server Selector'':''' + $selector + '''}"'
$cmnd = $exeloc + $params

Invoke-Expression $cmnd
