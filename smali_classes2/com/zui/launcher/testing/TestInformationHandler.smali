.class public Lcom/zui/launcher/testing/TestInformationHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

.field protected mLauncher:Lcom/zui/launcher/Launcher;

.field protected mLauncherAppState:Lcom/zui/launcher/LauncherAppState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/zui/launcher/testing/TestInformationHandler;
    .locals 2

    const-class v0, Lcom/zui/launcher/testing/TestInformationHandler;

    const v1, 0x7f120670

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/testing/TestInformationHandler;

    return-object p0
.end method


# virtual methods
.method public synthetic a()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zui/launcher/allapps/AllAppsStore;->enableDeferUpdates(I)V

    return-void
.end method

.method public synthetic b()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zui/launcher/allapps/AllAppsStore;->disableDeferUpdates(I)V

    return-void
.end method

.method public synthetic c()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsStore;->getDeferUpdatesFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "freeze-app-list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "home-to-all-apps-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "unfreeze-app-list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "enable-debug-tracing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "all-apps-to-overview-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_5
    const-string v1, "app-list-freeze-flags"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "disable-debug-tracing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v1, 0x0

    const-string v4, "response"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    :try_start_0
    new-instance p1, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/zui/launcher/testing/c;

    invoke-direct {v1, p0}, Lcom/zui/launcher/testing/c;-><init>(Lcom/zui/launcher/testing/TestInformationHandler;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_1
    new-instance p1, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/zui/launcher/testing/b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/testing/b;-><init>(Lcom/zui/launcher/testing/TestInformationHandler;)V

    goto :goto_2

    :pswitch_2
    new-instance p1, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/zui/launcher/testing/a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/testing/a;-><init>(Lcom/zui/launcher/testing/TestInformationHandler;)V

    :goto_2
    invoke-virtual {p1, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :pswitch_3
    sput-boolean v2, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    goto :goto_4

    :pswitch_4
    sput-boolean v3, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    goto :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncher:Lcom/zui/launcher/Launcher;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    goto :goto_3

    :pswitch_6
    iget-object p1, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncher:Lcom/zui/launcher/Launcher;

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    :goto_3
    invoke-virtual {v1, p1}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result p1

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    iget-object v2, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v1

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e105add -> :sswitch_6
        -0x3a20180c -> :sswitch_5
        -0xeb17f15 -> :sswitch_4
        -0xcab8382 -> :sswitch_3
        -0x7e26c79 -> :sswitch_2
        0x11da58c5 -> :sswitch_1
        0x2dcdc740 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncherAppState:Lcom/zui/launcher/LauncherAppState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/Launcher;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mLauncher:Lcom/zui/launcher/Launcher;

    return-void
.end method
