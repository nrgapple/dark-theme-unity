# How to get dark theme Unity

(Found in this post: https://www.reddit.com/r/Unity3D/comments/a687ua/help_needed_unity_20183_dark_editor_theme/)

1. Download Hex Editor (admin): https://mh-nexus.de/en/downloads.php?product=HxD20

2. Open Unity.exe and find  

|Version|Hex|
|---|---|
| 2018.4.4 | `75 04 33 C0 EB 02 8B 03 48 8B 4C`  |
| 2017.4.18f1 | `84 C0 75 08 33 C0 48 83 C4 20 5B C3 8B 03 48` |
| 2017.4.30f1 | `84 C0 75 08 33 C0 48 83 C4 20 5B C3 8B 03 48` |
| 2018.4.1f1 | `84 C0 75 08 33 C0 48 83 C4 30 5B C3 8B 03 48` |


3. Change `75` to `74`

4. Go to registry editor (admin): `Computer\HKEY_USERS\S-1-5-21-1804879693-1413764731-1264475144-52712\Software\Unity Technologies\Unity Editor 5.x`

5. Change `UserSkin_h307680651` to `1`

6. Open Unity!


## Working with the registry in Powershell

https://blog.netwrix.com/2018/09/11/how-to-get-edit-create-and-delete-registry-keys-with-powershell/

*You don't need to be admin.*

Get all the drives and the registries.

``` Powershell
> get-psdrive
```

Move to current user.

``` Powershell
> cd HKCU:\
```

Sets the value of property to 1. 

``` Powershell
> Set-ItemProperty -path "HKCU:\Software\Unity Technologies\Unity Editor 5.x" -Name UserSkin_h307680651 -value 1
```

Get the value of the property

``` Powershell
> Get-ItemProperty -path "HKCU:\Software\Unity Technologies\Unity Editor 5.x" -Name UserSkin_h307680651
```


Could be usable to add to registry for cmd:

``` Cmd
> reg add "HKEY_CURRENT_USER\Software\Unity Technologies\Unity Editor 5.x" /v UserSkin_h307680651 /t REG_DWORD /d "1" /f
```
