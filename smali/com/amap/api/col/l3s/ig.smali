.class public final Lcom/amap/api/col/l3s/ig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/services/interfaces/IPoiSearch;


# static fields
.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/poisearch/PoiResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

.field private b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

.field private h:I

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/col/l3s/ig;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ig;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ig;->c:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/ig;->setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ig;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ig;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ig;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig;->d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    return-object p0
.end method


# virtual methods
.method public final getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    return-object p0
.end method

.method public final searchPOI()Lcom/amap/api/services/poisearch/PoiResult;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ig;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Bound"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    if-nez v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v4}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ig;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_5
    :goto_3
    move v0, v3

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Polygon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Rectangle"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-eqz v1, :cond_5

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-gez v5, :cond_5

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v5, v0

    if-ltz v0, :cond_b

    goto :goto_3

    :cond_b
    move v0, v2

    :goto_5
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ig;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ig;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ig;->g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    iput v3, p0, Lcom/amap/api/col/l3s/ig;->h:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ig;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ig;->g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    :cond_e
    sget-object v0, Lcom/amap/api/col/l3s/ig;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/amap/api/col/l3s/ig;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_f
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ig;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    :cond_10
    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amap/api/col/l3s/hk;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v5}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amap/api/col/l3s/hk;->a(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageNum(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v5}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amap/api/col/l3s/hk;->b(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageSize(I)V

    iget v1, p0, Lcom/amap/api/col/l3s/ig;->h:I

    if-nez v1, :cond_12

    new-instance v1, Lcom/amap/api/col/l3s/hc;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ig;->c:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/col/l3s/hf;

    iget-object v4, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/amap/api/col/l3s/hf;-><init>(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    invoke-direct {v1, v2, v3}, Lcom/amap/api/col/l3s/hc;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/hf;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/ig;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-eqz v1, :cond_15

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    iget v1, p0, Lcom/amap/api/col/l3s/ig;->h:I

    if-lez v1, :cond_15

    iget v1, p0, Lcom/amap/api/col/l3s/ig;->h:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v2

    if-le v1, v2, :cond_15

    sget-object v1, Lcom/amap/api/col/l3s/ig;->i:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_6
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_12
    iget-object v1, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v1

    iget v4, p0, Lcom/amap/api/col/l3s/ig;->h:I

    if-gt v1, v4, :cond_13

    if-ltz v1, :cond_13

    goto :goto_7

    :cond_13
    move v2, v3

    :goto_7
    if-eqz v2, :cond_16

    sget-object v2, Lcom/amap/api/col/l3s/ig;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/poisearch/PoiResult;

    if-nez v1, :cond_14

    new-instance v1, Lcom/amap/api/col/l3s/hc;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ig;->c:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/col/l3s/hf;

    iget-object v4, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/amap/api/col/l3s/hf;-><init>(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    invoke-direct {v1, v2, v3}, Lcom/amap/api/col/l3s/hc;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/hf;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    sget-object v1, Lcom/amap/api/col/l3s/ig;->i:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_6

    :cond_14
    move-object v0, v1

    :cond_15
    :goto_8
    return-object v0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "page out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v4}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v4}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "PoiSearch"

    const-string v1, "searchPOI"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {p0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final searchPOIAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ig$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/ig$1;-><init>(Lcom/amap/api/col/l3s/ig;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/amap/api/col/l3s/hb;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig;->c:Landroid/content/Context;

    invoke-direct {v1, p0, p1, v0}, Lcom/amap/api/col/l3s/hb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/core/PoiItem;

    return-object p0
.end method

.method public final searchPOIIdAsyn(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ig$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ig$2;-><init>(Lcom/amap/api/col/l3s/ig;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ig;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ig;->e:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "zh-CN"

    iput-object p1, p0, Lcom/amap/api/col/l3s/ig;->e:Ljava/lang/String;

    return-void
.end method

.method public final setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ig;->d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ig;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    return-void
.end method
