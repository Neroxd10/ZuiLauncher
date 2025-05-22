.class public Lcom/zui/quickstep/util/SplitSelectStateController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/SplitSelectStateController$a;,
        Lcom/zui/quickstep/util/SplitSelectStateController$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/zui/quickstep/SystemUiProxy;

.field private final c:Lcom/zui/launcher/LauncherStateManager;

.field private final d:Lcom/zui/launcher/statehandlers/DepthController;

.field private e:I

.field private f:Lcom/android/systemui/shared/recents/model/Task;

.field private g:Lcom/android/systemui/shared/recents/model/Task;

.field private h:Z

.field private i:Lcom/zui/quickstep/views/GroupedTaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/zui/quickstep/SystemUiProxy;Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/statehandlers/DepthController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->b:Lcom/zui/quickstep/SystemUiProxy;

    iput-object p3, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->c:Lcom/zui/launcher/LauncherStateManager;

    iput-object p4, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->d:Lcom/zui/launcher/statehandlers/DepthController;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/util/SplitSelectStateController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/quickstep/util/SplitSelectStateController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/zui/quickstep/util/SplitSelectStateController;)Lcom/zui/quickstep/views/GroupedTaskView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->i:Lcom/zui/quickstep/views/GroupedTaskView;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/quickstep/util/SplitSelectStateController;)Lcom/zui/launcher/LauncherStateManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->c:Lcom/zui/launcher/LauncherStateManager;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/quickstep/util/SplitSelectStateController;)Lcom/zui/launcher/statehandlers/DepthController;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->d:Lcom/zui/launcher/statehandlers/DepthController;

    return-object p0
.end method


# virtual methods
.method public getActiveSplitStagePosition()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->e:I

    return p0
.end method

.method public isSplitSelectActive()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->f:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->g:Lcom/android/systemui/shared/recents/model/Task;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchTasks(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;ILjava/util/function/Consumer;ZF)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v3, v3, [I

    if-nez p3, :cond_0

    iget-object v6, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v6, v3, v5

    iget-object v6, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v6, v3, v4

    goto :goto_0

    :cond_0
    iget-object v6, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v6, v3, v5

    iget-object v6, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v6, v3, v4

    :goto_0
    sget-boolean v6, Lcom/zui/quickstep/SwipeSharedState;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v6, :cond_1

    new-instance v6, Lcom/zui/quickstep/util/SplitSelectStateController$b;

    invoke-direct {v6, p0, v1, v2}, Lcom/zui/quickstep/util/SplitSelectStateController$b;-><init>(Lcom/zui/quickstep/util/SplitSelectStateController;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v7, v0, Lcom/zui/quickstep/util/SplitSelectStateController;->b:Lcom/zui/quickstep/SystemUiProxy;

    aget v8, v3, v5

    const/4 v9, 0x0

    aget v10, v3, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-instance v14, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-direct {v14, v6, v0, v1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/app/IApplicationThread;)V

    move/from16 v13, p6

    invoke-virtual/range {v7 .. v14}, Lcom/zui/quickstep/SystemUiProxy;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/zui/quickstep/util/SplitSelectStateController$a;

    move-object/from16 v7, p4

    invoke-direct {v6, p0, v1, v2, v7}, Lcom/zui/quickstep/util/SplitSelectStateController$a;-><init>(Lcom/zui/quickstep/util/SplitSelectStateController;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    new-instance v14, Landroid/view/RemoteAnimationAdapter;

    invoke-static {v6}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;

    move-result-object v8

    const-wide/16 v9, 0x12c

    const-wide/16 v11, 0x96

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v13

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    if-eqz p5, :cond_2

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    :cond_2
    iget-object v7, v0, Lcom/zui/quickstep/util/SplitSelectStateController;->b:Lcom/zui/quickstep/SystemUiProxy;

    aget v8, v3, v5

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    aget v10, v3, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v13, p6

    invoke-virtual/range {v7 .. v14}, Lcom/zui/quickstep/SystemUiProxy;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    :goto_1
    return-void
.end method

.method public launchTasks(Lcom/zui/quickstep/views/GroupedTaskView;Ljava/util/function/Consumer;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/quickstep/views/GroupedTaskView;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->i:Lcom/zui/quickstep/views/GroupedTaskView;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->getStagePosition()I

    move-result v6

    invoke-virtual {p1}, Lcom/zui/quickstep/views/GroupedTaskView;->getSplitRatio()F

    move-result v9

    move-object v3, p0

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/zui/quickstep/util/SplitSelectStateController;->launchTasks(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;ILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public resetState()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->f:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->g:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->e:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->h:Z

    iput-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->i:Lcom/zui/quickstep/views/GroupedTaskView;

    return-void
.end method

.method public setInitialTaskSelect(Lcom/android/systemui/shared/recents/model/Task;ILandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->f:Lcom/android/systemui/shared/recents/model/Task;

    iput p2, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->e:I

    return-void
.end method

.method public setRecentsAnimationRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->h:Z

    return-void
.end method

.method public setSecondTaskId(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->g:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->f:Lcom/android/systemui/shared/recents/model/Task;

    iget v3, p0, Lcom/zui/quickstep/util/SplitSelectStateController;->e:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/zui/quickstep/util/SplitSelectStateController;->launchTasks(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;ILjava/util/function/Consumer;ZF)V

    return-void
.end method
