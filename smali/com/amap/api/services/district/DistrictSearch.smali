.class public Lcom/amap/api/services/district/DistrictSearch;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IDistrictSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/ic;

    invoke-direct {v0, p1}, Lcom/amap/api/col/l3s/ic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchDistrict()Lcom/amap/api/services/district/DistrictResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrict()Lcom/amap/api/services/district/DistrictResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchDistrictAnsy()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrictAnsy()V

    :cond_0
    return-void
.end method

.method public searchDistrictAsyn()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrictAsyn()V

    :cond_0
    return-void
.end method

.method public setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IDistrictSearch;->setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V

    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IDistrictSearch;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    :cond_0
    return-void
.end method
