.class public Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;
.super Landroid/content/ContextWrapper;
.source ""

# interfaces
.implements Lcom/zui/quickstep/inputconsumers/InputConsumer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field public static final DOWN_EVT:Ljava/lang/String; = "OtherActivityInputConsumer.DOWN"

.field public static final QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f


# instance fields
.field private A:Z

.field private B:F

.field private C:Landroid/os/Handler;

.field private D:Ljava/lang/Runnable;

.field private E:Z

.field private F:Lcom/zui/quickstep/views/LongSwipeView;

.field private G:Ljava/lang/Runnable;

.field private final a:Lcom/zui/quickstep/util/CachedEventDispatcher;

.field private final b:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final c:Lcom/zui/quickstep/RecentsModel;

.field private final d:Landroid/content/Intent;

.field private final e:Landroid/content/Intent;

.field private final f:Lcom/zui/quickstep/ActivityControlHelper;

.field private final g:Lcom/zui/quickstep/OverviewCallbacks;

.field private final h:Lcom/android/systemui/shared/system/InputConsumerController;

.field private final i:Lcom/zui/quickstep/SwipeSharedState;

.field private final j:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field private final l:Landroid/graphics/RectF;

.field private final m:Lcom/zui/quickstep/util/NavBarPosition;

.field protected final mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

.field private final n:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/zui/quickstep/util/MotionPauseDetector;

.field private final p:F

.field private q:Landroid/view/VelocityTracker;

.field private r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

.field private final s:Z

.field private final t:Landroid/graphics/PointF;

.field private final u:Landroid/graphics/PointF;

.field private v:I

.field private final w:F

.field private final x:F

.field private final y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/zui/quickstep/RecentsModel;Landroid/content/Intent;Landroid/content/Intent;Lcom/zui/quickstep/ActivityControlHelper;ZLcom/zui/quickstep/OverviewCallbacks;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/util/function/Consumer;Lcom/zui/quickstep/SwipeSharedState;Lcom/android/systemui/shared/system/InputMonitorCompat;Landroid/graphics/RectF;ZLcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/views/LongSwipeView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Lcom/zui/quickstep/RecentsModel;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Lcom/zui/quickstep/ActivityControlHelper;",
            "Z",
            "Lcom/zui/quickstep/OverviewCallbacks;",
            "Lcom/android/systemui/shared/system/InputConsumerController;",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;",
            ">;",
            "Lcom/zui/quickstep/SwipeSharedState;",
            "Lcom/android/systemui/shared/system/InputMonitorCompat;",
            "Landroid/graphics/RectF;",
            "Z",
            "Lcom/zui/quickstep/RecentsAnimationDeviceState;",
            "Lcom/zui/quickstep/views/LongSwipeView;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/zui/quickstep/util/CachedEventDispatcher;

    invoke-direct {v1}, Lcom/zui/quickstep/util/CachedEventDispatcher;-><init>()V

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->a:Lcom/zui/quickstep/util/CachedEventDispatcher;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    const/4 v1, -0x1

    iput v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->v:I

    sget-object v1, Lcom/zui/quickstep/inputconsumers/i;->a:Lcom/zui/quickstep/inputconsumers/i;

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->D:Ljava/lang/Runnable;

    new-instance v1, Lcom/zui/quickstep/inputconsumers/g;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/inputconsumers/g;-><init>(Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;)V

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->G:Ljava/lang/Runnable;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->C:Landroid/os/Handler;

    move-object v1, p2

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v1, p3

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->c:Lcom/zui/quickstep/RecentsModel;

    move-object v1, p4

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->d:Landroid/content/Intent;

    move-object v1, p5

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->e:Landroid/content/Intent;

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->l:Landroid/graphics/RectF;

    new-instance v1, Lcom/zui/quickstep/util/MotionPauseDetector;

    move-object v2, p1

    invoke-direct {v1, p1}, Lcom/zui/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->o:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07048f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->p:F

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->n:Ljava/util/function/Consumer;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->j:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, p6

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->f:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-virtual/range {p11 .. p11}, Lcom/zui/quickstep/SwipeSharedState;->getActiveListener()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    if-eqz p7, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->s:Z

    move-object v4, p8

    iput-object v4, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->g:Lcom/zui/quickstep/OverviewCallbacks;

    move-object v4, p9

    iput-object v4, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->h:Lcom/android/systemui/shared/system/InputConsumerController;

    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->w:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v4

    iput v4, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->x:F

    iput-boolean v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    iput-boolean v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->A:Z

    if-nez v1, :cond_2

    if-eqz p14, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->y:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual/range {p15 .. p15}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getNavBarPosition()Lcom/zui/quickstep/util/NavBarPosition;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->m:Lcom/zui/quickstep/util/NavBarPosition;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->F:Lcom/zui/quickstep/views/LongSwipeView;

    return-void
.end method

