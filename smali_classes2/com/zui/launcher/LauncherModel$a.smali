.class Lcom/zui/launcher/LauncherModel$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$a;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$a;->a:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/LauncherModel$a;->a:Landroid/content/ComponentName;

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
