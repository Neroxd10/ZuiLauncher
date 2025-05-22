.class public Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;,
        Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;
    }
.end annotation


# instance fields
.field private isNetReceiverRegistered:Z

.field private mNetworkListener:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;

.field private netChangeReceiver:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->isNetReceiverRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->netChangeReceiver:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;

    return-void
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    aget-object v3, p0, v2

    if-eqz v3, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v1, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public registerNetChangeReceiver(Landroid/content/Context;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->isNetReceiverRegistered:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->netChangeReceiver:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->mNetworkListener:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;

    invoke-direct {v1, v2}, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;-><init>(Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;)V

    iput-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->netChangeReceiver:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->netChangeReceiver:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->netChangeReceiver:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->netChangeReceiver:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;

    :cond_2
    :goto_0
    iput-boolean p2, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->isNetReceiverRegistered:Z

    return-void
.end method

.method public setNetworkListener(Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;->mNetworkListener:Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;

    return-void
.end method
