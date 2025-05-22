.class public Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;
.super Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;
.source ""


# instance fields
.field private curValue:F

.field private v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->reset()V

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->curValue:F

    return-void
.end method


# virtual methods
.method public doAnimation(Ljava/lang/Object;)V
    .locals 4

    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->offsetTime:J

    long-to-float p1, v0

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    if-lez v1, :cond_1

    iput-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iput-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getCurValue()F

    move-result p1

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->curValue:F

    :cond_3
    return-void
.end method

.method public getCurValue()F
    .locals 0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->curValue:F

    return p0
.end method

.method public getEndValue()F
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getToValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getStartValue()F
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getFromValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    :cond_0
    return-void
.end method

.method public setAnimationValue(FFI)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setInterpolatorType(IF)V

    iget-object p3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p3, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setFromValue(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation1V;->v1Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1, p2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setToValue(F)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->startTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    return-void
.end method
