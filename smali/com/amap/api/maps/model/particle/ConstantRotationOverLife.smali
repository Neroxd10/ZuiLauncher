.class public Lcom/amap/api/maps/model/particle/ConstantRotationOverLife;
.super Lcom/amap/api/maps/model/particle/RotationOverLife;
.source ""


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation


# instance fields
.field private rotate:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/RotationOverLife;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/particle/ConstantRotationOverLife;->rotate:F

    iput p1, p0, Lcom/amap/api/maps/model/particle/ConstantRotationOverLife;->rotate:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/maps/model/particle/RotationOverLife;->type:I

    invoke-virtual {p0}, Lcom/amap/api/maps/model/particle/ConstantRotationOverLife;->createNativeInstace()V

    return-void
.end method


# virtual methods
.method public createNativeInstace()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/amap/api/maps/model/particle/ConstantRotationOverLife;->rotate:F

    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreateConstantRotationOverLife(F)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public getRotate()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/particle/ConstantRotationOverLife;->rotate:F

    return p0
.end method
