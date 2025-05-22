.class Lcom/zui/launcher/Launcher$y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->m1(IILandroid/content/Intent;)V
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

    iput-object p1, p0, Lcom/zui/launcher/Launcher$y0;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher$y0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$y0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->P(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;J)V

    :cond_0
    return-void
.end method
