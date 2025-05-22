.class public Lcom/zui/launcher/GoogleLauncherCallbacks;
.super Lcom/zui/launcher/LauncherCallbacksCompat;
.source ""


# instance fields
.field private b:Lcom/zui/launcher/GoogleOverlayCallbackImpl;

.field private c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherCallbacksCompat;-><init>(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method private c(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
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

    const-string v0, "------GoogleLauncherCallbacks-----getClientOptions:  enable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    invoke-direct {p1, p0, v1, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    return-object p1
.end method


# virtual methods
.method public enableOverlayScreen(Z)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/zui/launcher/GoogleLauncherCallbacks;->c(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setClientOptions(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    return-void
.end method

.method public hide(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :goto_0
    return-void
.end method

.method public initClient(Landroid/content/SharedPreferences;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/GoogleOverlayCallbackImpl;

    iget-object v1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/zui/launcher/GoogleOverlayCallbackImpl;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->b:Lcom/zui/launcher/GoogleOverlayCallbackImpl;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->b:Lcom/zui/launcher/GoogleOverlayCallbackImpl;

    invoke-direct {p0, p1}, Lcom/zui/launcher/GoogleLauncherCallbacks;->c(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    iput-object v0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->b:Lcom/zui/launcher/GoogleOverlayCallbackImpl;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GoogleOverlayCallbackImpl;->setClient(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    :cond_0
    return-void
.end method

.method public onClientAttachedToWindow()V
    .locals 1

    const-string v0, "------GoogleLauncherCallbacks-----onClientAttachedToWindow"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    return-void
.end method

.method public onClientDestroy()V
    .locals 1

    const-string v0, "------GoogleLauncherCallbacks-----onClientDestroy"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onClientDetachedFromWindow()V
    .locals 1

    const-string v0, "------GoogleLauncherCallbacks-----onClientDetachedFromWindow"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDetachedFromWindow()V

    return-void
.end method

.method public onClientHideOverlay(Z)V
    .locals 0

    const-string p1, "------GoogleLauncherCallbacks-----onClientHideOverlay"

    invoke-static {p1}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_0
    return-void
.end method

.method public onClientPause()V
    .locals 1

    const-string v0, "------GoogleLauncherCallbacks-----onClientPause"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onPause()V

    return-void
.end method

.method public onClientReattachOverlay()V
    .locals 1

    const-string v0, "------GoogleLauncherCallbacks-----onClientReattachOverlay"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reattachOverlay()V

    return-void
.end method

.method public onClientResume()V
    .locals 1

    const-string v0, "------GoogleLauncherCallbacks-----onClientResume"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GoogleLauncherCallbacks;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onResume()V

    return-void
.end method
