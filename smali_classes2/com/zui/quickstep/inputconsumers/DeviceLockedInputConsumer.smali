.class public Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/inputconsumers/InputConsumer;
.implements Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;


# static fields
.field private static final o:[Ljava/lang/String;

.field private static final p:I

.field private static final q:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:F

.field private final c:Lcom/zui/quickstep/SwipeSharedState;

.field private final d:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final e:Landroid/graphics/PointF;

.field private final f:Lcom/zui/quickstep/util/ClipAnimationHelper;

.field private final g:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

.field private final h:Landroid/graphics/Point;

.field private final i:Lcom/zui/quickstep/MultiStateCallback;

.field private final j:Landroid/graphics/RectF;

.field private k:Landroid/view/VelocityTracker;

.field private l:F

.field private m:Z

.field public final mRunningTaskId:I

.field private n:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->o:[Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "STATE_TARGET_RECEIVED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->d(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->p:I

    const/4 v0, 0x1

    const-string v1, "STATE_HANDLER_INVALIDATED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->d(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/SwipeSharedState;Lcom/android/systemui/shared/system/InputMonitorCompat;Landroid/graphics/RectF;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->e:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->m:Z

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->b:F

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->c:Lcom/zui/quickstep/SwipeSharedState;

    new-instance p2, Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-direct {p2, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->f:Lcom/zui/quickstep/util/ClipAnimationHelper;

    new-instance p2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-direct {p2}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->g:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iput-object p3, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->d:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iput-object p4, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->j:Landroid/graphics/RectF;

    iput p5, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRunningTaskId:I

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->h:Landroid/graphics/Point;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->h:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance p1, Lcom/zui/quickstep/MultiStateCallback;

    sget-object p2, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->o:[Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/zui/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->i:Lcom/zui/quickstep/MultiStateCallback;

    sget p2, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->p:I

    sget p3, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->q:I

    or-int/2addr p2, p3

    new-instance p3, Lcom/zui/quickstep/inputconsumers/c;

    invoke-direct {p3, p0}, Lcom/zui/quickstep/inputconsumers/c;-><init>(Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;)V

    invoke-virtual {p1, p2, p3}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->k:Landroid/view/VelocityTracker;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->n:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->finishController(ZLjava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->i:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->q:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->k:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070615

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->l:F

    const v1, 0x3e99999a    # 0.3f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->k:Landroid/view/VelocityTracker;

    return-void
.end method

.method private static d(ILjava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->o:[Ljava/lang/String;

    aput-object p1, v0, p0

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method

.method public static synthetic e(Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->b()V

    return-void
.end method

.method static synthetic f(Landroid/content/Intent;Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V
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

.method private g()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->m:Z

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->c:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/SwipeSharedState;->newRecentsAnimationListenerSet()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->addListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->a:Landroid/content/Context;

    const-class v4, Lcom/zui/quickstep/LockScreenRecentsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->d:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    sget-object p0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/quickstep/inputconsumers/b;

    invoke-direct {v2, v1, v0}, Lcom/zui/quickstep/inputconsumers/b;-><init>(Landroid/content/Intent;Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V

    invoke-virtual {p0, v2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->m:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getType()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->i:Lcom/zui/quickstep/MultiStateCallback;

    sget v0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->q:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    const/4 v1, 0x5

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->m:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->m:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->e:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result p1

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->b:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->g()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->e:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->l:F

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->g:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setProgress(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->n:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->f:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->g:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v0, p1, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->e:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_6
    :goto_0
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

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->n:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 4

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->n:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->h:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRunningTaskId:I

    invoke-virtual {p1, v1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->f:Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-virtual {v1, v0, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_0
    const/high16 p1, 0x3f400000    # 0.75f

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->f:Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->f:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->n:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->g:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, v0, v1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->i:Lcom/zui/quickstep/MultiStateCallback;

    sget p1, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->p:I

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method
