.class public Lcom/zui/quickstep/SwipeSharedState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z


# instance fields
.field private a:Lcom/zui/quickstep/OverviewComponentObserver;

.field private b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

.field private c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

.field public canGestureBeContinued:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/app/ActivityManager$RunningTaskInfo;

.field private g:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public goingToLauncher:Z

.field public nextRunningTaskId:I

.field public recentsAnimationFinishInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.shell_transit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/zui/quickstep/SwipeSharedState;->ENABLE_SHELL_TRANSITIONS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/SwipeSharedState;->d:Z

    iput-boolean v0, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/SwipeSharedState;->nextRunningTaskId:I

    return-void
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/SwipeSharedState;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->removeListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/SwipeSharedState;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->cancelListener()V

    iget-boolean v0, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/quickstep/s4;

    invoke-direct {v2, p1}, Lcom/zui/quickstep/s4;-><init>(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/quickstep/k;

    invoke-direct {v2, p1}, Lcom/zui/quickstep/k;-><init>(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    :goto_0
    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-object p1, p1, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->cleanupScreenshot()V

    iput-object v1, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    :cond_1
    iput-object v1, p0, Lcom/zui/quickstep/SwipeSharedState;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    invoke-virtual {p0}, Lcom/zui/quickstep/SwipeSharedState;->clearAnimationTarget()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/SwipeSharedState;->d:Z

    iput-boolean p1, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    return-void
.end method

.method public static synthetic b(Lcom/zui/quickstep/SwipeSharedState;Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/SwipeSharedState;->c(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    return-void
.end method

.method private c(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public applyActiveRecentsAnimationState(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;->onRecentsAnimationStart(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/zui/quickstep/SwipeSharedState;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, p0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearAllState(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/SwipeSharedState;->a(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/SwipeSharedState;->canGestureBeContinued:Z

    iput-boolean p1, p0, Lcom/zui/quickstep/SwipeSharedState;->recentsAnimationFinishInterrupted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/SwipeSharedState;->nextRunningTaskId:I

    iput-boolean p1, p0, Lcom/zui/quickstep/SwipeSharedState;->goingToLauncher:Z

    return-void
.end method

.method public clearAnimationTarget()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->release()V

    iput-object v1, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    :cond_0
    iput-object v1, p0, Lcom/zui/quickstep/SwipeSharedState;->g:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "goingToLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/SwipeSharedState;->goingToLauncher:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "canGestureBeContinued="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/SwipeSharedState;->canGestureBeContinued:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "recentsAnimationFinishInterrupted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/SwipeSharedState;->recentsAnimationFinishInterrupted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nextRunningTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/quickstep/SwipeSharedState;->nextRunningTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lastAnimationCancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/SwipeSharedState;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "lastAnimationRunning="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveListener()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/SwipeSharedState;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    return-object p0
.end method

.method public getRunningTaskId()I
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/SwipeSharedState;->f:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public isLastAnimationCancelled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/SwipeSharedState;->d:Z

    return p0
.end method

.method public isLastAnimationRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    return p0
.end method

.method public newRecentsAnimationListenerSet()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-boolean v0, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New animation started before completing old animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeSharedState"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/SwipeSharedState;->a(Z)V

    iget-object v1, p0, Lcom/zui/quickstep/SwipeSharedState;->a:Lcom/zui/quickstep/OverviewComponentObserver;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->shouldMinimizeSplitScreen()Z

    move-result v0

    :goto_0
    new-instance v1, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    new-instance v2, Lcom/zui/quickstep/b1;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/b1;-><init>(Lcom/zui/quickstep/SwipeSharedState;)V

    invoke-direct {v1, v0, v2}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;-><init>(ZLjava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/zui/quickstep/SwipeSharedState;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    invoke-virtual {v1, p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->addListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V

    iget-object p0, p0, Lcom/zui/quickstep/SwipeSharedState;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    return-object p0
.end method

.method public final onRecentsAnimationCanceled(Ljava/util/HashMap;)V
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

    invoke-virtual {p0}, Lcom/zui/quickstep/SwipeSharedState;->clearAnimationTarget()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/SwipeSharedState;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    return-void
.end method

.method public final onRecentsAnimationStart(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/SwipeSharedState;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/SwipeSharedState;->e:Z

    invoke-virtual {p0}, Lcom/zui/quickstep/SwipeSharedState;->getRunningTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->g:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method

.method public onTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/SwipeSharedState;->g:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-eq v2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/SwipeSharedState;->g:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->removeTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    :cond_1
    iget-object p1, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->g:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    :cond_2
    return-void
.end method

.method public setOverviewComponentObserver(Lcom/zui/quickstep/OverviewComponentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->a:Lcom/zui/quickstep/OverviewComponentObserver;

    return-void
.end method

.method public setRecentsAnimationFinishInterrupted(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/SwipeSharedState;->recentsAnimationFinishInterrupted:Z

    iput p1, p0, Lcom/zui/quickstep/SwipeSharedState;->nextRunningTaskId:I

    iget-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->cloneWithoutTargets()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->c:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    return-void
.end method

.method public updateRunningTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/SwipeSharedState;->f:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method
