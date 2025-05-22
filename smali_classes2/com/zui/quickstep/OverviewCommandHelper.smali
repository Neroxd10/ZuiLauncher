.class public Lcom/zui/quickstep/OverviewCommandHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/OverviewCommandHelper$d;,
        Lcom/zui/quickstep/OverviewCommandHelper$c;,
        Lcom/zui/quickstep/OverviewCommandHelper$b;,
        Lcom/zui/quickstep/OverviewCommandHelper$e;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/zui/quickstep/RecentsAnimationDeviceState;

.field private final c:Lcom/zui/quickstep/RecentsModel;

.field private final d:Lcom/zui/quickstep/OverviewComponentObserver;

.field private e:Landroid/os/Handler;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/OverviewComponentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/OverviewCommandHelper;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/quickstep/OverviewCommandHelper;->b:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    sget-object p2, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/RecentsModel;

    iput-object p1, p0, Lcom/zui/quickstep/OverviewCommandHelper;->c:Lcom/zui/quickstep/RecentsModel;

    iput-object p3, p0, Lcom/zui/quickstep/OverviewCommandHelper;->d:Lcom/zui/quickstep/OverviewComponentObserver;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/quickstep/OverviewCommandHelper;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/OverviewComponentObserver;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper;->d:Lcom/zui/quickstep/OverviewComponentObserver;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/RecentsAnimationDeviceState;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper;->b:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/RecentsModel;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper;->c:Lcom/zui/quickstep/RecentsModel;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/quickstep/OverviewCommandHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/quickstep/OverviewCommandHelper;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/zui/quickstep/OverviewCommandHelper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zui/quickstep/OverviewCommandHelper;->f:J

    return-wide p1
.end method

.method static synthetic f(Lcom/zui/quickstep/OverviewCommandHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/quickstep/OverviewCommandHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic h(Z)V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/OverviewCommandHelper$e;

    invoke-direct {v0, p0, p1}, Lcom/zui/quickstep/OverviewCommandHelper$e;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;Z)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic j(II)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionTip(II)V

    return-void
.end method

.method public onAllAppsWithRecentsShow()V
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/OverviewCommandHelper$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zui/quickstep/OverviewCommandHelper$d;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;Lcom/zui/quickstep/OverviewCommandHelper$a;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onOverviewHidden()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/OverviewCommandHelper$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zui/quickstep/OverviewCommandHelper$b;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;Lcom/zui/quickstep/OverviewCommandHelper$a;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/zui/launcher/Utilities;->isCtsTestDockedCase()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/z;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/z;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/OverviewCommandHelper$e;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/OverviewCommandHelper$e;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;Z)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverviewToggle()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper;->b:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/zui/quickstep/b0;->a:Lcom/zui/quickstep/b0;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/OverviewCommandHelper$c;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/OverviewCommandHelper$c;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTip(II)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/a0;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/quickstep/a0;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;II)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
