.class public Lcom/zui/launcher/model/ModelWriter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/model/ModelWriter$ModelVerifier;,
        Lcom/zui/launcher/model/ModelWriter$a;,
        Lcom/zui/launcher/model/ModelWriter$c;,
        Lcom/zui/launcher/model/ModelWriter$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/zui/launcher/LauncherModel;

.field private final c:Lcom/zui/launcher/model/BgDataModel;

.field private final d:Landroid/os/Handler;

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/BgDataModel;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/ModelWriter;->g:Ljava/util/List;

    iput-object p1, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/model/ModelWriter;->b:Lcom/zui/launcher/LauncherModel;

    iput-object p3, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    iput-boolean p4, p0, Lcom/zui/launcher/model/ModelWriter;->e:Z

    iput-boolean p5, p0, Lcom/zui/launcher/model/ModelWriter;->f:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/launcher/model/ModelWriter;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/model/ModelWriter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/model/ModelWriter;ILcom/zui/launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/model/ModelWriter;->g(ILcom/zui/launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->b:Lcom/zui/launcher/LauncherModel;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/model/ModelWriter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/model/ModelWriter;->f:Z

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/model/ModelWriter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private g(ILcom/zui/launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object p0, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    if-eqz p0, :cond_3

    if-eq p2, p0, :cond_3

    sget-boolean p1, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    if-nez p1, :cond_0

    instance-of p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p1, :cond_0

    instance-of p1, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->id:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->id:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->container:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "item: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "null"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "modelItem: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private h(Lcom/zui/launcher/ItemInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "itemType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "delete_item_from_the_other_db"

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent like \'%component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/%\' "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "delete_item_from_the_other_db"

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method private j(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/model/ModelWriter;->h:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic p(Lcom/zui/launcher/widget/LauncherAppWidgetHost;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    iget p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    return-void
.end method

.method static synthetic s(Ljava/lang/Iterable;Landroid/content/Context;)V
    .locals 2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getInstance()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    move-result-object v1

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, p1, v0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->removeGameProvider(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_0
    const-string v0, "ModelWriter"

    const-string v1, "game app info not 1 WorkspaceItemInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/zui/launcher/ItemInfo;Landroid/content/Context;)V
    .locals 1

    instance-of v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getInstance()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    move-result-object v0

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->removeGameProvider(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_0
    const-string p0, "ModelWriter"

    const-string p1, " game app info not 2 WorkspaceItemInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private v(Lcom/zui/launcher/ItemInfo;IIII)V
    .locals 1

    iput p2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iput p4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput p5, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/16 v0, -0x65

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/zui/launcher/model/ModelWriter;->e:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    sub-int/2addr p0, p5

    add-int/lit8 p4, p0, -0x1

    :cond_0
    iput p4, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    goto :goto_0

    :cond_1
    iput p3, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    :goto_0
    return-void
.end method


# virtual methods
.method public abortDelete(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/model/ModelWriter;->h:Z

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->forceReload(I)V

    return-void
.end method

.method public addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V
    .locals 6

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/model/ModelWriter;->v(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object p2, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p2, "generate_new_item_id"

    invoke-static {v3, p2}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "value"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/zui/launcher/ItemInfo;->id:I

    new-instance v5, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    invoke-direct {v5, p0}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;-><init>(Lcom/zui/launcher/model/ModelWriter;)V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    sget-object p2, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance p3, Lcom/zui/launcher/model/z0;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/model/z0;-><init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/zui/launcher/model/ModelWriter;->moveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    :goto_0
    return-void
.end method

.method public commitDelete()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/model/ModelWriter;->h:Z

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    sget-object v2, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public deleteFolderAndContentsFromDatabase(Lcom/zui/launcher/FolderInfo;Z)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;-><init>(Lcom/zui/launcher/model/ModelWriter;)V

    new-instance v1, Lcom/zui/launcher/model/s0;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/zui/launcher/model/s0;-><init>(Lcom/zui/launcher/model/ModelWriter;ZLcom/zui/launcher/FolderInfo;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zui/launcher/ItemInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    return-void
.end method

.method public deleteItemFromTheOtherDatabase(Lcom/zui/launcher/util/ItemInfoMatcher;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/ItemInfoMatcher;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-interface {p1, v0}, Lcom/zui/launcher/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromTheOtherDatabase(Ljava/lang/Iterable;)V

    return-object p1
.end method

.method public deleteItemFromTheOtherDatabase(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/model/w0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/model/w0;-><init>(Lcom/zui/launcher/model/ModelWriter;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteItemFromTheOtherDatabase(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/model/t0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/model/t0;-><init>(Lcom/zui/launcher/model/ModelWriter;Ljava/util/HashSet;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteItemsFromDatabase(Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-interface {p1, v0}, Lcom/zui/launcher/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LauncherDownload"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->printStack(Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;-><init>(Lcom/zui/launcher/model/ModelWriter;)V

    new-instance v1, Lcom/zui/launcher/model/y0;

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/launcher/model/y0;-><init>(Lcom/zui/launcher/model/ModelWriter;Ljava/lang/Iterable;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteWidgetInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/widget/LauncherAppWidgetHost;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->isWidgetIdAllocated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/model/a1;

    invoke-direct {v0, p2, p1}, Lcom/zui/launcher/model/a1;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetHost;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method public synthetic k(Lcom/zui/launcher/ItemInfo;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V
    .locals 8

    new-instance v0, Lcom/zui/launcher/util/ContentWriter;

    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/ContentWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfo;->onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V

    const-string v1, "_id"

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    sget-object v1, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 p2, -0x64

    if-ne v2, p2, :cond_0

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static/range {v2 .. v7}, Lcom/zui/launcher/LauncherModel;->deleteCacheByPosition(IIIIII)V

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p2

    :try_start_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-direct {p0, v0, p1, p3}, Lcom/zui/launcher/model/ModelWriter;->g(ILcom/zui/launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V

    iget-object p3, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p3, p0, p1, v0}, Lcom/zui/launcher/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Z)V

    invoke-virtual {p4}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic l(ZLcom/zui/launcher/FolderInfo;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    iget-object v3, p2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Lcom/zui/launcher/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V

    :cond_0
    iget-object p1, p2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {p1}, Lcom/zui/launcher/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zui/launcher/ItemInfo;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p3}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b()V

    return-void
.end method

.method public synthetic m(Ljava/lang/Iterable;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ModelWriter;->h(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public modifyItemInDatabase(Lcom/zui/launcher/ItemInfo;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/model/ModelWriter;->v(Lcom/zui/launcher/ItemInfo;IIII)V

    iput p6, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput p7, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    sget-object p2, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance p3, Lcom/zui/launcher/model/ModelWriter$b;

    new-instance p4, Lcom/zui/launcher/model/b1;

    invoke-direct {p4, p0, p1}, Lcom/zui/launcher/model/b1;-><init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;)V

    invoke-direct {p3, p0, p1, p4}, Lcom/zui/launcher/model/ModelWriter$b;-><init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/model/ModelWriter;->v(Lcom/zui/launcher/ItemInfo;IIII)V

    new-instance p2, Lcom/zui/launcher/model/ModelWriter$b;

    new-instance p3, Lcom/zui/launcher/model/u0;

    invoke-direct {p3, p0, p1}, Lcom/zui/launcher/model/u0;-><init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;)V

    invoke-direct {p2, p0, p1, p3}, Lcom/zui/launcher/model/ModelWriter$b;-><init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveItemsInDatabase(Ljava/util/ArrayList;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iget v8, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v9, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v4, p0

    move-object v5, v3

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/zui/launcher/model/ModelWriter;->v(Lcom/zui/launcher/ItemInfo;IIII)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "container"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cellX"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cellY"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rank"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "screen"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/zui/launcher/model/ModelWriter$c;

    invoke-direct {p2, p0, p1, v0}, Lcom/zui/launcher/model/ModelWriter$c;-><init>(Lcom/zui/launcher/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic n(Ljava/util/HashSet;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ModelWriter;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic o(Ljava/lang/Iterable;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V
    .locals 5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {v1}, Lcom/zui/launcher/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----deleteItemsFromDatabase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "    rank: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/zui/launcher/LauncherModel;->addCacheInDatabaseHelper(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Landroid/content/ComponentName;)V

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/zui/launcher/ItemInfo;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/zui/launcher/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p2}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareToUndoDelete()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/model/ModelWriter;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/model/ModelWriter;->h:Z

    :cond_0
    return-void
.end method

.method public synthetic q(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/ContentWriter;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/ContentWriter;

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "container"

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rank"

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "screen"

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method public synthetic r(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/ContentWriter;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/ContentWriter;

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "container"

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rank"

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "screen"

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method public removeGameProvider(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/d1;

    invoke-direct {v0, p2, p1}, Lcom/zui/launcher/model/d1;-><init>(Lcom/zui/launcher/ItemInfo;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeGameProvider(Landroid/content/Context;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/model/x0;

    invoke-direct {v0, p2, p1}, Lcom/zui/launcher/model/x0;-><init>(Ljava/lang/Iterable;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ModelWriter;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic u(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/ContentWriter;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/ContentWriter;

    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/ContentWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfo;->onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V

    return-object v0
.end method

.method public updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/model/ModelWriter$b;

    new-instance v2, Lcom/zui/launcher/model/c1;

    invoke-direct {v2, p0, p1}, Lcom/zui/launcher/model/c1;-><init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;)V

    invoke-direct {v1, p0, p1, v2}, Lcom/zui/launcher/model/ModelWriter$b;-><init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
