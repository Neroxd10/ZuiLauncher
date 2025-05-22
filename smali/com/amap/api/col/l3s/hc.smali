.class public final Lcom/amap/api/col/l3s/hc;
.super Lcom/amap/api/col/l3s/ha;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/ha<",
        "Lcom/amap/api/col/l3s/hf;",
        "Lcom/amap/api/services/poisearch/PoiResult;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/hf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/ha;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3s/hc;->j:I

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/hc;->k:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/hc;->l:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/hc;->m:Ljava/util/List;

    return-void
.end method

.method private a(Z)Ljava/lang/String;
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/amap/api/col/l3s/hf;

    iget-object v2, v2, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    const-string v3, "&location="

    const-string v4, "&sortrule="

    const-string v5, ","

    if-eqz v2, :cond_3

    check-cast v1, Lcom/amap/api/col/l3s/hf;

    iget-object v1, v1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v1

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "&radius="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getRange()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->isDistanceSort()Z

    move-result p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/hc;->b(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Rectangle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "&polygon="

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    iget-object v2, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/col/l3s/hf;

    iget-object v2, v2, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v10

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Polygon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/ha;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/amap/api/col/l3s/gf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "&city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/gf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/ha;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "&keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p1, "&offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getBuilding()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    const-string p1, "&building="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getBuilding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/gf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/ha;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "&types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getExtensions()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/ha;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "&extensions="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getExtensions()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    const-string p1, "&extensions=base"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&key="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCityLimit()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "&citylimit=true"

    goto :goto_3

    :cond_9
    const-string p1, "&citylimit=false"

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->isRequireSubPois()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "&children=1"

    goto :goto_4

    :cond_a
    const-string p1, "&children=0"

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/hc;->k:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->isSpecial()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "&special=1"

    goto :goto_5

    :cond_b
    const-string p1, "&special=0"

    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/amap/api/col/l3s/hf;

    iget-object v1, v1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-nez v1, :cond_d

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getLocation()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->isDistanceSort()Z

    move-result p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/hc;->b(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/hf;

    iget-object p1, p1, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getLocation()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/hf;

    iget-object p0, p0, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getLocation()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide p0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "distance"

    return-object p0

    :cond_0
    const-string p0, "weight"

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiResult;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "suggestion"

    const-string v3, "PoiSearchKeywordHandler"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/amap/api/col/l3s/hf;

    iget-object v4, v2, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-object v2, v0

    check-cast v2, Lcom/amap/api/col/l3s/hf;

    iget-object v5, v2, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v6, v1, Lcom/amap/api/col/l3s/hc;->l:Ljava/util/List;

    iget-object v7, v1, Lcom/amap/api/col/l3s/hc;->m:Ljava/util/List;

    check-cast v0, Lcom/amap/api/col/l3s/hf;

    iget-object v0, v0, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v8

    iget v9, v1, Lcom/amap/api/col/l3s/hc;->j:I

    invoke-static/range {v4 .. v10}, Lcom/amap/api/services/poisearch/PoiResult;->createPagedResult(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;Ljava/util/List;Ljava/util/List;IILjava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "count"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/amap/api/col/l3s/hc;->j:I

    invoke-static {v4}, Lcom/amap/api/col/l3s/gt;->c(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/l3s/hf;

    iget-object v11, v0, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/l3s/hf;

    iget-object v12, v0, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v13, v1, Lcom/amap/api/col/l3s/hc;->l:Ljava/util/List;

    iget-object v14, v1, Lcom/amap/api/col/l3s/hc;->m:Ljava/util/List;

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/l3s/hf;

    iget-object v0, v0, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v15

    iget v0, v1, Lcom/amap/api/col/l3s/hc;->j:I

    move/from16 v16, v0

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/amap/api/services/poisearch/PoiResult;->createPagedResult(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;Ljava/util/List;Ljava/util/List;IILjava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/l3s/hf;

    iget-object v11, v0, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/l3s/hf;

    iget-object v12, v0, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v13, v1, Lcom/amap/api/col/l3s/hc;->l:Ljava/util/List;

    iget-object v14, v1, Lcom/amap/api/col/l3s/hc;->m:Ljava/util/List;

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/l3s/hf;

    iget-object v0, v0, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v15

    iget v0, v1, Lcom/amap/api/col/l3s/hc;->j:I

    move/from16 v16, v0

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/amap/api/services/poisearch/PoiResult;->createPagedResult(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;Ljava/util/List;Ljava/util/List;IILjava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v0}, Lcom/amap/api/col/l3s/gt;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3s/hc;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gt;->b(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/hc;->l:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "paseJSONException"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "paseJSONJSONException"

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v17, v10

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/amap/api/col/l3s/hf;

    iget-object v11, v2, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-object v2, v0

    check-cast v2, Lcom/amap/api/col/l3s/hf;

    iget-object v12, v2, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v13, v1, Lcom/amap/api/col/l3s/hc;->l:Ljava/util/List;

    iget-object v14, v1, Lcom/amap/api/col/l3s/hc;->m:Ljava/util/List;

    check-cast v0, Lcom/amap/api/col/l3s/hf;

    iget-object v0, v0, Lcom/amap/api/col/l3s/hf;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v15

    iget v0, v1, Lcom/amap/api/col/l3s/hc;->j:I

    move/from16 v16, v0

    invoke-static/range {v11 .. v17}, Lcom/amap/api/services/poisearch/PoiResult;->createPagedResult(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;Ljava/util/List;Ljava/util/List;IILjava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/hc;->d(Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object p0

    return-object p0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/hc;->a(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final f()Lcom/amap/api/col/l3s/hh$b;
    .locals 12

    new-instance v0, Lcom/amap/api/col/l3s/hh$b;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/hh$b;-><init>()V

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/hc;->k:Z

    const-string v2, "language="

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v1

    const-string v3, "regeo"

    invoke-virtual {v1, v3}, Lcom/amap/api/col/l3s/hh;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/hi;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/amap/api/col/l3s/hj;

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/hj;->a()D

    move-result-wide v3

    :cond_1
    move-wide v10, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/hc;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/hc;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/core/ServiceSettings;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/col/l3s/hf;

    iget-object v1, v1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/col/l3s/hf;

    iget-object v1, v1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v8

    iget-object p0, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/hf;

    iget-object p0, p0, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v6

    new-instance p0, Lcom/amap/api/col/l3s/hj$a;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/amap/api/col/l3s/hj$a;-><init>(DDD)V

    iput-object p0, v0, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/hc;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/hc;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/services/core/ServiceSettings;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/l3s/gl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/place"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/amap/api/col/l3s/hf;

    iget-object v2, v2, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/text?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast v1, Lcom/amap/api/col/l3s/hf;

    iget-object v1, v1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/around?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/hc;->k:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/col/l3s/hf;

    iget-object v1, v1, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rectangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/hf;

    iget-object p0, p0, Lcom/amap/api/col/l3s/hf;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Polygon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/polygon?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method
