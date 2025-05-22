.class public Lcom/amap/api/maps/model/particle/CurveSizeOverLife;
.super Lcom/amap/api/maps/model/particle/SizeOverLife;
.source ""


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation


# instance fields
.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/SizeOverLife;-><init>()V

    iput p1, p0, Lcom/amap/api/maps/model/particle/CurveSizeOverLife;->x:F

    iput p2, p0, Lcom/amap/api/maps/model/particle/CurveSizeOverLife;->y:F

    iput p3, p0, Lcom/amap/api/maps/model/particle/CurveSizeOverLife;->z:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/maps/model/particle/SizeOverLife;->type:I

    invoke-virtual {p0}, Lcom/amap/api/maps/model/particle/CurveSizeOverLife;->createNativeInstace()V

    return-void
.end method


# virtual methods
.method public createNativeInstace()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/amap/api/maps/model/particle/CurveSizeOverLife;->x:F

    iget v1, p0, Lcom/amap/api/maps/model/particle/CurveSizeOverLife;->y:F

    iget v2, p0, Lcom/amap/api/maps/model/particle/CurveSizeOverLife;->z:F

    invoke-static {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreateCurveSizeOverLife(FFF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public getSizeX(F)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSizeY(F)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSizeZ(F)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
