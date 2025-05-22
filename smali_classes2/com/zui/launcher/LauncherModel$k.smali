.class Lcom/zui/launcher/LauncherModel$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$k;->a:Lcom/zui/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$k;->a:Lcom/zui/launcher/LauncherModel;

    invoke-static {v0}, Lcom/zui/launcher/LauncherModel;->a(Lcom/zui/launcher/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$k;->a:Lcom/zui/launcher/LauncherModel;

    iget-object v0, v0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v0

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-boolean v1, v1, Lcom/zui/launcher/model/BgDataModel;->hasShortcutHostPermission:Z

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$k;->a:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->forceReload()V

    :cond_0
    return-void
.end method
