.class public final Lcom/amap/api/col/l3s/pk;
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
            "Lcom/amap/api/col/l3s/qp;",
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

    sput-object v0, Lcom/amap/api/col/l3s/pk;->s:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/col/l3s/pk;->t:J

    const/4 v2, 0x0

    sput v2, Lcom/amap/api/col/l3s/pk;->u:I

    sput-wide v0, Lcom/amap/api/col/l3s/pk;->w:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/pk;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/pk;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/pk;->k:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/pk;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/pk;->m:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/pk;->n:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/pk;->y:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/amap/api/col/l3s/pk;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/pk;->p:Ljava/util/TreeMap;

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/pk;->q:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/pk;->r:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/pk;->v:Landroid/net/ConnectivityManager;

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/amap/api/col/l3s/pk;->z:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/pk;->x:Z

    iput-object p2, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amap/api/col/l3s/pk;->i:Landroid/content/Context;

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

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {p0}, Lcom/amap/api/col/l3s/pu;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/pk;->g:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

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
    sget-object v3, Lcom/amap/api/col/l3s/pk;->s:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/amap/api/col/l3s/pk;->s:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    sput-object v2, Lcom/amap/api/col/l3s/pk;->s:Ljava/util/HashMap;

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    :goto_1
    sput-wide v2, Lcom/amap/api/col/l3s/pk;->t:J

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    goto :goto_1

    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/amap/api/col/l3s/pk;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/col/l3s/pk;->o:Ljava/lang/String;

    const-string p0, "WifiManagerWrapper"

    const-string v2, "getScanResults"

    invoke-static {v0, p0, v2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/pk;->o:Ljava/lang/String;

    :cond_4
    :goto_3
    return-object v1
.end method

.method private f()Landroid/net/wifi/WifiInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "WifiManagerWrapper"

    const-string v1, "getConnectionInfo"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private g()Z
    .locals 11

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/pk;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->v:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->i:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-static {v2, v4}, Lcom/amap/api/col/l3s/pu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/amap/api/col/l3s/pk;->v:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->v:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/pk;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x26ac

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    return v3

    :cond_2
    sget v2, Lcom/amap/api/col/l3s/pk;->u:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    iget-wide v5, p0, Lcom/amap/api/col/l3s/pk;->z:J

    const-wide/16 v7, 0x7530

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3s/pp;->b()J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long v2, v5, v9

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3s/pp;->b()J

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
    iget-object v0, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3s/pk;->d:J

    sget v0, Lcom/amap/api/col/l3s/pk;->u:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    add-int/2addr v0, v4

    sput v0, Lcom/amap/api/col/l3s/pk;->u:I

    :cond_6
    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p0

    return p0

    :cond_7
    return v3
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->i:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/pu;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private i()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3s/pk;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "WifiManager"

    const-string v1, "wifiScan"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private j()Z
    .locals 9

    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/pk;->q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/amap/api/col/l3s/pk;->l:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v3, Lcom/amap/api/col/l3s/pk;->f:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v3

    sget-wide v5, Lcom/amap/api/col/l3s/pk;->f:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1324

    cmp-long p0, v3, v5

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v3

    sget-wide v7, Lcom/amap/api/col/l3s/pk;->g:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x5dc

    cmp-long p0, v3, v7

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    sget-wide v7, Lcom/amap/api/col/l3s/pk;->g:J

    sub-long/2addr v2, v7

    cmp-long p0, v2, v5

    :goto_1
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/pk;->y:Landroid/net/wifi/WifiInfo;

    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Z)V
    .locals 12

    const/16 v0, 0x14

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/col/l3s/pk;->e:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x2710

    cmp-long p1, v3, v5

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-wide v3, Lcom/amap/api/col/l3s/pk;->g:J

    sput-wide v3, Lcom/amap/api/col/l3s/pk;->h:J

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->i()V

    sget-wide v3, Lcom/amap/api/col/l3s/pk;->e:J

    sub-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-ltz p1, :cond_2

    move p1, v0

    :goto_0
    if-lez p1, :cond_2

    sget-wide v1, Lcom/amap/api/col/l3s/pk;->g:J

    sget-wide v3, Lcom/amap/api/col/l3s/pk;->h:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const-wide/16 v1, 0x96

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->i()V

    :cond_2
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/pk;->x:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/pk;->x:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/pk;->a()V

    :cond_3
    sget-wide v2, Lcom/amap/api/col/l3s/pk;->h:J

    sget-wide v4, Lcom/amap/api/col/l3s/pk;->g:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->e()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    const-string v3, "WifiManager"

    const-string v4, "updateScanResult"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-wide v2, Lcom/amap/api/col/l3s/pk;->g:J

    sput-wide v2, Lcom/amap/api/col/l3s/pk;->h:J

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/l3s/pk;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long p1, v2, v4

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3s/pk;->e:J

    iget-object p1, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3s/pk;->g:J

    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    move p1, v1

    :goto_3
    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/l3s/pk;->g:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/pk;->a()V

    :cond_9
    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->p:Ljava/util/TreeMap;

    if-nez v2, :cond_a

    new-instance v2, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/pk;->p:Ljava/util/TreeMap;

    :cond_a
    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->p:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/pk;->r:Z

    if-eqz v2, :cond_b

    if-eqz p1, :cond_b

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_b
    iget-object v2, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_13

    iget-object v4, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    if-eqz v4, :cond_c

    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_5

    :cond_c
    const-string v5, ""

    :goto_5
    invoke-static {v5}, Lcom/amap/api/col/l3s/pu;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-le v2, v0, :cond_d

    iget v5, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Lcom/amap/api/col/l3s/pk;->a(I)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_d
    iget-boolean v5, p0, Lcom/amap/api/col/l3s/pk;->r:Z

    if-eqz v5, :cond_f

    if-eqz p1, :cond_f

    :try_start_3
    new-instance v5, Lcom/amap/api/col/l3s/qp;

    invoke-direct {v5, v1}, Lcom/amap/api/col/l3s/qp;-><init>(Z)V

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v6, v5, Lcom/amap/api/col/l3s/qp;->b:Ljava/lang/String;

    iget v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    iput v6, v5, Lcom/amap/api/col/l3s/qp;->d:I

    iget-wide v6, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v6, v5, Lcom/amap/api/col/l3s/qp;->e:J

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/amap/api/col/l3s/qp;->a(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/amap/api/col/l3s/qp;->a:J

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    int-to-short v6, v6

    iput v6, v5, Lcom/amap/api/col/l3s/qp;->c:I

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_e

    iget-wide v6, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    div-long/2addr v10, v8

    long-to-int v6, v10

    int-to-short v6, v6

    iput-short v6, v5, Lcom/amap/api/col/l3s/qp;->g:S

    if-gez v6, :cond_e

    iput-short v1, v5, Lcom/amap/api/col/l3s/qp;->g:S

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/amap/api/col/l3s/qp;->f:J

    iget-object v6, p0, Lcom/amap/api/col/l3s/pk;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_f
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v6, "<unknown ssid>"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_10
    const-string v5, "unkwn"

    :goto_6
    iput-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_11
    iget-object v5, p0, Lcom/amap/api/col/l3s/pk;->p:Ljava/util/TreeMap;

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v6, v6, 0x19

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_13
    iget-object p1, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/pk;->p:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->p:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    :cond_15
    :goto_8
    return-void
.end method

.method public final a(Landroid/net/ConnectivityManager;)Z
    .locals 2

    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->a:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/pu;->a(Landroid/net/NetworkInfo;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/pk;->a(Landroid/net/wifi/WifiInfo;)Z

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

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public final b()Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/pk;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/pk;->y:Landroid/net/wifi/WifiInfo;

    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->y:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public final b(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/pk;->l:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/pk;->m:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/pk;->n:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/amap/api/col/l3s/pk;->z:J

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/pk;->a()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
