.class public Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;
.super Lcom/autonavi/amap/mapcore/animation/GLAnimation;
.source ""


# instance fields
.field private mFromDegrees:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    const/4 p3, 0x0

    iput p3, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    iget p0, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    float-to-double p0, v0

    iput-wide p0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    return-void
.end method
