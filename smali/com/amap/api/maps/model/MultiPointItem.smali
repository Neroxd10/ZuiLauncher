.class public Lcom/amap/api/maps/model/MultiPointItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private customerId:Ljava/lang/String;

.field private iPoint:Lcom/autonavi/amap/mapcore/IPoint;

.field private latLng:Lcom/amap/api/maps/model/LatLng;

.field private object:Ljava/lang/Object;

.field private snippet:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/MultiPointItem;->customerId:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointItem;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amap/api/maps/model/MultiPointItem;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/maps/model/MultiPointItem;->customerId:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/MultiPointItem;->customerId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getCustomerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MultiPointItem;->customerId:Ljava/lang/String;

    return-object p0
.end method

.method public getIPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MultiPointItem;->iPoint:Lcom/autonavi/amap/mapcore/IPoint;

    return-object p0
.end method

.method public getLatLng()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MultiPointItem;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MultiPointItem;->object:Ljava/lang/Object;

    return-object p0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MultiPointItem;->snippet:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MultiPointItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointItem;->customerId:Ljava/lang/String;

    return-void
.end method

.method public setIPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointItem;->iPoint:Lcom/autonavi/amap/mapcore/IPoint;

    return-void
.end method

.method public setLatLng(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointItem;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointItem;->object:Ljava/lang/Object;

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointItem;->snippet:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointItem;->title:Ljava/lang/String;

    return-void
.end method
