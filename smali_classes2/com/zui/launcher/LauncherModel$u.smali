.class Lcom/zui/launcher/LauncherModel$u;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->onInstallSessionCreated(Lcom/zui/launcher/pm/PackageInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/zui/launcher/pm/PackageInstallInfo;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/pm/PackageInstallInfo;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$u;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/LauncherModel$u;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    invoke-virtual {p3, p1, p2}, Lcom/zui/launcher/AllAppsList;->addPromiseApp(Landroid/content/Context;Lcom/zui/launcher/pm/PackageInstallInfo;)V

    iget-object p1, p3, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p3, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p3, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    new-instance p2, Lcom/zui/launcher/LauncherModel$u$a;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/LauncherModel$u$a;-><init>(Lcom/zui/launcher/LauncherModel$u;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_0
    return-void
.end method
