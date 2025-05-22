.class public Lcom/zui/launcher/LauncherInitListener;
.super Lcom/zui/launcher/states/InternalStateHandler;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private final b:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Lcom/zui/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/zui/quickstep/util/RemoteAnimationProvider;


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/zui/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/states/InternalStateHandler;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/LauncherInitListener;->b:Ljava/util/function/BiPredicate;

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/LauncherInitListener;)Lcom/zui/quickstep/util/RemoteAnimationProvider;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherInitListener;->c:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/LauncherInitListener;Lcom/zui/quickstep/util/RemoteAnimationProvider;)Lcom/zui/quickstep/util/RemoteAnimationProvider;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherInitListener;->c:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    return-object p1
.end method


# virtual methods
.method protected init(Lcom/zui/launcher/Launcher;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherInitListener;->c:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppTransitionManager()Lcom/zui/launcher/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v2, Lcom/zui/launcher/LauncherInitListener$a;

    invoke-direct {v2, p0, v1, p1}, Lcom/zui/launcher/LauncherInitListener$a;-><init>(Lcom/zui/launcher/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->setRemoteAnimationProvider(Lcom/zui/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V

    :cond_0
    invoke-static {p1}, Lcom/zui/quickstep/OverviewCallbacks;->get(Landroid/content/Context;)Lcom/zui/quickstep/OverviewCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewCallbacks;->onInitOverviewTransition()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherInitListener;->b:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public register()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/states/InternalStateHandler;->initWhenReady()V

    return-void
.end method

.method public registerAndStartActivity(Landroid/content/Intent;Lcom/zui/quickstep/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 2

    iput-object p2, p0, Lcom/zui/launcher/LauncherInitListener;->c:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherInitListener;->register()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAndStartActivity, context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherInitListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p4, p5, p6, p3}, Lcom/zui/quickstep/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;JLandroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerAndStartActivity, activityOptions:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p4}, Lcom/zui/launcher/states/InternalStateHandler;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0, p5, p6}, Lcom/zui/launcher/Launcher;->applyDeskBlurSelfControl(J)V

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherInitListener;->c:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    invoke-virtual {p0}, Lcom/zui/launcher/states/InternalStateHandler;->clearReference()Z

    return-void
.end method
