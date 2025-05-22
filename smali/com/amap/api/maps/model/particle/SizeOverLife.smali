.class public abstract Lcom/amap/api/maps/model/particle/SizeOverLife;
.super Lcom/autonavi/amap/mapcore/AbstractNativeInstance;
.source ""


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation


# instance fields
.field public final DEFAULT_SIZE:I
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field protected final TYPE_CURVESIZEOVERLIFE:I
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field protected final TYPE_DEFAULT:I
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/maps/model/particle/SizeOverLife;->TYPE_DEFAULT:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/maps/model/particle/SizeOverLife;->TYPE_CURVESIZEOVERLIFE:I

    iput v0, p0, Lcom/amap/api/maps/model/particle/SizeOverLife;->type:I

    iput v1, p0, Lcom/amap/api/maps/model/particle/SizeOverLife;->DEFAULT_SIZE:I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 5

    invoke-super {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->finalize()V

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeReleaseSizeOverLife(J)V

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    :cond_0
    return-void
.end method

.method public abstract getSizeX(F)F
.end method

.method public abstract getSizeY(F)F
.end method

.method public abstract getSizeZ(F)F
.end method
