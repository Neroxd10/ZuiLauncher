.class public abstract Lcom/zui/launcher/model/BaseLoaderResults;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final INVALID_SCREEN_ID:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "LoaderResults"


# instance fields
.field private final a:Lcom/zui/launcher/AllAppsList;

.field private b:I

.field protected final mApp:Lcom/zui/launcher/LauncherAppState;

.field protected final mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

.field protected final mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPageToBindFirst:I

.field protected final mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;ILjava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/LauncherAppState;",
            "Lcom/zui/launcher/model/BgDataModel;",
            "Lcom/zui/launcher/AllAppsList;",
            "I",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/LauncherModel$Callbacks;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    iput-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mApp:Lcom/zui/launcher/LauncherAppState;

    iput-object p2, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iput-object p3, p0, Lcom/zui/launcher/model/BaseLoaderResults;->a:Lcom/zui/launcher/AllAppsList;

    iput p4, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mPageToBindFirst:I

    if-nez p5, :cond_0

    new-instance p5, Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object p5, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    new-instance v3, Lcom/zui/launcher/model/d;

    invoke-direct {v3, v2}, Lcom/zui/launcher/model/d;-><init>(Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p0, v3, p2}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/util/ArrayList;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindItems(Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindItems(Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->clearPendingBinds()V

    invoke-interface {p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->startBinding()V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/util/IntArray;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindScreens(Lcom/zui/launcher/util/IntArray;)V

    return-void
.end method

.method public static filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/ItemInfo;",
            ">(I",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zui/launcher/util/IntSet;

    invoke-direct {v0}, Lcom/zui/launcher/util/IntSet;-><init>()V

    sget-object v1, Lcom/zui/launcher/model/i;->a:Lcom/zui/launcher/model/i;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_3

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne v2, p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/16 v3, -0x65

    if-ne v2, v3, :cond_4

    :goto_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntSet;->add(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_5
    return-void
.end method

.method static synthetic g(ZLjava/util/concurrent/Executor;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/launcher/util/ViewOnDrawExecutor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2, p1}, Lcom/zui/launcher/LauncherModel$Callbacks;->finishFirstPageBind(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V

    return-void
.end method

.method static synthetic i(ILjava/util/concurrent/Executor;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 1

    const/16 v0, -0x3e9

    if-eq p0, v0, :cond_0

    invoke-interface {p2, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->onPageBoundSynchronously(I)V

    :cond_0
    check-cast p1, Lcom/zui/launcher/util/ViewOnDrawExecutor;

    invoke-interface {p2, p1}, Lcom/zui/launcher/LauncherModel$Callbacks;->executeOnNextDraw(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V

    return-void
.end method

.method static synthetic j(Ljava/util/ArrayList;IILcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p3, p0, p1, p2}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindItems(Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic l(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->removePendingRecommendItems()V

    return-void
.end method


# virtual methods
.method public bindAllApps()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->a:Lcom/zui/launcher/AllAppsList;

    iget-object v0, v0, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/zui/launcher/model/g;

    invoke-direct {v1, v0}, Lcom/zui/launcher/model/g;-><init>(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public abstract bindDeepShortcuts()V
.end method

.method public bindLeosWidgets(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LenovoWidgetViewInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    new-instance v3, Lcom/zui/launcher/model/j;

    invoke-direct {v3, v2}, Lcom/zui/launcher/model/j;-><init>(Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p0, v3, p2}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract bindWidgets()V
.end method

.method public bindWorkspace()V
    .locals 13

    iget-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherModel$Callbacks;

    if-nez v0, :cond_0

    const-string p0, "LoaderResults"

    const-string v0, "LoaderTask running with no launcher"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v3}, Lcom/zui/launcher/util/IntArray;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v6, v6, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v6, v6, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v6, v6, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v6}, Lcom/zui/launcher/model/BgDataModel;->collectWorkspaceScreens()Lcom/zui/launcher/util/IntArray;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zui/launcher/util/IntArray;->addAll(Lcom/zui/launcher/util/IntArray;)V

    iget-object v6, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget v7, v6, Lcom/zui/launcher/model/BgDataModel;->lastBindId:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Lcom/zui/launcher/model/BgDataModel;->lastBindId:I

    iget-object v6, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget v6, v6, Lcom/zui/launcher/model/BgDataModel;->lastBindId:I

    iput v6, p0, Lcom/zui/launcher/model/BaseLoaderResults;->b:I

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v5, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mPageToBindFirst:I

    const/16 v6, -0x3e9

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/zui/launcher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v5

    :goto_0
    invoke-virtual {v3}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    if-lt v5, v0, :cond_2

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-ltz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    invoke-virtual {v3, v6}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v5, v7}, Lcom/zui/launcher/model/BaseLoaderResults;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0, v2, v9, v10}, Lcom/zui/launcher/model/BaseLoaderResults;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0, v4, v11, v12}, Lcom/zui/launcher/model/BaseLoaderResults;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v5}, Lcom/zui/launcher/model/BaseLoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v7}, Lcom/zui/launcher/model/BaseLoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/zui/launcher/model/k;->a:Lcom/zui/launcher/model/k;

    iget-object v1, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/zui/launcher/model/h;

    invoke-direct {v0, v3}, Lcom/zui/launcher/model/h;-><init>(Lcom/zui/launcher/util/IntArray;)V

    iget-object v1, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v5, v0}, Lcom/zui/launcher/model/BaseLoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v9, v0}, Lcom/zui/launcher/model/BaseLoaderResults;->a(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v11, v0}, Lcom/zui/launcher/model/BaseLoaderResults;->bindLeosWidgets(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    if-eqz v8, :cond_5

    new-instance v1, Lcom/zui/launcher/util/ViewOnDrawExecutor;

    invoke-direct {v1}, Lcom/zui/launcher/util/ViewOnDrawExecutor;-><init>()V

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    new-instance v2, Lcom/zui/launcher/model/c;

    invoke-direct {v2, v8, v1}, Lcom/zui/launcher/model/c;-><init>(ZLjava/util/concurrent/Executor;)V

    invoke-virtual {p0, v2, v0}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v7, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v10, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->a(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v12, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->bindLeosWidgets(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->removePendingItems(Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/zui/launcher/model/l;

    invoke-direct {v0, p0}, Lcom/zui/launcher/model/l;-><init>(Lcom/zui/launcher/model/BaseLoaderResults;)V

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    if-eqz v8, :cond_6

    new-instance v0, Lcom/zui/launcher/model/a;

    invoke-direct {v0, v6, v1}, Lcom/zui/launcher/model/a;-><init>(ILjava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x6

    if-gt v2, v0, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :cond_0
    sub-int v3, v0, v1

    :goto_1
    new-instance v4, Lcom/zui/launcher/model/f;

    invoke-direct {v4, p1, v1, v3}, Lcom/zui/launcher/model/f;-><init>(Ljava/util/ArrayList;II)V

    invoke-virtual {p0, v4, p2}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/e;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/model/e;-><init>(Lcom/zui/launcher/model/BaseLoaderResults;Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract finishBindingAllApps()V
.end method

.method public synthetic h(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget p0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mPageToBindFirst:I

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->finishBindingItems(I)V

    return-void
.end method

.method public synthetic k(Lcom/zui/launcher/LauncherModel$CallbackTask;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->b:I

    iget-object v1, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget v1, v1, Lcom/zui/launcher/model/BgDataModel;->lastBindId:I

    if-eq v0, v1, :cond_0

    const-string p0, "LoaderResults"

    const-string p1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/LauncherModel$Callbacks;

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$CallbackTask;->execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V

    :cond_1
    return-void
.end method

.method public newIdleLock(Ljava/lang/Object;)Lcom/zui/launcher/util/LooperIdleLock;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/LooperIdleLock;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/zui/launcher/util/LooperIdleLock;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperIdleLock;->queueIdle()Z

    :cond_0
    return-object v0
.end method

.method public removePendingItems(Ljava/util/concurrent/Executor;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/model/b;->a:Lcom/zui/launcher/model/b;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mApp:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, v1

    new-instance v2, Lcom/zui/launcher/model/BaseLoaderResults$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/zui/launcher/model/BaseLoaderResults$a;-><init>(Lcom/zui/launcher/model/BaseLoaderResults;II)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
