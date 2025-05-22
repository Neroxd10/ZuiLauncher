.class public Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:I

.field private d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;ILcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa

    iput v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    iput-object p1, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    iput-object p2, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    iput p3, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->c:I

    iput-object p4, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    iput p5, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;",
            "Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa

    iput v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    iput-object p1, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    iput p3, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;
    .locals 9

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RoutePOISearchQuery"

    const-string v2, "RoutePOISearchQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    iget-object v1, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    iget p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    invoke-direct {v0, v1, v2, p0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;-><init>(Ljava/util/List;Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    iget-object v4, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v5, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget v6, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->c:I

    iget-object v7, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    iget v8, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;-><init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;ILcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->clone()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    move-result-object p0

    return-object p0
.end method

.method public getFrom()Lcom/amap/api/services/core/LatLonPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->c:I

    return p0
.end method

.method public getPolylines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->f:Ljava/util/List;

    return-object p0
.end method

.method public getRange()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    return p0
.end method

.method public getSearchType()Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    return-object p0
.end method

.method public getTo()Lcom/amap/api/services/core/LatLonPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object p0
.end method
