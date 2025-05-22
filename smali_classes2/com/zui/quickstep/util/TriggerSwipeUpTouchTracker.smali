.class public Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PointF;

.field private final b:F

.field private final c:F

.field private final d:Z

.field private final e:Lcom/zui/quickstep/util/NavBarPosition;

.field private final f:Ljava/lang/Runnable;

.field private final g:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;

.field private h:Z

.field private i:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/zui/quickstep/util/NavBarPosition;Ljava/lang/Runnable;Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->a:Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->b:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->c:F

    iput-object p3, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->e:Lcom/zui/quickstep/util/NavBarPosition;

    iput-boolean p2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->d:Z

    iput-object p4, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->f:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->g:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->init()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->i:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->i:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->e:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v2}, Lcom/zui/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->e:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v2}, Lcom/zui/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    neg-float v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->c:F

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    const/4 v6, 0x0

    if-eqz v3, :cond_4

    cmpl-float p1, v2, v6

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    iget-boolean v2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->d:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v6, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v2, v6

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-static {v6, p1}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result p1

    iget v2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->b:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    :goto_3
    iget-object p0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->g:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;

    if-eqz p0, :cond_7

    if-eqz v4, :cond_6

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p0, v3, p1}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;->onSwipeUp(ZLandroid/graphics/PointF;)V

    goto :goto_4

    :cond_6
    invoke-interface {p0}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;->onSwipeUpCancelled()V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->h:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->i:Landroid/view/VelocityTracker;

    return-void
.end method

.method public interceptedTouch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->h:Z

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->i:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->h:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result v2

    iget v3, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->b:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    iget-boolean v2, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->d:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->h:Z

    iget-object p0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->f:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->b(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->a()V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->a:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_6
    :goto_1
    return-void
.end method
