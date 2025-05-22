.class Lcom/zui/launcher/Utilities$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Utilities;->changeDesktopStyle(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Utilities$g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/Utilities$g;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Utilities$g;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/Utilities$g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "close_all_db"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/zui/launcher/Utilities$g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Utilities$g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Utilities$g;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->setCurrentGridNew(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/Utilities$g$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Utilities$g$a;-><init>(Lcom/zui/launcher/Utilities$g;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
