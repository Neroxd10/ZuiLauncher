.class public final Lcom/amap/api/col/l3s/ok;
.super Ljava/lang/Object;
.source ""


# static fields
.field static d:J

.field static e:J

.field static f:J

.field public static g:J

.field static h:J

.field public static s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static t:J

.field static u:I

.field public static w:J


# instance fields
.field private A:Lcom/amap/api/col/l3s/ob;

.field a:Landroid/net/wifi/WifiManager;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/np;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/content/Context;

.field j:Z

.field k:Ljava/lang/StringBuilder;

.field l:Z

.field m:Z

.field n:Z

.field o:Ljava/lang/String;

.field p:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Z

.field v:Landroid/net/ConnectivityManager;

.field volatile x:Z

.field private volatile y:Landroid/net/wifi/WifiInfo;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amap/api/col/l3s/ok;->s:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/col/l3s/ok;->t:J

    const/4 v2, 0x0

    sput v2, Lcom/amap/api/col/l3s/ok;->u:I

    sput-wide v0, Lcom/amap/api/col/l3s/ok;->w:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ok;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/ok;->k:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/ok;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/ok;->m:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/ok;->n:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/ok;->y:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/amap/api/col/l3s/ok;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/ok;->p:Ljava/util/TreeMap;

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/ok;->q:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->r:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/ok;->v:Landroid/net/ConnectivityManager;

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/amap/api/col/l3s/ok;->z:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->x:Z

    iput-object p2, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ok;->i:Landroid/content/Context;

    return-void
.end method

