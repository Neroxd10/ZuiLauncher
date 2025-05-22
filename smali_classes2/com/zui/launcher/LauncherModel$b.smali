.class Lcom/zui/launcher/LauncherModel$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->addRecommendWidget(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherAppWidgetInfo;

.field final synthetic b:Lcom/zui/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$b;->b:Lcom/zui/launcher/LauncherModel;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$b;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$b;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$b;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->sRecommendWidgets:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sget-object v3, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->sRecommendWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$b;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$b;->b:Lcom/zui/launcher/LauncherModel;

    iget-object v0, v0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/launcher/LauncherModel$b$a;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/LauncherModel$b$a;-><init>(Lcom/zui/launcher/LauncherModel$b;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
