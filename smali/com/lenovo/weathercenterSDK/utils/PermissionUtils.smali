.class public Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLocatePermission(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static checkNetWorkPermission(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLocateEnable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNetworkEnable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0
.end method

.method public static locationNetWorkEnable(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->checkNetWorkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x3ec

    return p0

    :cond_0
    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x3ed

    return p0

    :cond_1
    const/16 p0, 0xc8

    return p0
.end method

.method public static locationNetWorkPermission(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->checkNetWorkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x3ec

    return p0

    :cond_0
    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->checkLocatePermission(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x3ee

    return p0

    :cond_1
    const/16 p0, 0xc8

    return p0
.end method

.method public static netWorkCode(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->checkNetWorkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x3ec

    return p0

    :cond_0
    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x3ed

    return p0

    :cond_1
    const/16 p0, 0xc8

    return p0
.end method
