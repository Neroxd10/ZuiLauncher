.class public Lcom/zui/launcher/SearchLauncherCallbacks;
.super Lcom/zui/launcher/LauncherCallbacksCompat;
.source ""


# instance fields
.field private b:Lcom/zui/launcher/OverlayCallbackImpl;

.field private c:Lcom/zui/launchersdk/api/ZLauncherClient;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherCallbacksCompat;-><init>(Lcom/zui/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public enableOverlayScreen(Z)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/SearchLauncherCallbacks;->getClientOptions(Landroid/content/SharedPreferences;)Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->setClientOptions(Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;)V

    :cond_0
    return-void
.end method

.method protected getClientOptions(Landroid/content/SharedPreferences;)Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/LauncherCallbacksCompat;->isOverlayEnabled(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "------SearchLauncherCallbacks-----getClientOptions:  enable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    new-instance p1, Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;

    invoke-direct {p1, p0, v1, v1}, Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;-><init>(ZZZ)V

    return-object p1
.end method

.method public initClient(Landroid/content/SharedPreferences;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/OverlayCallbackImpl;

    iget-object v1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/zui/launcher/OverlayCallbackImpl;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->b:Lcom/zui/launcher/OverlayCallbackImpl;

    new-instance v0, Lcom/zui/launchersdk/api/ZLauncherClient;

    iget-object v1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->b:Lcom/zui/launcher/OverlayCallbackImpl;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/SearchLauncherCallbacks;->getClientOptions(Landroid/content/SharedPreferences;)Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/zui/launchersdk/api/ZLauncherClient;-><init>(Landroid/app/Activity;Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;)V

    iput-object v0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    iget-object p0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->b:Lcom/zui/launcher/OverlayCallbackImpl;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/OverlayCallbackImpl;->setClient(Lcom/zui/launchersdk/api/ZLauncherClient;)V

    :cond_0
    return-void
.end method

.method public onClientAttachedToWindow()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onClientDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onClientDetachedFromWindow()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onClientHideOverlay(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launchersdk/api/ZLauncherClient;->hideOverlay(Z)V

    :cond_0
    return-void
.end method

.method public onClientPause()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->onPause()V

    :cond_0
    return-void
.end method

.method public onClientReattachOverlay()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->reattachOverlay()V

    :cond_0
    return-void
.end method

.method public onClientResume()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchLauncherCallbacks;->c:Lcom/zui/launchersdk/api/ZLauncherClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->onResume()V

    :cond_0
    return-void
.end method
