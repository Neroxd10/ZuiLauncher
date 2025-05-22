.class public Lcom/amap/api/services/nearby/UploadInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/amap/api/services/core/LatLonPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/nearby/UploadInfo;->a:I

    return-void
.end method


# virtual methods
.method public getCoordType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/nearby/UploadInfo;->a:I

    return p0
.end method

.method public getPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/nearby/UploadInfo;->c:Lcom/amap/api/services/core/LatLonPoint;

    return-object p0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/nearby/UploadInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setCoordType(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/services/nearby/UploadInfo;->a:I

    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/services/nearby/UploadInfo;->a:I

    return-void
.end method

.method public setPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/nearby/UploadInfo;->c:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/nearby/UploadInfo;->b:Ljava/lang/String;

    return-void
.end method
