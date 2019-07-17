try
{
    Set-ItemProperty -path "HKCU:\Software\Unity Technologies\Unity Editor 5.x" -Name UserSkin_h307680651 -value 1
}
catch
{
    $ErrorMessage = $_Exception.Message
    "Error finding registry."
    $ErrorMessage
    break
}

"Success."
