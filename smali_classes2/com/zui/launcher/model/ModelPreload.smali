.class public Lcom/zui/launcher/model/ModelPreload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$ModelUpdateTask;


# instance fields
.field private a:Lcom/zui/launcher/LauncherAppState;

.field private b:Lcom/zui/launcher/LauncherModel;

.field private c:Lcom/zui/launcher/model/BgDataModel;

.field private d:Lcom/zui/launcher/AllAppsList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/model/ModelPreload;->a:Lcom/zui/launcher/LauncherAppState;

    iput-object p2, p0, Lcom/zui/launcher/model/ModelPreload;->b:Lcom/zui/launcher/LauncherModel;

    iput-object p3, p0, Lcom/zui/launcher/model/ModelPreload;->c:Lcom/zui/launcher/model/BgDataModel;

    iput-object p4, p0, Lcom/zui/launcher/model/ModelPreload;->d:Lcom/zui/launcher/AllAppsList;

    return-void
.end method

.method public onComplete(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/model/ModelPreload;->b:Lcom/zui/launcher/LauncherModel;

    new-instance v7, Lcom/zui/launcher/model/LoaderResults;

    iget-object v2, p0, Lcom/zui/launcher/model/ModelPreload;->a:Lcom/zui/launcher/LauncherAppState;

    iget-object v3, p0, Lcom/zui/launcher/model/ModelPreload;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v4, p0, Lcom/zui/launcher/model/ModelPreload;->d:Lcom/zui/launcher/AllAppsList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/model/LoaderResults;-><init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;ILjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v7}, Lcom/zui/launcher/LauncherModel;->startLoaderForResultsIfNotLoaded(Lcom/zui/launcher/model/LoaderResults;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preload completed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/model/ModelPreload;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherModel;->isModelLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelPreload"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/model/ModelPreload;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->isModelLoaded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/ModelPreload;->onComplete(Z)V

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method
