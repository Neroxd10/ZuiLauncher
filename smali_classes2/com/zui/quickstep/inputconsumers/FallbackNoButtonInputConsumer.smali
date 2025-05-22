.class public Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/inputconsumers/InputConsumer;
.implements Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;


# instance fields
.field private final a:Lcom/zui/quickstep/ActivityControlHelper;

.field private final b:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/zui/quickstep/util/NavBarPosition;

.field private final e:Lcom/zui/quickstep/SwipeSharedState;

.field private final f:Lcom/zui/quickstep/OverviewComponentObserver;

.field private final g:I

.field private final h:Lcom/zui/quickstep/util/ClipAnimationHelper;

.field private final i:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

.field private final j:F

.field private final k:Lcom/zui/launcher/DeviceProfile;

.field private final l:Landroid/graphics/RectF;

.field private final m:Z

.field private final n:Landroid/graphics/PointF;

.field private final o:Landroid/graphics/PointF;

.field private p:I

.field private q:Z

.field private r:Landroid/view/VelocityTracker;

.field private final s:F

.field private t:F

.field private u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

.field private v:F

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/zui/quickstep/SwipeSharedState;Landroid/graphics/RectF;Lcom/zui/quickstep/OverviewComponentObserver;ZLandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v0}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->i:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->o:Landroid/graphics/PointF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->p:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->w:I

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->a:Lcom/zui/quickstep/ActivityControlHelper;

    iput-object p3, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->b:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iput-object p6, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->f:Lcom/zui/quickstep/OverviewComponentObserver;

    iget p2, p8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->g:I

    iput-object p4, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->e:Lcom/zui/quickstep/SwipeSharedState;

    iput-object p5, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->l:Landroid/graphics/RectF;

    iput-boolean p7, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->m:Z

    new-instance p2, Lcom/zui/quickstep/util/NavBarPosition;

    invoke-direct {p2, p1}, Lcom/zui/quickstep/util/NavBarPosition;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->d:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->r:Landroid/view/VelocityTracker;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40400000    # 3.0f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->s:F

    new-instance p2, Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-direct {p2, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->h:Lcom/zui/quickstep/util/ClipAnimationHelper;

    sget-object p2, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/DeviceProfile;->copy(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->k:Lcom/zui/launcher/DeviceProfile;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object p3, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->a:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object p4, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->k:Lcom/zui/launcher/DeviceProfile;

    invoke-interface {p3, p4, p1, p2}, Lcom/zui/quickstep/ActivityControlHelper;->getSwipeUpDestinationAndLength(Lcom/zui/launcher/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->j:F

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->h:Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;)Lcom/zui/quickstep/util/SwipeAnimationTargetSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    return-object p0
.end method

.method private c()V
    .locals 9

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-virtual {p0, v3, v1, v3}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->finishController(ZLjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->v:F

    const/high16 v4, -0x40000000    # -2.0f

    cmpg-float v5, v0, v4

    const/4 v6, 0x1

    if-gez v5, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-virtual {p0, v6, v1, v6}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->finishController(ZLjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_1
    sub-float/2addr v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x43af0000    # 350.0f

    mul-float/2addr v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-gez v5, :cond_2

    const-wide/16 v0, 0x50

    :cond_2
    new-array v2, v2, [F

    iget v5, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->v:F

    aput v5, v2, v3

    aput v4, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/zui/quickstep/inputconsumers/e;

    invoke-direct {v3, p0, v2}, Lcom/zui/quickstep/inputconsumers/e;-><init>(Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer$a;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer$a;-><init>(Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->w:I

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->r:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->r:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->p:I

    invoke-virtual {p1, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->r:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->p:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->d:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v2}, Lcom/zui/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->d:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v2}, Lcom/zui/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v2

    if-eqz v2, :cond_3

    neg-float p1, p1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070615

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-nez v1, :cond_5

    iget p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->v:F

    neg-float p1, p1

    const v1, 0x3f333333    # 0.7f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_6

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v2, :cond_0

    iput v3, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->w:I

    :goto_4
    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->c()V

    :cond_7
    return-void
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method private f(Landroid/view/MotionEvent;)F
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->d:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    :goto_0
    sub-float/2addr p1, p0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->d:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p0, p1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method static synthetic h(Landroid/content/Intent;Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private i(F)V
    .locals 3

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->s:F

    neg-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->t:F

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->e:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {p1}, Lcom/zui/quickstep/SwipeSharedState;->newRecentsAnimationListenerSet()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->addListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->f:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/quickstep/inputconsumers/d;

    invoke-direct {v2, v0, p1}, Lcom/zui/quickstep/inputconsumers/d;-><init>(Landroid/content/Intent;Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    const-string v0, "recentapps"

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->b:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    return-void
.end method

.method private j(F)V
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->j:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->v:F

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->i:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setProgress(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->h:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->i:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v0, p1, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    :cond_0
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->q:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic g(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->i:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p2, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setProgress(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->h:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object p2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->i:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p2, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    return-void
.end method

.method public getType()I
    .locals 0

    const/16 p0, 0x200

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->r:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->p:I

    if-ne v1, v4, :cond_b

    if-nez v0, :cond_3

    move v2, v3

    :cond_3
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v3, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->o:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->o:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->o:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->p:I

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->q:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->o:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->f(Landroid/view/MotionEvent;)F

    move-result v0

    iget-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->q:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->m:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->o:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->e(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->s:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_b

    iput-boolean v3, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->q:Z

    invoke-direct {p0, v0}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->i(F)V

    goto :goto_1

    :cond_8
    iget p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->t:F

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->j(F)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->d(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->p:I

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->o:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->n:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 4

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->k:Lcom/zui/launcher/DeviceProfile;

    iget v2, v1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->g:I

    invoke-virtual {p1, v1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->k:Lcom/zui/launcher/DeviceProfile;

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->h:Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-virtual {v1, v0, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->h:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->k:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p1, v1, v3}, Lcom/zui/quickstep/util/ClipAnimationHelper;->prepareAnimation(Lcom/zui/launcher/DeviceProfile;Z)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->h:Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->h:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->u:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->i:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, v0, v1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    iget p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->w:I

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->c()V

    :cond_1
    return-void
.end method