.method private b(J)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->C:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 7

    const-string v0, "OtherActivityInputConsumer.UP"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    sget-object v1, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v2, "TouchInt"

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchInt, finishTouchTracking---mPaddedWindowMoveSlop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInteractionHandler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Utouch"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->onGestureCancelled()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->v:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    iget-object v3, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->v:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->m:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v4}, Lcom/zui/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->m:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v4}, Lcom/zui/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v4

    if-eqz v4, :cond_2

    neg-float v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->e(Landroid/view/MotionEvent;)F

    move-result p1

    iget v6, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->B:F

    sub-float/2addr p1, v6

    invoke-virtual {v5, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->updateDisplacement(F)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    invoke-virtual {p1, v4, v5, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->onConsumerAboutToBeSwitched()V

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->m()V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->f:Lcom/zui/quickstep/ActivityControlHelper;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Lcom/zui/quickstep/ActivityControlHelper;->onTransitionCancelled(Lcom/zui/launcher/BaseDraggingActivity;Z)V

    :cond_4
    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->D:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->o:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/MotionPauseDetector;->clear()V

    invoke-static {v0, v2}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method private e(Landroid/view/MotionEvent;)F
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->m:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    :goto_0
    sub-float/2addr p1, p0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->m:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p0, p1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->G:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->C:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static g(FFFF)Z
    .locals 1

    sub-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "offetX:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Launcher.Utouch"

    invoke-static {p3, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "offsetY:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x41a00000    # 20.0f

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic h()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->m()V

    return-void
.end method

.method private l()V
    .locals 2

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string v1, "startQuickstep"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->j:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->g:Lcom/zui/quickstep/OverviewCallbacks;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewCallbacks;->closeAllWindows()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->onGestureStarted()V

    return-void
.end method

.method private m()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "TouchInteractionService"

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->n()V

    :try_start_0
    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release InteractionHandler before set null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->release()V

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz v1, :cond_1

    const-string v1, "reset InteractionHandler before set null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->reset()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "there is NullPointerException----\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->n:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/SwipeSharedState;->getActiveListener()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->removeListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->G:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->C:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->E:Z

    return-void
.end method

.method private p(J)V
    .locals 14

    move-object v11, p0

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string v1, "startRecentsAnimation"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/SwipeSharedState;->getActiveListener()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    move-result-object v12

    iget-object v0, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->f:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->shouldMinimizeSplitScreen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v13, Lcom/zui/quickstep/FallbackSwipeHandler;

    iget-object v3, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->f:Lcom/zui/quickstep/ActivityControlHelper;

    if-eqz v12, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iget-object v7, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->h:Lcom/android/systemui/shared/system/InputConsumerController;

    iget-object v8, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    iget-object v9, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->e:Landroid/content/Intent;

    iget-object v10, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->F:Lcom/zui/quickstep/views/LongSwipeView;

    move-object v0, v13

    move-object v1, v3

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lcom/zui/quickstep/FallbackSwipeHandler;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;JLcom/zui/quickstep/ActivityControlHelper;ZLcom/android/systemui/shared/system/InputConsumerController;Lcom/zui/quickstep/RecentsAnimationDeviceState;Landroid/content/Intent;Lcom/zui/quickstep/views/LongSwipeView;)V

    goto :goto_2

    :cond_1
    new-instance v13, Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object v3, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->f:Lcom/zui/quickstep/ActivityControlHelper;

    if-eqz v12, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    iget-object v7, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->h:Lcom/android/systemui/shared/system/InputConsumerController;

    iget-object v8, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    iget-object v9, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->F:Lcom/zui/quickstep/views/LongSwipeView;

    move-object v0, v13

    move-object v1, v3

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/zui/quickstep/WindowTransformSwipeHandler;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;JLcom/zui/quickstep/ActivityControlHelper;ZLcom/android/systemui/shared/system/InputConsumerController;Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/views/LongSwipeView;)V

    :goto_2
    iget-object v0, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->c:Lcom/zui/quickstep/RecentsModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    iput-object v13, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    new-instance v0, Lcom/zui/quickstep/inputconsumers/j;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/inputconsumers/j;-><init>(Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;)V

    invoke-virtual {v13, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setGestureEndCallback(Ljava/lang/Runnable;)V

    iget-object v0, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->o:Lcom/zui/quickstep/util/MotionPauseDetector;

    new-instance v1, Lcom/zui/quickstep/inputconsumers/l;

    invoke-direct {v1, v13}, Lcom/zui/quickstep/inputconsumers/l;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    invoke-virtual {v13}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->initWhenReady()V

    if-eqz v12, :cond_3

    invoke-virtual {v12, v13}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->addListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V

    iget-object v0, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v0, v13}, Lcom/zui/quickstep/SwipeSharedState;->applyActiveRecentsAnimationState(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->l()V

    goto :goto_3

    :cond_3
    iget-object v0, v11, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/SwipeSharedState;->newRecentsAnimationListenerSet()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->addListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V

    sget-object v1, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/quickstep/inputconsumers/h;

    invoke-direct {v2, p0, v0}, Lcom/zui/quickstep/inputconsumers/h;-><init>(Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->A:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public synthetic i()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0, v3, v2}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->g(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->E:Z

    :cond_0
    return-void
.end method

.method public isConsumerDetachedFromGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLastAnimationFinished()Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/shared/gamemode/GameUtils;->isGameAppForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v0, v1, :cond_2

    const-string v0, "TouchInteractionService"

    const-string v1, "isLastAnimationFinished----special case--"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInteractionHandler.getcontroller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->isFinished()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFinished()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSwipeSharedState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v1}, Lcom/zui/quickstep/SwipeSharedState;->getActiveListener()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listenerSet.getController():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->isFinished()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFinished()2222:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_1
    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {p0}, Lcom/zui/quickstep/SwipeSharedState;->isLastAnimationCancelled()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic j(Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->d:Landroid/content/Intent;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public notifyOrientationSetup()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->onStartGesture()V

    return-void
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 5

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/shared/gamemode/GameUtils;->isGameAppForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v0, v1, :cond_0

    const-string p0, "TouchInteractionService"

    const-string v0, "onConsumerAboutToBeSwitched----special case--"

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->n()V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->resetLauncherListeners()V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getGestureEndTarget()Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v4, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->canBeContinued:Z

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput-boolean v4, v1, Lcom/zui/quickstep/SwipeSharedState;->canGestureBeContinued:Z

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->isLauncher:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/zui/quickstep/SwipeSharedState;->goingToLauncher:Z

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->i:Lcom/zui/quickstep/SwipeSharedState;

    iget-boolean v1, v0, Lcom/zui/quickstep/SwipeSharedState;->canGestureBeContinued:Z

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->cancelCurrentAnimation(Lcom/zui/quickstep/SwipeSharedState;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->reset()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->a:Lcom/zui/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/CachedEventDispatcher;->hasConsumer()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->a:Lcom/zui/quickstep/util/CachedEventDispatcher;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->m:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v2}, Lcom/zui/quickstep/util/NavBarPosition;->getRotation()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getRecentsViewDispatcher(F)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/CachedEventDispatcher;->setConsumer(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xfe

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->a:Lcom/zui/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v1, p1}, Lcom/zui/quickstep/util/CachedEventDispatcher;->dispatchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    or-int/lit16 v1, v0, 0x100

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->a:Lcom/zui/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v1, p1}, Lcom/zui/quickstep/util/CachedEventDispatcher;->dispatchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otheractivity, onMotionEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Utouch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->o:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->clear()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_14

    if-eq v0, v6, :cond_13

    const/4 v7, 0x2

    if-eq v0, v7, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_13

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->v:I

    if-ne v1, v2, :cond_16

    if-nez v0, :cond_4

    move v5, v6

    :cond_4
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->v:I

    goto/16 :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->A:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "ACTION_POINTER_DOWN, disable gesture---"

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->v:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v2, v7, v0}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->e(Landroid/view/MotionEvent;)F

    move-result v0

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v7

    iget-boolean v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->s:Z

    if-nez v7, :cond_8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->w:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    iput-boolean v6, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    neg-float v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->B:F

    :cond_8
    iget-boolean v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->A:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    invoke-static {v2, v7}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result v8

    iget v9, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->x:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_d

    iget-boolean v8, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->y:Z

    if-eqz v8, :cond_9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_9

    const-string v0, "displacementX > displacementY, disable gesture---"

    goto :goto_0

    :cond_9
    iget-boolean v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->E:Z

    if-eqz v7, :cond_a

    const-string v0, "disable launcher gesture---"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_a
    iput-boolean v6, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->A:Z

    iget-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->s:Z

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->p(J)V

    :cond_b
    iget-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    if-nez v1, :cond_c

    iput-boolean v6, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->w:F

    neg-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->B:F

    :cond_c
    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->l()V

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->o()V

    :cond_d
    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz v1, :cond_12

    iget-boolean v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->z:Z

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->B:F

    sub-float v7, v0, v7

    invoke-virtual {v1, v7}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->updateDisplacement(F)V

    :cond_e
    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v7, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v1, v7, :cond_12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    move v1, v6

    goto :goto_1

    :cond_f
    move v1, v5

    :goto_1
    iget-object v7, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->o:Lcom/zui/quickstep/util/MotionPauseDetector;

    iget v8, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->p:F

    cmpg-float v2, v2, v8

    if-ltz v2, :cond_10

    if-eqz v1, :cond_11

    :cond_10
    move v5, v6

    :cond_11
    invoke-virtual {v7, v5}, Lcom/zui/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->o:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v2, v0, v5, v6}, Lcom/zui/quickstep/util/MotionPauseDetector;->addPosition(FJ)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setIsLikelyToStartNewTask(Z)V

    :cond_12
    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    sub-long/2addr v3, v0

    goto :goto_2

    :cond_13
    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->c(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->o()V

    goto :goto_3

    :cond_14
    const-string v0, "OtherActivityInputConsumer.DOWN"

    invoke-static {v0, v6}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    sget-object v1, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v2, "TouchInt"

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->v:I

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->u:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->t:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->s:Z

    if-nez v1, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->p(J)V

    :cond_15
    invoke-static {v0, v5}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->E:Z

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->b(J)V

    :cond_16
    :goto_3
    return-void
.end method

.method public useSharedSwipeState()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->r:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
