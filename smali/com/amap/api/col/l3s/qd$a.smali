.class final Lcom/amap/api/col/l3s/qd$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/qd;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/qd;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/qd$a;->a:Lcom/amap/api/col/l3s/qd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/qd;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/qd$a;-><init>(Lcom/amap/api/col/l3s/qd;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/qd$a;->a:Lcom/amap/api/col/l3s/qd;

    invoke-static {p1}, Lcom/amap/api/col/l3s/qd;->a(Lcom/amap/api/col/l3s/qd;)Lcom/amap/api/col/l3s/pk;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/amap/api/col/l3s/qd$a;->a:Lcom/amap/api/col/l3s/qd;

    invoke-static {p0}, Lcom/amap/api/col/l3s/qd;->a(Lcom/amap/api/col/l3s/qd;)Lcom/amap/api/col/l3s/pk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide p0

    sget-wide v0, Lcom/amap/api/col/l3s/pk;->g:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x1324

    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide p0

    sput-wide p0, Lcom/amap/api/col/l3s/pk;->g:J

    :cond_2
    return-void

    :cond_3
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/col/l3s/qd$a;->a:Lcom/amap/api/col/l3s/qd;

    invoke-static {p1}, Lcom/amap/api/col/l3s/qd;->a(Lcom/amap/api/col/l3s/qd;)Lcom/amap/api/col/l3s/pk;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/amap/api/col/l3s/qd$a;->a:Lcom/amap/api/col/l3s/qd;

    invoke-static {p0}, Lcom/amap/api/col/l3s/qd;->a(Lcom/amap/api/col/l3s/qd;)Lcom/amap/api/col/l3s/pk;

    move-result-object p0

    iget-object p1, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    :try_start_1
    iget-object p2, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_2
    const-string v0, "Aps"

    const-string v1, "onReceive part"

    invoke-static {p2, v0, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move p2, p1

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    :cond_5
    const/4 v0, 0x1

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_6

    if-eq p2, p1, :cond_6

    goto :goto_1

    :cond_6
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/pk;->x:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    :goto_1
    return-void

    :catchall_1
    move-exception p0

    const-string p1, "MapNetLocation"

    const-string p2, "onReceive"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method
