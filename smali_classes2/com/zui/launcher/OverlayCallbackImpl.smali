.class public Lcom/zui/launcher/OverlayCallbackImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherOverlay;
.implements Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/zui/launchersdk/api/ZLauncherClient;

.field private c:Lcom/zui/launcher/LauncherOverlayCallbacks;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/OverlayCallbackImpl;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/OverlayCallbackImpl;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onOverlayScrollChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/OverlayCallbackImpl;->c:Lcom/zui/launcher/LauncherOverlayCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/zui/launcher/LauncherOverlayCallbacks;->onScrollChanged(F)V

    :cond_0
    return-void
.end method

.method public onScrollChange(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/OverlayCallbackImpl;->b:Lcom/zui/launchersdk/api/ZLauncherClient;

    invoke-virtual {p0, p1}, Lcom/zui/launchersdk/api/ZLauncherClient;->updateMove(F)V

    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 1

    const-string v0, "------OverlayCallbackImpl-----onScrollInteractionBegin"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/OverlayCallbackImpl;->b:Lcom/zui/launchersdk/api/ZLauncherClient;

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->startMove()V

    return-void
.end method

.method public onScrollInteractionEnd()V
    .locals 1

    const-string v0, "------OverlayCallbackImpl-----onScrollInteractionEnd"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/OverlayCallbackImpl;->b:Lcom/zui/launchersdk/api/ZLauncherClient;

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->endMove()V

    return-void
.end method

.method public onServiceStateChanged(ZZ)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "------OverlayCallbackImpl-----onServiceStateChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/zui/launcher/OverlayCallbackImpl;->d:Z

    if-eq p1, p2, :cond_1

    iput-boolean p1, p0, Lcom/zui/launcher/OverlayCallbackImpl;->d:Z

    iget-object p2, p0, Lcom/zui/launcher/OverlayCallbackImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/OverlayCallbackImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/zui/launcher/Launcher;->setLauncherOverlay(Lcom/zui/launcher/LauncherOverlay;)V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/OverlayCallbackImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/OverlayCallbackImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->checkAndRebindOverlay()V

    :cond_2
    return-void
.end method

.method public setClient(Lcom/zui/launchersdk/api/ZLauncherClient;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/OverlayCallbackImpl;->b:Lcom/zui/launchersdk/api/ZLauncherClient;

    return-void
.end method

.method public setOverlayCallbacks(Lcom/zui/launcher/LauncherOverlayCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/OverlayCallbackImpl;->c:Lcom/zui/launcher/LauncherOverlayCallbacks;

    return-void
.end method
