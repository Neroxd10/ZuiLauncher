.class public Lcom/zui/launcher/model/ItemInstallQueue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/model/ItemInstallQueue$a;
    }
.end annotation


# static fields
.field public static final FLAG_ACTIVITY_PAUSED:I = 0x1

.field public static final FLAG_DRAG_AND_DROP:I = 0x4

.field public static final FLAG_LOADER_RUNNING:I = 0x2

.field public static INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/model/ItemInstallQueue;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55


# instance fields
.field private final a:Lcom/zui/launcher/util/PersistedItemArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/PersistedItemArray<",
            "Lcom/zui/launcher/model/ItemInstallQueue$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/ItemInstallQueue$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/model/z;->a:Lcom/zui/launcher/model/z;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/util/PersistedItemArray;

    const-string v1, "apps_to_install"

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/PersistedItemArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->a:Lcom/zui/launcher/util/PersistedItemArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->c:I

    iput-object p1, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/model/ItemInstallQueue;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/zui/launcher/model/ItemInstallQueue$a;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->e()V

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zui/launcher/model/ItemInstallQueue;->a:Lcom/zui/launcher/util/PersistedItemArray;

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static c(Lcom/zui/launcher/ItemInfo;)Z
    .locals 4

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-ne v3, v1, :cond_0

    iget-object v2, v2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private d(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/zui/launcher/model/ItemInstallQueue$a;
    .locals 3

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const-string p0, "InstallShortcutReceiver"

    const-string p1, "Unknown item type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-static {p3, p2}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/shortcuts/ShortcutKey;->buildRequest(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/ShortcutRequest;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/zui/launcher/shortcuts/ShortcutRequest;->query(I)Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    :cond_1
    new-instance p1, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p1, p0}, Lcom/zui/launcher/model/ItemInstallQueue$a;-><init>(Landroid/content/pm/ShortcutInfo;)V

    return-object p1

    :cond_2
    const-string p1, "appWidgetId"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/model/ItemInstallQueue$a;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    return-object p2

    :cond_4
    :goto_0
    return-object v2

    :cond_5
    new-instance p0, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/model/ItemInstallQueue$a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method private e()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertWorkerThread()V

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->a:Lcom/zui/launcher/util/PersistedItemArray;

    iget-object v1, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    new-instance v2, Lcom/zui/launcher/model/c0;

    invoke-direct {v2, p0}, Lcom/zui/launcher/model/c0;-><init>(Lcom/zui/launcher/model/ItemInstallQueue;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/PersistedItemArray;->read(Landroid/content/Context;Lcom/zui/launcher/util/PersistedItemArray$ItemFactory;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->c:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/model/f0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/model/f0;-><init>(Lcom/zui/launcher/model/ItemInstallQueue;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private g()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->e()V

    iget-object v1, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/model/g0;

    invoke-direct {v2, p0}, Lcom/zui/launcher/model/g0;-><init>(Lcom/zui/launcher/model/ItemInstallQueue;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->a:Lcom/zui/launcher/util/PersistedItemArray;

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/PersistedItemArray;->getFile(Landroid/content/Context;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void
.end method

.method private static h(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic i(Landroid/content/Context;)Lcom/zui/launcher/model/ItemInstallQueue;
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-direct {v0, p0}, Lcom/zui/launcher/model/ItemInstallQueue;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic j(Lcom/zui/launcher/model/ItemInstallQueue;ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/zui/launcher/model/ItemInstallQueue$a;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/model/ItemInstallQueue;->d(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/zui/launcher/model/ItemInstallQueue$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Landroid/os/UserHandle;Lcom/zui/launcher/model/ItemInstallQueue$a;)Z
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic m(Landroid/os/UserHandle;Lcom/zui/launcher/model/ItemInstallQueue$a;)Lcom/zui/launcher/shortcuts/ShortcutKey;
    .locals 0

    iget-object p1, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/zui/launcher/model/ItemInstallQueue$a;)Z
    .locals 1

    iget-object v0, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    invoke-static {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic p(Lcom/zui/launcher/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->g()V

    return-void
.end method

.method private q(Lcom/zui/launcher/model/ItemInstallQueue$a;)V
    .locals 3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    sget-object v1, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/launcher/model/y;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/launcher/model/y;-><init>(Lcom/zui/launcher/model/ItemInstallQueue;Lcom/zui/launcher/model/ItemInstallQueue$a;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->f()V

    return-void
.end method


# virtual methods
.method public getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/zui/launcher/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->e()V

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/zui/launcher/model/e0;

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/e0;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/zui/launcher/model/d0;

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/d0;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public synthetic k(Lcom/zui/launcher/model/ItemInstallQueue$a;)Landroid/util/Pair;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/model/ItemInstallQueue$a;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public synthetic n(Lcom/zui/launcher/model/ItemInstallQueue$a;Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/model/ItemInstallQueue$a;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "ItemInstallQueue"

    if-nez v0, :cond_0

    const-string v0, "Adding PendingInstallShortcutInfo with no attached info to queue."

    invoke-static {v1, v0, p2}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding PendingInstallShortcutInfo to queue. Attached info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object p2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/zui/launcher/ItemInfo;

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "InstallShortcutReceiver"

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/zui/launcher/Utilities;->isLauncherActivity(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring is not LauncherActivity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/zui/launcher/model/ItemInstallQueue;->c(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/launcher/model/z1;

    invoke-direct {v2, p0, p2}, Lcom/zui/launcher/model/z1;-><init>(Lcom/zui/launcher/model/ItemInstallQueue;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-------------queuePendingShortcutInfo  exist: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    instance-of v0, p2, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/model/a2;

    invoke-direct {v1, p0, p2}, Lcom/zui/launcher/model/a2;-><init>(Lcom/zui/launcher/model/ItemInstallQueue;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/model/ItemInstallQueue;->b(Lcom/zui/launcher/model/ItemInstallQueue$a;)V

    return-void
.end method

.method public pauseModelPush(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->c:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/model/ItemInstallQueue;->c:I

    return-void
.end method

.method public queueItem(Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/model/ItemInstallQueue$a;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ItemInstallQueue;->q(Lcom/zui/launcher/model/ItemInstallQueue$a;)V

    return-void
.end method

.method public queueItem(Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/ItemInstallQueue$a;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ItemInstallQueue;->q(Lcom/zui/launcher/model/ItemInstallQueue$a;)V

    return-void
.end method

.method public queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/model/ItemInstallQueue$a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/ItemInstallQueue;->q(Lcom/zui/launcher/model/ItemInstallQueue$a;)V

    return-void
.end method

.method public removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->e()V

    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    new-instance v1, Lcom/zui/launcher/model/a0;

    invoke-direct {v1, p2, p1}, Lcom/zui/launcher/model/a0;-><init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/model/ItemInstallQueue;->a:Lcom/zui/launcher/util/PersistedItemArray;

    iget-object p2, p0, Lcom/zui/launcher/model/ItemInstallQueue;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->d:Ljava/util/List;

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public resumeModelPush(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/model/ItemInstallQueue;->c:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/model/ItemInstallQueue;->c:I

    invoke-direct {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->f()V

    return-void
.end method
