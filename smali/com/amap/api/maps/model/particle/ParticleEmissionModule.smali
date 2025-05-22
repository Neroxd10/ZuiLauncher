.class public Lcom/amap/api/maps/model/particle/ParticleEmissionModule;
.super Lcom/autonavi/amap/mapcore/AbstractNativeInstance;
.source ""


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation


# instance fields
.field private final rate:I

.field private final rateTime:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;-><init>()V

    iput p1, p0, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->rate:I

    iput p2, p0, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->rateTime:I

    invoke-virtual {p0}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->createNativeInstace()V

    return-void
.end method


# virtual methods
.method public createNativeInstace()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->rate:I

    iget v1, p0, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->rateTime:I

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreateParticleEmissionModule(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected finalize()V
    .locals 5

    invoke-super {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->finalize()V

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeReleaseParticleEmissonModule(J)V

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    :cond_0
    return-void
.end method
