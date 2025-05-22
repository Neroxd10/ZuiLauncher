.class Lcom/zui/quickstep/TouchInteractionService$a;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/TouchInteractionService;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/util/WindowBounds;)V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/zui/quickstep/util/SplitScreenBounds;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/SplitScreenBounds;->setSecondaryWindowBounds(Lcom/zui/launcher/util/WindowBounds;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->d(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->setDeferredGestureRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method public synthetic c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/zui/quickstep/TouchInteractionService;->d(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-static {}, Lcom/zui/quickstep/TouchInteractionService;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->setAssistantAvailable(Z)V

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->f(Lcom/zui/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public synthetic d(F)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/zui/quickstep/TouchInteractionService;->d(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->setAssistantVisibility(F)V

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->f(Lcom/zui/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public synthetic e(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
    .locals 2

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/SystemUiProxy;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p1}, Lcom/zui/quickstep/TouchInteractionService;->h(Lcom/zui/quickstep/TouchInteractionService;)V

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->i(Lcom/zui/quickstep/TouchInteractionService;Z)V

    return-void
.end method

.method public synthetic g(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/zui/quickstep/TouchInteractionService;->d(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->setSystemUiFlags(I)V

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->e(Lcom/zui/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/i2;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/i2;-><init>(Lcom/zui/quickstep/TouchInteractionService$a;Landroid/graphics/Region;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantAvailable(Z)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/d2;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/d2;-><init>(Lcom/zui/quickstep/TouchInteractionService$a;Z)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/g2;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/g2;-><init>(Lcom/zui/quickstep/TouchInteractionService$a;F)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackAction(ZIIZZ)V
    .locals 8

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/zui/quickstep/TouchInteractionService;->c(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewComponentObserver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/zui/quickstep/TouchInteractionService;->c(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->getContainerType()I

    move-result v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionBack(ZIIZZI)V

    return-void
.end method

.method public onImeWindowStatusChanged(ILandroid/os/IBinder;IIZ)V
    .locals 0

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "extra_sysui_proxy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/h2;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/h2;-><init>(Lcom/zui/quickstep/TouchInteractionService$a;Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->a(Z)Z

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->b(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewCommandHelper;->onOverviewHidden()V

    :cond_0
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOverviewShown---triggeredFromAltTab:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->b(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/OverviewCommandHelper;->onOverviewShown(Z)V

    return-void
.end method

.method public onOverviewToggle()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->b(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewCommandHelper;->onOverviewToggle()V

    return-void
.end method

.method public onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    new-instance p0, Lcom/zui/launcher/util/WindowBounds;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object p1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance p2, Lcom/zui/quickstep/e2;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/e2;-><init>(Lcom/zui/launcher/util/WindowBounds;)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/f2;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/f2;-><init>(Lcom/zui/quickstep/TouchInteractionService$a;I)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskbarViewToggle()V
    .locals 0

    return-void
.end method

.method public onTip(II)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->b(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/OverviewCommandHelper;->onTip(II)V

    return-void
.end method

.method public showAllAppsWithRecents()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService$a;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/zui/quickstep/TouchInteractionService;->b(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewCommandHelper;->onAllAppsWithRecentsShow()V

    return-void
.end method
