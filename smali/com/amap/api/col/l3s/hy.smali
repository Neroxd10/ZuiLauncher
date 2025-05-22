.class public final Lcom/amap/api/col/l3s/hy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/services/interfaces/IBusLineSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

.field private c:Lcom/amap/api/services/busline/BusLineQuery;

.field private d:Lcom/amap/api/services/busline/BusLineQuery;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/busline/BusLineResult;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hy;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/hy;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/hy;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/hy;->d:Lcom/amap/api/services/busline/BusLineQuery;

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/hy;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/hy;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hy;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    return-object p0
.end method

.method private a(I)Z
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/hy;->e:I

    if-ge p1, p0, :cond_0

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/hy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hy;->g:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final getQuery()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    return-object p0
.end method

.method public final searchBusLine()Lcom/amap/api/services/busline/BusLineResult;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->d:Lcom/amap/api/services/busline/BusLineQuery;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    iget-object v2, p0, Lcom/amap/api/col/l3s/hy;->d:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0, v2}, Lcom/amap/api/services/busline/BusLineQuery;->weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/hy;->d:Lcom/amap/api/services/busline/BusLineQuery;

    iput v1, p0, Lcom/amap/api/col/l3s/hy;->e:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget v0, p0, Lcom/amap/api/col/l3s/hy;->e:I

    if-nez v0, :cond_3

    new-instance v0, Lcom/amap/api/col/l3s/gh;

    iget-object v2, p0, Lcom/amap/api/col/l3s/hy;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/amap/api/col/l3s/gh;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/hy;->f:Ljava/util/ArrayList;

    :goto_1
    iget v2, p0, Lcom/amap/api/col/l3s/hy;->e:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/hy;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/amap/api/col/l3s/hy;->e:I

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/hy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3s/hy;->f:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {p0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result p0

    :goto_2
    invoke-virtual {v1, p0, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/hy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/hy;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    if-nez v0, :cond_4

    new-instance v0, Lcom/amap/api/col/l3s/gh;

    iget-object v1, p0, Lcom/amap/api/col/l3s/hy;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/gh;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    iget-object v1, p0, Lcom/amap/api/col/l3s/hy;->f:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {p0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result p0

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "page out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "BusLineSearch"

    const-string v1, "searchBusLine"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {p0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final searchBusLineAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/hy$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/hy$1;-><init>(Lcom/amap/api/col/l3s/hy;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/hy;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/busline/BusLineQuery;->weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/l3s/hy;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/hy;->d:Lcom/amap/api/services/busline/BusLineQuery;

    :cond_0
    return-void
.end method
