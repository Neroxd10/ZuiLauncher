.class public Lcom/zui/quickstep/util/SwipeAnimationTargetSet;
.super Lcom/zui/quickstep/util/RemoteAnimationTargetSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;
    }
.end annotation


# instance fields
.field private c:Z

.field public final controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field public final homeContentInsets:Landroid/graphics/Rect;

.field public final mOnFinishListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/zui/quickstep/util/SwipeAnimationTargetSet;",
            ">;"
        }
    .end annotation
.end field

.field public final mShouldMinimizeSplitScreen:Z

.field public final minimizedHomeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/quickstep/util/SwipeAnimationTargetSet;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->c:Z

    iput-object p1, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iput-object p4, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->homeContentInsets:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->minimizedHomeBounds:Landroid/graphics/Rect;

    iput-boolean p6, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->mShouldMinimizeSplitScreen:Z

    iput-object p7, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->mOnFinishListener:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic c(Z)V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SystemUiProxy;->setSplitScreenMinimized(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->hideCurrentInputMethod()V

    iget-object p0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    return-void
.end method

.method public synthetic b(ZZLjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    iget-object p0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    if-eqz p3, :cond_0

    sget-object p0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public cloneWithoutTargets()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;
    .locals 9

    new-instance v8, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-object v1, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v0, 0x0

    new-array v2, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-array v3, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->homeContentInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->minimizedHomeBounds:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->mShouldMinimizeSplitScreen:Z

    iget-object v7, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->mOnFinishListener:Ljava/util/function/Consumer;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    return-object v8
.end method

.method public synthetic d(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    return-void
.end method

.method public enableInputConsumer()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/util/i0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/util/i0;-><init>(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public finishAnimation()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finishController(ZLjava/lang/Runnable;Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->mOnFinishListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/util/g0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/zui/quickstep/util/g0;-><init>(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasTargets()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 0
    .param p1    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->removeTask(I)Z

    move-result p0

    return p0
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->mShouldMinimizeSplitScreen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->c:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->c:Z

    sget-object p0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/quickstep/util/h0;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/util/h0;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setWindowThresholdCrossed(Z)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/util/j0;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/util/j0;-><init>(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;Z)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
