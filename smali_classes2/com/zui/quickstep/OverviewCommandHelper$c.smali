.class Lcom/zui/quickstep/OverviewCommandHelper$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseDraggingActivity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/zui/quickstep/ActivityControlHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/quickstep/ActivityControlHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Lcom/zui/quickstep/t4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/quickstep/t4<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

.field final synthetic f:Lcom/zui/quickstep/OverviewCommandHelper;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper;)V
    .locals 4

    iput-object p1, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {p1}, Lcom/zui/quickstep/OverviewCommandHelper;->a(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->b:J

    new-instance v0, Lcom/zui/quickstep/t4;

    iget-object v1, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-static {}, Lcom/zui/quickstep/RecentsModel;->getRunningTaskId()I

    move-result v2

    invoke-static {p1}, Lcom/zui/quickstep/OverviewCommandHelper;->b(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/quickstep/t4;-><init>(Lcom/zui/quickstep/ActivityControlHelper;ILcom/zui/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->c:Lcom/zui/quickstep/t4;

    invoke-static {p1}, Lcom/zui/quickstep/OverviewCommandHelper;->c(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/RecentsModel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/OverviewCommandHelper$c;)Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->e:Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/quickstep/OverviewCommandHelper$c;)Lcom/zui/quickstep/t4;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->c:Lcom/zui/quickstep/t4;

    return-object p0
.end method


# virtual methods
.method protected c(J)Z
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->getVisibleRecentsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/BaseRecentsView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->c:Lcom/zui/quickstep/t4;

    invoke-virtual {v2}, Lcom/zui/quickstep/t4;->d()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-static {v2}, Lcom/zui/quickstep/OverviewCommandHelper;->g(Lcom/zui/quickstep/OverviewCommandHelper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/zui/quickstep/OverviewCommandHelper$c$b;

    invoke-direct {v3, p0, v0}, Lcom/zui/quickstep/OverviewCommandHelper$c$b;-><init>(Lcom/zui/quickstep/OverviewCommandHelper$c;Lcom/zui/quickstep/BaseRecentsView;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p0

    int-to-long v4, p0

    sub-long/2addr v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->showNextTask()V

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, p1, v2

    if-gez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public d(Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {v2}, Lcom/zui/quickstep/ActivityControlHelper;->getContainerType()I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->d:Z

    :cond_0
    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    sget-object v1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->OVERVIEW:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->switchClient(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)V

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->c:Lcom/zui/quickstep/t4;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/t4;->h(Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 9

    iget-wide v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->b:J

    iget-object v2, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-static {v2}, Lcom/zui/quickstep/OverviewCommandHelper;->d(Lcom/zui/quickstep/OverviewCommandHelper;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "OverviewCommandHelper"

    const-string v3, "run-------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    iget-wide v3, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->b:J

    invoke-static {v2, v3, v4}, Lcom/zui/quickstep/OverviewCommandHelper;->e(Lcom/zui/quickstep/OverviewCommandHelper;J)J

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/OverviewCommandHelper$c;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-static {v1}, Lcom/zui/quickstep/OverviewCommandHelper;->b(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    new-instance v2, Lcom/zui/quickstep/p4;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/p4;-><init>(Lcom/zui/quickstep/OverviewCommandHelper$c;)V

    invoke-interface {v0, v1, v2}, Lcom/zui/quickstep/ActivityControlHelper;->switchToRecentsIfVisible(Lcom/zui/quickstep/RecentsAnimationDeviceState;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean p0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->hideVisibleUFreeformsByRecents()Z

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->hideVisibleUFreeformsByRecents()Z

    :cond_3
    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    new-instance v1, Lcom/zui/quickstep/a1;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/a1;-><init>(Lcom/zui/quickstep/OverviewCommandHelper$c;)V

    invoke-interface {v0, v1}, Lcom/zui/quickstep/ActivityControlHelper;->createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->e:Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-static {v0}, Lcom/zui/quickstep/OverviewCommandHelper;->a(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Lcom/zui/quickstep/OverviewCommandHelper$c$a;

    invoke-direct {v4, p0}, Lcom/zui/quickstep/OverviewCommandHelper$c$a;-><init>(Lcom/zui/quickstep/OverviewCommandHelper$c;)V

    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-static {v0}, Lcom/zui/quickstep/OverviewCommandHelper;->f(Lcom/zui/quickstep/OverviewCommandHelper;)Landroid/content/Context;

    move-result-object v5

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->c:Lcom/zui/quickstep/t4;

    invoke-virtual {p0}, Lcom/zui/quickstep/t4;->d()J

    move-result-wide v7

    invoke-interface/range {v2 .. v8}, Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;->registerAndStartActivity(Landroid/content/Intent;Lcom/zui/quickstep/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V

    return-void
.end method
