.class public final Lcom/amap/api/col/l3s/ic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/services/interfaces/IDistrictSearch;


# static fields
.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/district/DistrictResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/district/DistrictSearchQuery;

.field private c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

.field private d:Lcom/amap/api/services/district/DistrictSearchQuery;

.field private e:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ic;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ic;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ic;)Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ic;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic;->c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic;->g:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    return-object p0
.end method

.method public final searchDistrict()Lcom/amap/api/services/district/DistrictResult;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/amap/api/services/district/DistrictResult;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictResult;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/ic;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-direct {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictResult;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ic;->d:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->weakEquals(Lcom/amap/api/services/district/DistrictSearchQuery;)Z

    move-result v0

    if-nez v0, :cond_2

    iput v3, p0, Lcom/amap/api/col/l3s/ic;->e:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ic;->d:Lcom/amap/api/services/district/DistrictSearchQuery;

    sget-object v0, Lcom/amap/api/col/l3s/ic;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amap/api/col/l3s/ic;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget v0, p0, Lcom/amap/api/col/l3s/ic;->e:I

    if-nez v0, :cond_5

    new-instance v0, Lcom/amap/api/col/l3s/go;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ic;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/go;-><init>(Landroid/content/Context;Lcom/amap/api/services/district/DistrictSearchQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    if-nez v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/services/district/DistrictResult;->getPageCount()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/ic;->e:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/ic;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v1, :cond_8

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    iget v1, p0, Lcom/amap/api/col/l3s/ic;->e:I

    if-lez v1, :cond_8

    iget v1, p0, Lcom/amap/api/col/l3s/ic;->e:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    if-le v1, v2, :cond_8

    sget-object v1, Lcom/amap/api/col/l3s/ic;->f:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {p0}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/l3s/ic;->e:I

    if-ge v0, v1, :cond_6

    if-ltz v0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    if-eqz v2, :cond_9

    sget-object v1, Lcom/amap/api/col/l3s/ic;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    if-nez v0, :cond_8

    new-instance v0, Lcom/amap/api/col/l3s/go;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ic;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/go;-><init>(Landroid/content/Context;Lcom/amap/api/services/district/DistrictSearchQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/amap/api/col/l3s/ic;->e:I

    if-lez v1, :cond_8

    iget v1, p0, Lcom/amap/api/col/l3s/ic;->e:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    if-le v1, v2, :cond_8

    sget-object v1, Lcom/amap/api/col/l3s/ic;->f:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {p0}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_8
    :goto_3
    return-object v0

    :cond_9
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "DistrictSearch"

    const-string v1, "searchDistrict"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final searchDistrictAnsy()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ic;->searchDistrictAsyn()V

    return-void
.end method

.method public final searchDistrictAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ic$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/ic$1;-><init>(Lcom/amap/api/col/l3s/ic;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ic;->c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ic;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    return-void
.end method
