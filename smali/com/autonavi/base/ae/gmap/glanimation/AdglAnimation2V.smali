.class public Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;
.super Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;
.source ""


# instance fields
.field private curValue1:D

.field private curValue2:D

.field private v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->reset()V

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue1:D

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue2:D

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
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getCurXValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue1:D

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getCurYValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue2:D

    :cond_3
    return-void
.end method

.method public getCurValue(I)D
    .locals 0

    if-nez p1, :cond_0

    iget-wide p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue1:D

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue2:D

    return-wide p0
.end method

.method public getEndValue(I)D
    .locals 2

    const-wide/16 v0, 0x0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getToXValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getToYValue()D

    move-result-wide p0

    return-wide p0

    :cond_2
    return-wide v0
.end method

.method public getStartValue(I)D
    .locals 2

    const-wide/16 v0, 0x0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getFromXValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getFromYValue()D

    move-result-wide p0

    return-wide p0

    :cond_2
    return-wide v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue1:D

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue2:D

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->reset()V

    :cond_0
    return-void
.end method
