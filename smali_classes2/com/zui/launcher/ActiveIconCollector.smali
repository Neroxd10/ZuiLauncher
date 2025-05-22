.class public Lcom/zui/launcher/ActiveIconCollector;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_LAUNCHER_STOP:Ljava/lang/String; = "launcher.intent.action.ACTION_LAUNCHER_STOP"

.field public static final ACTION_SHOW_ACTIVE_ICON:Ljava/lang/String; = "launcher.intent.action.ACTION_PLAY_ANIM"

.field public static final EXTRA_COMPONENTS:Ljava/lang/String; = "EXTRA_COMPONENTS"

.field public static final RECEIVER_CATEGORY:Ljava/lang/String; = "action.ACTION_PLAY_ANIM"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconCollector;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/zui/launcher/ActiveIconCollector;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/ActiveIconCollector;->c:Ljava/util/HashSet;

    return-void
.end method

.method private a(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private b([[I)Landroid/content/Intent;
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "launcher.intent.action.ACTION_PLAY_ANIM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconCollector;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    iget-object v6, p0, Lcom/zui/launcher/ActiveIconCollector;->c:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    aget-object v8, p1, v5

    aget v8, v8, v4

    iget v9, v7, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v8, v9, :cond_0

    iget v8, v7, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v9, -0x65

    if-eq v8, v9, :cond_1

    aget-object v8, p1, v5

    const/4 v9, 0x1

    aget v8, v8, v9

    iget v9, v7, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne v8, v9, :cond_0

    :cond_1
    invoke-direct {p0, v7}, Lcom/zui/launcher/ActiveIconCollector;->a(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "EXTRA_COMPONENTS"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-------active collector------"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveDoobaLog(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private c(Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isAnimReceiver()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconCollector;->c:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_0
    return-void
.end method

.method public onLauncherStop()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "launcher.intent.action.ACTION_LAUNCHER_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconCollector;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onPageMove([[I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconCollector;->b([[I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/ActiveIconCollector;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "------ActionCollector--------"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "EXTRA_COMPONENTS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconCollector;->c(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconCollector;->a(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconCollector;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/ActiveIconCollector;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregister(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconCollector;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/ActiveIconCollector;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
