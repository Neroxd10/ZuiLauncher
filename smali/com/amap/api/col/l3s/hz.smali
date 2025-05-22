.class public final Lcom/amap/api/col/l3s/hz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/services/interfaces/IBusStationSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

.field private c:Lcom/amap/api/services/busline/BusStationQuery;

.field private d:Lcom/amap/api/services/busline/BusStationQuery;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/busline/BusStationResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hz;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/hz;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/hz;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/hz;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hz;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/hz;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hz;->g:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final getQuery()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    return-object p0
.end method

.method public final searchBusStation()Lcom/amap/api/services/busline/BusStationResult;
    .locals 7

    const-string v0, "searchBusStation"

    const-string v1, "BusStationSearch"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/hz;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    iget-object v3, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationQuery;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    iget-object v6, p0, Lcom/amap/api/col/l3s/hz;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3, v6}, Lcom/amap/api/services/busline/BusStationQuery;->weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationQuery;->clone()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3s/hz;->d:Lcom/amap/api/services/busline/BusStationQuery;

    iput v5, p0, Lcom/amap/api/col/l3s/hz;->f:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/hz;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3s/hz;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget v3, p0, Lcom/amap/api/col/l3s/hz;->f:I

    if-nez v3, :cond_3

    new-instance v3, Lcom/amap/api/col/l3s/gh;

    iget-object v4, p0, Lcom/amap/api/col/l3s/hz;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-direct {v3, v4, v6}, Lcom/amap/api/col/l3s/gh;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/busline/BusStationResult;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationResult;->getPageCount()I

    move-result v4

    iput v4, p0, Lcom/amap/api/col/l3s/hz;->f:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3s/hz;->e:Ljava/util/ArrayList;

    :goto_1
    iget v4, p0, Lcom/amap/api/col/l3s/hz;->f:I

    if-gt v5, v4, :cond_2

    iget-object v4, p0, Lcom/amap/api/col/l3s/hz;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/amap/api/col/l3s/hz;->f:I

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/amap/api/col/l3s/hz;->e:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {p0}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result p0

    :goto_2
    invoke-virtual {v4, p0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v3

    iget v6, p0, Lcom/amap/api/col/l3s/hz;->f:I

    if-gt v3, v6, :cond_4

    if-ltz v3, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/amap/api/col/l3s/hz;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/busline/BusStationResult;

    if-nez v3, :cond_5

    new-instance v3, Lcom/amap/api/col/l3s/gh;

    iget-object v4, p0, Lcom/amap/api/col/l3s/hz;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-direct {v3, v4, v5}, Lcom/amap/api/col/l3s/gh;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/busline/BusStationResult;

    iget-object v4, p0, Lcom/amap/api/col/l3s/hz;->e:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {p0}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result p0

    goto :goto_2

    :cond_5
    :goto_4
    return-object v3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v3, "page out of range"

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v3, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, v3}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception p0

    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {p0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final searchBusStationAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/hz$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/hz$1;-><init>(Lcom/amap/api/col/l3s/hz;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/hz;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {p1, v0}, Lcom/amap/api/services/busline/BusStationQuery;->weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/l3s/hz;->c:Lcom/amap/api/services/busline/BusStationQuery;

    :cond_0
    return-void
.end method
