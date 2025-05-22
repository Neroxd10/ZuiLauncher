.class public Lcom/zui/quickstep/RecentsAnimationWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Lcom/android/systemui/shared/system/InputConsumerController;

.field private d:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/zui/quickstep/inputconsumers/InputConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

.field private h:Z

.field private i:Z

.field public targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/shared/system/InputConsumerController;",
            "Ljava/util/function/Supplier<",
            "Lcom/zui/quickstep/inputconsumers/InputConsumer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->b:Z

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->f:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->c:Lcom/android/systemui/shared/system/InputConsumerController;

    iput-object p4, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->d:Ljava/util/function/Supplier;

    return-void
.end method

.method private a()V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->h:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {v1, v0}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->c:Lcom/android/systemui/shared/system/InputConsumerController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    :cond_1
    iput-object v1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->d:Ljava/util/function/Supplier;

    return-void
.end method

.method private b(ZLjava/lang/Runnable;Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->finishController(ZLjava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method private c(ZLjava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->a()V

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/RecentsAnimationWrapper;->b(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/zui/quickstep/RecentsAnimationWrapper;Landroid/view/InputEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/RecentsAnimationWrapper;->e(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method private e(Landroid/view/InputEvent;)Z
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/RecentsAnimationWrapper;->f(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->d:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/inputconsumers/InputConsumer;

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    :cond_1
    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-eqz p0, :cond_2

    check-cast p1, Landroid/view/KeyEvent;

    invoke-interface {p0, p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onKeyEvent(Landroid/view/KeyEvent;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private f(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->h:Z

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->d:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/inputconsumers/InputConsumer;

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->h:Z

    iget-boolean v2, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->i:Z

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->i:Z

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->a()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    or-int/lit16 v2, v0, 0x200

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    sget-object v2, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;

    iget-object v3, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->f:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;->transform(Landroid/view/MotionEvent;I)V

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->g:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p0, p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    :cond_3
    return v1
.end method


# virtual methods
.method public enableInputConsumer()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->enableInputConsumer()V

    :cond_0
    return-void
.end method

.method public enableInputProxy()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->c:Lcom/android/systemui/shared/system/InputConsumerController;

    new-instance v1, Lcom/zui/quickstep/u0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/u0;-><init>(Lcom/zui/quickstep/RecentsAnimationWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;Z)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->i:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/RecentsAnimationWrapper;->b(ZLjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/RecentsAnimationWrapper;->c(ZLjava/lang/Runnable;Z)V

    :goto_0
    return-void
.end method

.method public getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    return-object p0
.end method

.method public hasTargets()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->hasTargets()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized runOnInit(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setController(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->b:Z

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->setWindowThresholdCrossed(Z)V

    iget-object p1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->a:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->setSplitScreenMinimized(Z)V

    :cond_0
    return-void
.end method

.method public setWindowThresholdCrossed(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->b:Z

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->setWindowThresholdCrossed(Z)V

    :cond_0
    return-void
.end method