.method private static a(I)Z
    .locals 3

    const/16 v0, 0x14

    :try_start_0
    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Aps"

    const-string v2, "wifiSigFine"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static b()J
    .locals 4

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/ok;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private c(Z)V
    .locals 11

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/ok;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ok;->g()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->p:Ljava/util/TreeMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ok;->p:Ljava/util/TreeMap;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->r:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    iget-object v3, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_4

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, ""

    :goto_1
    invoke-static {v4}, Lcom/amap/api/col/l3s/pc;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x14

    if-le v0, v4, :cond_5

    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v4}, Lcom/amap/api/col/l3s/ok;->a(I)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_5
    iget-boolean v4, p0, Lcom/amap/api/col/l3s/ok;->r:Z

    if-eqz v4, :cond_7

    if-eqz p1, :cond_7

    :try_start_1
    new-instance v4, Lcom/amap/api/col/l3s/np;

    invoke-direct {v4, v1}, Lcom/amap/api/col/l3s/np;-><init>(Z)V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v5, v4, Lcom/amap/api/col/l3s/np;->b:Ljava/lang/String;

    iget v5, v3, Landroid/net/wifi/ScanResult;->frequency:I

    iput v5, v4, Lcom/amap/api/col/l3s/np;->d:I

    iget-wide v5, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v5, v4, Lcom/amap/api/col/l3s/np;->e:J

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/amap/api/col/l3s/np;->a(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/amap/api/col/l3s/np;->a:J

    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    int-to-short v5, v5

    iput v5, v4, Lcom/amap/api/col/l3s/np;->c:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_6

    iget-wide v5, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    div-long/2addr v9, v7

    long-to-int v5, v9

    int-to-short v5, v5

    iput-short v5, v4, Lcom/amap/api/col/l3s/np;->g:S

    if-gez v5, :cond_6

    iput-short v1, v4, Lcom/amap/api/col/l3s/np;->g:S

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/amap/api/col/l3s/np;->f:J

    iget-object v5, p0, Lcom/amap/api/col/l3s/ok;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_7
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v5, "<unknown ssid>"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    const-string v4, "unkwn"

    :goto_2
    iput-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_9
    iget-object v4, p0, Lcom/amap/api/col/l3s/ok;->p:Ljava/util/TreeMap;

    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v5, v5, 0x19

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    iget-object p1, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ok;->p:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->p:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    :cond_d
    :goto_4
    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/ok;->g:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-wide v6, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/amap/api/col/l3s/ok;->s:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/amap/api/col/l3s/ok;->s:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    sput-object v2, Lcom/amap/api/col/l3s/ok;->s:Ljava/util/HashMap;

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    :goto_1
    sput-wide v2, Lcom/amap/api/col/l3s/ok;->t:J

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    goto :goto_1

    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/amap/api/col/l3s/ok;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/col/l3s/ok;->o:Ljava/lang/String;

    const-string p0, "WifiManagerWrapper"

    const-string v2, "getScanResults"

    invoke-static {v0, p0, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ok;->o:Ljava/lang/String;

    :cond_4
    :goto_3
    return-object v1
.end method

.method private q()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method private r()Z
    .locals 11

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/ok;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/ok;->v:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/ok;->i:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-static {v2, v4}, Lcom/amap/api/col/l3s/pc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/amap/api/col/l3s/ok;->v:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/ok;->v:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/ok;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x26ac

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    return v3

    :cond_2
    sget v2, Lcom/amap/api/col/l3s/ok;->u:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    iget-wide v5, p0, Lcom/amap/api/col/l3s/ok;->z:J

    const-wide/16 v7, 0x7530

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3s/ov;->n()J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long v2, v5, v9

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3s/ov;->n()J

    move-result-wide v5

    goto :goto_0

    :cond_4
    move-wide v5, v7

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v2, v7, :cond_5

    cmp-long v0, v0, v5

    if-gez v0, :cond_5

    return v3

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3s/ok;->d:J

    sget v0, Lcom/amap/api/col/l3s/ok;->u:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    add-int/2addr v0, v4

    sput v0, Lcom/amap/api/col/l3s/ok;->u:I

    :cond_6
    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p0

    return p0

    :cond_7
    return v3
.end method

.method private s()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->i:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->h(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private t()V
    .locals 7

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    const/16 v2, 0x14

    sget-wide v3, Lcom/amap/api/col/l3s/ok;->e:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-wide v3, Lcom/amap/api/col/l3s/ok;->g:J

    sput-wide v3, Lcom/amap/api/col/l3s/ok;->h:J

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->u()V

    sget-wide v3, Lcom/amap/api/col/l3s/ok;->e:J

    sub-long/2addr v0, v3

    cmp-long p0, v0, v5

    if-ltz p0, :cond_1

    :goto_0
    if-lez v2, :cond_1

    sget-wide v0, Lcom/amap/api/col/l3s/ok;->g:J

    sget-wide v3, Lcom/amap/api/col/l3s/ok;->h:J

    cmp-long p0, v0, v3

    if-nez p0, :cond_1

    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private u()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3s/ok;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "WifiManager"

    const-string v1, "wifiScan"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private v()V
    .locals 4

    sget-wide v0, Lcom/amap/api/col/l3s/ok;->h:J

    sget-wide v2, Lcom/amap/api/col/l3s/ok;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->p()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "WifiManager"

    const-string v3, "updateScanResult"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-wide v1, Lcom/amap/api/col/l3s/ok;->g:J

    sput-wide v1, Lcom/amap/api/col/l3s/ok;->h:J

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->q()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "WifiManager"

    const-string v3, "onReceive part"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ok;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    return-void
.end method

.method private x()Z
    .locals 9

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/amap/api/col/l3s/ok;->l:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v3, Lcom/amap/api/col/l3s/ok;->f:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v3

    sget-wide v5, Lcom/amap/api/col/l3s/ok;->f:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1324

    cmp-long p0, v3, v5

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v3

    sget-wide v7, Lcom/amap/api/col/l3s/ok;->g:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x5dc

    cmp-long p0, v3, v7

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    sget-wide v7, Lcom/amap/api/col/l3s/ok;->g:J

    sub-long/2addr v2, v7

    cmp-long p0, v2, v5

    :goto_1
    return v1
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/np;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->r:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->c:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/ok;->b(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final a(Lcom/amap/api/col/l3s/ob;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ok;->A:Lcom/amap/api/col/l3s/ob;

    return-void
.end method

.method public final a(Z)V
    .locals 8

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ok;->i:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/ov;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/ok;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_4

    if-eqz v1, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->c()I

    move-result p0

    const/16 p1, 0x11

    if-gt p0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "android.provider.Settings$Global"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    const-string v5, "wifi_scan_always_enabled"

    aput-object v5, v2, v4

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v6, v3

    aput-object v0, v6, v4

    :try_start_0
    const-string v7, "getInt"

    invoke-static {p1, v7, v2, v6}, Lcom/amap/api/col/l3s/oz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v3

    aput-object v5, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    new-array p0, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/ContentResolver;

    aput-object v2, p0, v3

    aput-object v0, p0, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p0, v1

    const-string v0, "putInt"

    invoke-static {p1, v0, v6, p0}, Lcom/amap/api/col/l3s/oz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "WifiManagerWrapper"

    const-string v0, "enableWifiAlwaysScan"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(ZZZJ)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ok;->l:Z

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/ok;->m:Z

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/ok;->n:Z

    const-wide/16 p1, 0x2710

    cmp-long p3, p4, p1

    if-gez p3, :cond_0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/ok;->z:J

    return-void

    :cond_0
    iput-wide p4, p0, Lcom/amap/api/col/l3s/ok;->z:J

    return-void
.end method

.method public final a(Landroid/net/ConnectivityManager;)Z
    .locals 2

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/pc;->a(Landroid/net/NetworkInfo;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ok;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "WifiManagerWrapper"

    const-string v1, "wifiAccess"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public final b(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->t()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->u()V

    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/ok;->x:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->x:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->w()V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->v()V

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/col/l3s/ok;->g:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/col/l3s/ok;->e:J

    iget-object p1, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/col/l3s/ok;->g:J

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->p()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    :cond_3
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/ok;->c(Z)V

    return-void
.end method

.method public final c()Landroid/net/wifi/WifiInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "WifiManagerWrapper"

    const-string v1, "getConnectionInfo"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->r:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ok;->p()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/ok;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ok;->y:Landroid/net/wifi/WifiInfo;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3s/ok;->w:J

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->A:Lcom/amap/api/col/l3s/ob;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ob;->b()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/ok;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3s/ok;->g:J

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ok;->x:Z

    return-void
.end method

.method public final k()Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ok;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ok;->y:Landroid/net/wifi/WifiInfo;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->y:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/ok;->j:Z

    return p0
.end method

.method public final m()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->k:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x2bc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ok;->k:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/ok;->j:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ok;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ok;->y:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ok;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_2
    const/4 v6, 0x1

    if-ge v3, v2, :cond_4

    iget-object v7, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/amap/api/col/l3s/ok;->m:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v9, "<unknown ssid>"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move v4, v6

    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v5, "access"

    move v8, v6

    goto :goto_3

    :cond_3
    const-string v8, "nb"

    move-object v12, v8

    move v8, v5

    move-object v5, v12

    :goto_3
    iget-object v9, p0, Lcom/amap/api/col/l3s/ok;->k:Ljava/lang/StringBuilder;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v1

    aput-object v5, v11, v6

    const-string v5, "#%s,%s"

    invoke-static {v10, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    move v4, v6

    :cond_5
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/ok;->m:Z

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    iput-boolean v6, p0, Lcom/amap/api/col/l3s/ok;->j:Z

    :cond_6
    if-nez v5, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3s/ok;->k:Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ok;->k:Ljava/lang/StringBuilder;

    const-string v1, ",access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->k:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ok;->g()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ok;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
