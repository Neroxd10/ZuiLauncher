.class public Lcom/amap/api/maps/model/animation/RotateAnimation;
.super Lcom/amap/api/maps/model/animation/Animation;
.source ""


# direct methods
.method public constructor <init>(FF)V
    .locals 7

    invoke-direct {p0}, Lcom/amap/api/maps/model/animation/Animation;-><init>()V

    new-instance v6, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;-><init>(FFFFF)V

    iput-object v6, p0, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 7

    invoke-direct {p0}, Lcom/amap/api/maps/model/animation/Animation;-><init>()V

    new-instance v6, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;-><init>(FFFFF)V

    iput-object v6, p0, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method


# virtual methods
.method public setDuration(J)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
