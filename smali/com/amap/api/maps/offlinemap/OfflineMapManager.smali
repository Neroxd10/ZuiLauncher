.class public final Lcom/amap/api/maps/offlinemap/OfflineMapManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;,
        Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3s/bl;

.field b:Lcom/amap/api/col/l3s/bh;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

.field private e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/ja;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;Lcom/amap/api/maps/AMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/amap/api/col/l3s/bh;->b:Z

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    new-instance v1, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;

    invoke-direct {v1, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bh;->a(Lcom/amap/api/col/l3s/bh$a;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bh;->a()V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-static {p1}, Lcom/amap/api/col/l3s/ev;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bh;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bh;->f()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final downloadByCityCode(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bh;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final downloadByCityName(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bh;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final downloadByProvinceName(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getItemByProvinceName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    instance-of p1, p0, Lcom/amap/api/maps/AMapException;

    if-nez p1, :cond_3

    const-string p1, "OfflineMapManager"

    const-string v0, "downloadByProvinceName"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    check-cast p0, Lcom/amap/api/maps/AMapException;

    throw p0
.end method

.method public final getDownloadOfflineMapCityList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bl;->c()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getDownloadOfflineMapProvinceList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bl;->d()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getDownloadingCityList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bl;->e()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getDownloadingProvinceList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bl;->f()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getItemByCityCode(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bl;->a(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object p0

    return-object p0
.end method

.method public final getItemByCityName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bl;->b(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object p0

    return-object p0
.end method

.method public final getItemByProvinceName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bl;->c(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object p0

    return-object p0
.end method

.method public final getOfflineMapCityList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bl;->b()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getOfflineMapProvinceList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bl;->a()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bh;->e()V

    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/bh;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bh;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/bl;->c(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    const/4 v0, 0x0

    const-string v1, "\u6ca1\u6709\u8be5\u57ce\u5e02"

    invoke-interface {p0, v0, p1, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;->onRemove(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final restart()V
    .locals 0

    return-void
.end method

.method public final setOnOfflineLoadedListener(Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

    return-void
.end method

.method public final stop()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bh;->d()V

    return-void
.end method

.method public final updateOfflineCityByCode(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getItemByCityCode(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateOfflineCityByName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final updateOfflineMapProvinceByName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;)V

    return-void
.end method
