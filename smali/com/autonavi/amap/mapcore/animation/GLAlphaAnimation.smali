.class public Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;
.super Lcom/autonavi/amap/mapcore/animation/GLAnimation;
.source ""


# instance fields
.field public mCurAlpha:F

.field public mFromAlpha:F

.field public mToAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->mFromAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->mToAlpha:F

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->mCurAlpha:F

    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->mFromAlpha:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->mToAlpha:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->mFromAlpha:F

    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->mToAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->mCurAlpha:F

    float-to-double p0, v0

    iput-wide p0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    return-void
.end method
