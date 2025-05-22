.class public abstract Lcom/zui/launcher/touch/BaseSwipeDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/touch/BaseSwipeDetector$a;
    }
.end annotation


# static fields
.field private static final h:Landroid/graphics/PointF;


# instance fields
.field private final a:Landroid/graphics/PointF;

.field private final b:Landroid/graphics/PointF;

.field private c:I

.field private d:Landroid/view/VelocityTracker;

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

.field protected mIgnoreSlopWhenSettling:Z

.field protected final mIsRtl:Z

.field protected final mMaxVelocity:F

.field protected mSubtractDisplacement:Landroid/graphics/PointF;

.field protected final mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector;->h:Landroid/graphics/PointF;

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewConfiguration;Z)V
    .locals 1
    .param p1    # Landroid/view/ViewConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->b:Landroid/graphics/PointF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->c:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->e:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->IDLE:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    iput-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mTouchSlop:F

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mMaxVelocity:F

    iput-boolean p2, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mIsRtl:Z

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v1, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mTouchSlop:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mTouchSlop:F

    neg-float v1, v1

    :goto_0
    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    iget p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mTouchSlop:F

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    neg-float p0, p0

    :goto_1
    iput p0, v0, Landroid/graphics/PointF;->y:F

    :goto_2
    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-boolean v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mIsRtl:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/touch/BaseSwipeDetector;->reportDragEndInternal(Landroid/graphics/PointF;)V

    return-void
.end method

.method private c(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->reportDragStartInternal(Z)V

    return-void
.end method

.method public static calculateDuration(FF)J
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x44960000    # 1200.0f

    div-float/2addr v0, p0

    mul-float/2addr v0, p1

    const/high16 p0, 0x42c80000    # 100.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-long p0, p0

    return-wide p0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->e:Landroid/graphics/PointF;

    if-eq v0, v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector;->h:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/zui/launcher/touch/BaseSwipeDetector$a;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/touch/BaseSwipeDetector;->a()V

    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v1, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->IDLE:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/touch/BaseSwipeDetector;->c(Z)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/touch/BaseSwipeDetector;->b()V

    :cond_2
    iput-object p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    return-void
.end method


# virtual methods
.method public finishedScrolling()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->IDLE:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    invoke-direct {p0, v0}, Lcom/zui/launcher/touch/BaseSwipeDetector;->e(Lcom/zui/launcher/touch/BaseSwipeDetector$a;)V

    return-void
.end method

.method public getDownX()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    float-to-int p0, p0

    return p0
.end method

.method public getDownY()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    return p0
.end method

.method public isDraggingOrSettling()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDraggingState()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFling(F)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdleState()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->IDLE:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSettlingState()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->c:I

    if-ne v3, v4, :cond_c

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->b:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->b:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->b:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->c:I

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mIsRtl:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iput v3, v1, Landroid/graphics/PointF;->x:F

    :cond_6
    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v3, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->shouldScrollStart(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    invoke-direct {p0, v1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->e(Lcom/zui/launcher/touch/BaseSwipeDetector$a;)V

    :cond_7
    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v3, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne v1, v3, :cond_8

    invoke-direct {p0, p1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->d(Landroid/view/MotionEvent;)V

    :cond_8
    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->b:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne p1, v0, :cond_a

    sget-object p1, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    invoke-direct {p0, p1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->e(Lcom/zui/launcher/touch/BaseSwipeDetector$a;)V

    :cond_a
    iget-object p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->d:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->c:I

    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->e:Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->f:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->g:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    if-ne p1, v0, :cond_c

    iget-boolean p1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz p1, :cond_c

    sget-object p1, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    invoke-direct {p0, p1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->e(Lcom/zui/launcher/touch/BaseSwipeDetector$a;)V

    :cond_c
    :goto_0
    return v2
.end method

.method protected abstract reportDragEndInternal(Landroid/graphics/PointF;)V
.end method

.method protected abstract reportDragStartInternal(Z)V
.end method

.method protected abstract reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
.end method

.method protected abstract shouldScrollStart(Landroid/graphics/PointF;)Z
.end method
