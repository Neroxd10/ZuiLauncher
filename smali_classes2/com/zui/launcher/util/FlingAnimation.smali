.class public Lcom/zui/launcher/util/FlingAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/zui/launcher/ButtonDropTarget;

.field private final b:Lcom/zui/launcher/Launcher;

.field protected mAX:F

.field protected mAY:F

.field protected final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field protected mAnimationTimeFraction:F

.field protected final mDragLayer:Lcom/zui/launcher/dragndrop/DragLayer;

.field protected final mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

.field protected final mDragOptions:Lcom/zui/launcher/dragndrop/DragOptions;

.field protected mDuration:I

.field protected mFrom:Landroid/graphics/Rect;

.field protected mIconRect:Landroid/graphics/Rect;

.field protected final mUX:F

.field protected final mUY:F


# direct methods
.method public constructor <init>(Lcom/zui/launcher/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/zui/launcher/ButtonDropTarget;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    iput-object p3, p0, Lcom/zui/launcher/util/FlingAnimation;->a:Lcom/zui/launcher/ButtonDropTarget;

    iput-object p4, p0, Lcom/zui/launcher/util/FlingAnimation;->b:Lcom/zui/launcher/Launcher;

    iput-object p1, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget p1, p2, Landroid/graphics/PointF;->x:F

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/zui/launcher/util/FlingAnimation;->mUX:F

    iget p1, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p3

    iput p1, p0, Lcom/zui/launcher/util/FlingAnimation;->mUY:F

    invoke-virtual {p4}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragLayer:Lcom/zui/launcher/dragndrop/DragLayer;

    iput-object p5, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragOptions:Lcom/zui/launcher/dragndrop/DragOptions;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/FlingAnimation;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/FlingAnimation;->b:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/util/FlingAnimation;)Lcom/zui/launcher/ButtonDropTarget;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/FlingAnimation;->a:Lcom/zui/launcher/ButtonDropTarget;

    return-object p0
.end method


# virtual methods
.method protected initFlingLeftDuration()I
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mUX:F

    mul-float v2, v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const/4 v4, 0x0

    cmpl-float v6, v2, v4

    if-ltz v6, :cond_0

    iput v5, p0, Lcom/zui/launcher/util/FlingAnimation;->mAX:F

    goto :goto_0

    :cond_0
    mul-float/2addr v1, v1

    neg-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v1, v0

    iput v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mAX:F

    move v2, v4

    :goto_0
    iget v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mUX:F

    neg-float v0, v0

    float-to-double v0, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mAX:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/zui/launcher/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/zui/launcher/util/FlingAnimation;->mUY:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double v4, v0, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mAY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected initFlingUpDuration()I
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mUY:F

    mul-float v2, v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const/4 v4, 0x0

    cmpl-float v6, v2, v4

    if-ltz v6, :cond_0

    iput v5, p0, Lcom/zui/launcher/util/FlingAnimation;->mAY:F

    goto :goto_0

    :cond_0
    mul-float/2addr v1, v1

    neg-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v1, v0

    iput v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mAY:F

    move v2, v4

    :goto_0
    iget v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mUY:F

    neg-float v0, v0

    float-to-double v0, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mAY:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/zui/launcher/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/zui/launcher/util/FlingAnimation;->mUX:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double v4, v0, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mAX:F

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mAnimationTimeFraction:F

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    div-float/2addr p1, v0

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragLayer:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragView;

    iget v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mDuration:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v3, p0, Lcom/zui/launcher/util/FlingAnimation;->mUX:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/zui/launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/zui/launcher/util/FlingAnimation;->mAX:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget v3, p0, Lcom/zui/launcher/util/FlingAnimation;->mUY:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/zui/launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/zui/launcher/util/FlingAnimation;->mAY:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/zui/launcher/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v2, p0

    invoke-virtual {v0, v2}, Lcom/zui/launcher/dragndrop/DragView;->setAlpha(F)V

    return-void
.end method

.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->a:Lcom/zui/launcher/ButtonDropTarget;

    iget-object v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/ButtonDropTarget;->getIconRect(Lcom/zui/launcher/DropTarget$DragObject;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragLayer:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v2, v2, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v1, v1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v3, v3, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mUY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mUX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/util/FlingAnimation;->initFlingUpDuration()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/util/FlingAnimation;->initFlingLeftDuration()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mDuration:I

    int-to-float v1, v0

    add-int/lit16 v0, v0, 0x12c

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mAnimationTimeFraction:F

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    iget v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mDuration:I

    add-int/lit16 v4, v0, 0x12c

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/zui/launcher/util/FlingAnimation$a;

    invoke-direct {v5, p0, v0, v1, v4}, Lcom/zui/launcher/util/FlingAnimation$a;-><init>(Lcom/zui/launcher/util/FlingAnimation;JI)V

    new-instance v6, Lcom/zui/launcher/util/FlingAnimation$b;

    invoke-direct {v6, p0}, Lcom/zui/launcher/util/FlingAnimation$b;-><init>(Lcom/zui/launcher/util/FlingAnimation;)V

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->a:Lcom/zui/launcher/ButtonDropTarget;

    iget-object v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v2, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragOptions:Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/ButtonDropTarget;->onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V

    iget-object v1, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragLayer:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v2, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v8}, Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method
