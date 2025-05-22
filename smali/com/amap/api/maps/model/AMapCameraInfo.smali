.class public Lcom/amap/api/maps/model/AMapCameraInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aspectRatio:F

.field private fov:F

.field private positionX:F

.field private positionY:F

.field private positionZ:F

.field private rotate:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->fov:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->aspectRatio:F

    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->rotate:F

    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionX:F

    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionY:F

    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionZ:F

    iput p1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->fov:F

    iput p2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->aspectRatio:F

    iput p3, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->rotate:F

    iput p4, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionX:F

    iput p5, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionY:F

    iput p6, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionZ:F

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->aspectRatio:F

    return p0
.end method

.method public getFov()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->fov:F

    return p0
.end method

.method public getRotate()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->rotate:F

    return p0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionX:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionY:F

    return p0
.end method

.method public getZ()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionZ:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[fov:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->fov:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "aspectRatio:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->aspectRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rotate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->rotate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pos_x:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pos_y:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pos_z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionZ:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
