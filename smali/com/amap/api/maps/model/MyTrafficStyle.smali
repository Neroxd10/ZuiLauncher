.class public Lcom/amap/api/maps/model/MyTrafficStyle;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private congestedColor:I

.field private ratio:F

.field private seriousCongestedColor:I

.field private slowColor:I

.field private smoothColor:I

.field private trafficRoadBackgroundColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff5df7

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->smoothColor:I

    const v0, -0x8af8

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->slowColor:I

    const v0, -0x15fcee

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->congestedColor:I

    const v0, -0x6dfff6

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->seriousCongestedColor:I

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->ratio:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->trafficRoadBackgroundColor:I

    return-void
.end method


# virtual methods
.method public getCongestedColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->congestedColor:I

    return p0
.end method

.method public getRatio()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->ratio:F

    return p0
.end method

.method public getSeriousCongestedColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->seriousCongestedColor:I

    return p0
.end method

.method public getSlowColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->slowColor:I

    return p0
.end method

.method public getSmoothColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->smoothColor:I

    return p0
.end method

.method public getTrafficRoadBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->trafficRoadBackgroundColor:I

    return p0
.end method

.method public setCongestedColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->congestedColor:I

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->ratio:F

    return-void
.end method

.method public setSeriousCongestedColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->seriousCongestedColor:I

    return-void
.end method

.method public setSlowColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->slowColor:I

    return-void
.end method

.method public setSmoothColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->smoothColor:I

    return-void
.end method

.method public setTrafficRoadBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->trafficRoadBackgroundColor:I

    return-void
.end method
