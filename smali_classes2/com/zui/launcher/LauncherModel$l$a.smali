.class Lcom/zui/launcher/LauncherModel$l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherModel$l;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel$l;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$l$a;->a:Lcom/zui/launcher/LauncherModel$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$l$a;->a:Lcom/zui/launcher/LauncherModel$l;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$l;->a:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->updateAllAppsStore()V

    :cond_0
    return-void
.end method
