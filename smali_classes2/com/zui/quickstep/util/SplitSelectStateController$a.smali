.class Lcom/zui/quickstep/util/SplitSelectStateController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/SplitSelectStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/android/systemui/shared/recents/model/Task;

.field private final b:Lcom/android/systemui/shared/recents/model/Task;

.field private final c:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/zui/quickstep/util/SplitSelectStateController;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/SplitSelectStateController;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->a:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->b:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p4, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->c:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-static {v1}, Lcom/zui/quickstep/util/SplitSelectStateController;->b(Lcom/zui/quickstep/util/SplitSelectStateController;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/SplitSelectStateController;->resetState()V

    return-void
.end method

.method public synthetic b(Ljava/lang/Runnable;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->c:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/SplitSelectStateController;->resetState()V

    return-void
.end method

.method public synthetic c([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/zui/quickstep/util/SplitSelectStateController;->c(Lcom/zui/quickstep/util/SplitSelectStateController;)Lcom/zui/quickstep/views/GroupedTaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->a:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->b:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/zui/quickstep/util/SplitSelectStateController;->d(Lcom/zui/quickstep/util/SplitSelectStateController;)Lcom/zui/launcher/LauncherStateManager;

    move-result-object v7

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/zui/quickstep/util/SplitSelectStateController;->e(Lcom/zui/quickstep/util/SplitSelectStateController;)Lcom/zui/launcher/statehandlers/DepthController;

    move-result-object v8

    new-instance v9, Lcom/zui/quickstep/util/d0;

    invoke-direct {v9, p0, p4}, Lcom/zui/quickstep/util/d0;-><init>(Lcom/zui/quickstep/util/SplitSelectStateController$a;Ljava/lang/Runnable;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v9}, Lcom/zui/quickstep/TaskViewUtils;->composeRecentsSplitLaunchAnimatorLegacy(Lcom/zui/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/statehandlers/DepthController;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/zui/quickstep/util/SplitSelectStateController;->a(Lcom/zui/quickstep/util/SplitSelectStateController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/util/c0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/util/c0;-><init>(Lcom/zui/quickstep/util/SplitSelectStateController$a;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 7

    iget-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController$a;->d:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-static {p1}, Lcom/zui/quickstep/util/SplitSelectStateController;->a(Lcom/zui/quickstep/util/SplitSelectStateController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v6, Lcom/zui/quickstep/util/e0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zui/quickstep/util/e0;-><init>(Lcom/zui/quickstep/util/SplitSelectStateController$a;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    invoke-static {p1, v6}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
