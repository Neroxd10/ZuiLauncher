.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NETWORK_SETTING_CODE:I = 0x63


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "NOTHING"

    :goto_0
    return-object p0
.end method

.method public static getNetworkStrategy(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;->isConnectionFastByNetworkStrategy(II)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0
.end method

.method public static is2GNetWork(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;->isConnectionFast(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static isConnectionByNetworkStrategy(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;)Z
    .locals 3

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;->getNetworkStrategy(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne p1, v2, :cond_2

    if-eq p0, v2, :cond_1

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_5

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne p1, v2, :cond_5

    if-eq p0, v2, :cond_4

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0

    :cond_5
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0
.end method

.method public static isConnectionFast(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isConnectionFastByNetworkStrategy(II)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :cond_1
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isConnectionType(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWIFI(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static opentNetworkSettingActivity(Landroid/content/Context;)V
    .locals 4

    const-string v0, "android.settings.SETTINGS"

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/16 v3, 0x63

    if-lt v1, v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    check-cast p0, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method
