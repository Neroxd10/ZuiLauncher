.class Lcom/zui/launcher/Launcher$x1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->checkAndRebindOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$x1;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x1;->a:Lcom/zui/launcher/Launcher;

    iget-object v1, v0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isOverlayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "==========> checkaAndRebindOverlayService============="

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x1;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->h0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x1;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->h0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x1;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->h0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/launcher/LauncherCallbacks;->onDestroy()V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/Launcher$x1;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetSearchLauncherCallbacks()V

    return-void
.end method
