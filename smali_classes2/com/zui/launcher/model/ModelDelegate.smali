.class public Lcom/zui/launcher/model/ModelDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# instance fields
.field protected mApp:Lcom/zui/launcher/LauncherAppState;

.field protected mAppsList:Lcom/zui/launcher/AllAppsList;

.field protected mDataModel:Lcom/zui/launcher/model/BgDataModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/AllAppsList;Lcom/zui/launcher/model/BgDataModel;)Lcom/zui/launcher/model/ModelDelegate;
    .locals 2

    const-class v0, Lcom/zui/launcher/model/ModelDelegate;

    const v1, 0x7f1204d9

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/ModelDelegate;

    iput-object p1, p0, Lcom/zui/launcher/model/ModelDelegate;->mApp:Lcom/zui/launcher/LauncherAppState;

    iput-object p2, p0, Lcom/zui/launcher/model/ModelDelegate;->mAppsList:Lcom/zui/launcher/AllAppsList;

    iput-object p3, p0, Lcom/zui/launcher/model/ModelDelegate;->mDataModel:Lcom/zui/launcher/model/BgDataModel;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadItems(Lcom/zui/launcher/model/UserManagerState;Ljava/util/Map;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/model/UserManagerState;",
            "Ljava/util/Map<",
            "Lcom/zui/launcher/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public modelLoadComplete()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public validateData()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/model/ModelDelegate;->mApp:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/model/ModelDelegate;->mAppsList:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {v1}, Lcom/zui/launcher/AllAppsList;->hasShortcutHostPermission()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/model/ModelDelegate;->mApp:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->forceReload()V

    :cond_0
    return-void
.end method

.method public workspaceLoadComplete()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method
