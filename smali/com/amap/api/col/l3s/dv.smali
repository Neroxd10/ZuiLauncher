.class public final Lcom/amap/api/col/l3s/dv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/base/ae/gmap/style/StyleItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:[Lcom/autonavi/base/ae/gmap/style/StyleItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dv;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dv;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/base/ae/gmap/style/StyleItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/dv;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final b()[Lcom/autonavi/base/ae/gmap/style/StyleItem;
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/dv;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/dv;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/ae/gmap/style/StyleItem;

    invoke-virtual {v3}, Lcom/autonavi/base/ae/gmap/style/StyleItem;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-array v1, v2, [Lcom/autonavi/base/ae/gmap/style/StyleItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/base/ae/gmap/style/StyleItem;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dv;->c:[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final c()[Lcom/autonavi/base/ae/gmap/style/StyleItem;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dv;->c:[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    return-object p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dv;->b:Ljava/lang/Object;

    return-object p0
.end method
