.class public Lcom/zui/launcher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
.implements Lcom/zui/launcher/pm/InstallSessionTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LauncherModel$WidgetAndShortcutNameComparator;,
        Lcom/zui/launcher/LauncherModel$ItemInfoFilter;,
        Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;,
        Lcom/zui/launcher/LauncherModel$a0;,
        Lcom/zui/launcher/LauncherModel$NewShortcutKey;,
        Lcom/zui/launcher/LauncherModel$ShortcutHashSet;,
        Lcom/zui/launcher/LauncherModel$ModelUpdateTask;,
        Lcom/zui/launcher/LauncherModel$CallbackTask;,
        Lcom/zui/launcher/LauncherModel$LoaderTransaction;,
        Lcom/zui/launcher/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final CHECK_RESULT_FALSE:I = 0x0

.field public static final CHECK_RESULT_HAS_DATA:I = 0x2

.field public static final CHECK_RESULT_TRUE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Launcher.Model"

.field public static mDownloadingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sBgDataModel:Lcom/zui/launcher/model/BgDataModel;


# instance fields
.field final a:Lcom/zui/launcher/LauncherAppState;

.field final b:Ljava/lang/Object;

.field c:Lcom/zui/launcher/model/LoaderTask;

.field d:Z

.field private e:Z

.field f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/zui/launcher/AllAppsList;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Runnable;

.field private volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/BgDataModel;

    invoke-direct {v0}, Lcom/zui/launcher/model/BgDataModel;-><init>()V

    sput-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/zui/launcher/LauncherModel;->clearDownloadingApps()V

    return-void
.end method

.method constructor <init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/icons/IconCache;Lcom/zui/launcher/AppFilter;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    new-instance v0, Lcom/zui/launcher/LauncherModel$k;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherModel$k;-><init>(Lcom/zui/launcher/LauncherModel;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherModel;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    new-instance p1, Lcom/zui/launcher/AllAppsList;

    invoke-direct {p1, p2, p3}, Lcom/zui/launcher/AllAppsList;-><init>(Lcom/zui/launcher/icons/IconCache;Lcom/zui/launcher/AppFilter;)V

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel;->h:Ljava/util/List;

    return-void
.end method

.method static A(Ljava/util/ArrayList;JLandroid/content/Context;)Lcom/zui/launcher/util/GridOccupancy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;J",
            "Landroid/content/Context;",
            ")",
            "Lcom/zui/launcher/util/GridOccupancy;"
        }
    .end annotation

    invoke-static {p3}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p3

    iget v0, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget p3, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    new-instance v1, Lcom/zui/launcher/util/GridOccupancy;

    invoke-direct {v1, v0, p3}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->spanY:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static B(Landroid/content/Intent;)Lcom/zui/launcher/CacheInfo;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/CacheList;->getCacheInfo(Landroid/content/Intent;)Lcom/zui/launcher/CacheInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/LauncherModel;->getCacheInDatabaseByPkg(Ljava/lang/String;)Lcom/zui/launcher/CacheInfo;

    move-result-object v1

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static C(JJIIII)I
    .locals 0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    long-to-int p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p4, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p5, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method static D(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "#Intent;%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, ";%"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.category.ACTIVE_ICON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "action="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    if-eqz v0, :cond_3

    const-string v0, "type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "component="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static E(Ljava/util/ArrayList;JIIJ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;JIIJ)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/zui/launcher/LauncherModel$f;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p5

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/LauncherModel$f;-><init>(JJII)V

    invoke-static {p0, v7}, Lcom/zui/launcher/LauncherModel;->s(Ljava/util/Collection;Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static F(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static G(Ljava/util/ArrayList;J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;J)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/LauncherModel$j;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/LauncherModel$j;-><init>(J)V

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherModel;->s(Ljava/util/Collection;Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static H(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;IIZ)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/LauncherModel$h;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/launcher/LauncherModel$h;-><init>(IIZ)V

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherModel;->s(Ljava/util/Collection;Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static I(Ljava/util/ArrayList;JIII)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;JIII)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/zui/launcher/LauncherModel$i;

    move-object v0, v6

    move-wide v1, p1

    move v3, p5

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/LauncherModel$i;-><init>(JIII)V

    invoke-static {p0, v6}, Lcom/zui/launcher/LauncherModel;->s(Ljava/util/Collection;Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static J(Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;II)Z"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/LauncherModel$g;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/LauncherModel$g;-><init>(II)V

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherModel;->s(Ljava/util/Collection;Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static L(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[I>;)V"
        }
    .end annotation

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/LauncherModel;->e:Z

    return p0
.end method

.method public static addCacheInDatabaseHelper(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;Z)V
    .locals 3

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/CacheInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    const-string v1, "generate_new_cache_id"

    invoke-static {p0, v1}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/zui/launcher/CacheInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p1, Lcom/zui/launcher/CacheInfo;->cellX:I

    iget v2, p1, Lcom/zui/launcher/CacheInfo;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/zui/launcher/CacheInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    if-eqz p2, :cond_1

    new-instance p2, Lcom/zui/launcher/LauncherModel$o;

    invoke-direct {p2, p0, p1, v0}, Lcom/zui/launcher/LauncherModel$o;-><init>(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;Landroid/content/ContentValues;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/zui/launcher/LauncherModel;->g(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;Landroid/content/ContentValues;)V

    :goto_0
    return-void
.end method

.method public static addCacheInDatabaseHelper(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Z)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    :cond_2
    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    if-ltz v0, :cond_6

    invoke-static {v0}, Lcom/zui/launcher/LauncherModel;->getItemInfoById(I)Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-gez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/zui/launcher/LauncherModel;->B(Landroid/content/Intent;)Lcom/zui/launcher/CacheInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/zui/launcher/CacheInfo;

    invoke-direct {v0, p1}, Lcom/zui/launcher/CacheInfo;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-static {p0, v0, p2}, Lcom/zui/launcher/LauncherModel;->addCacheInDatabaseHelper(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;Z)V

    return-void
.end method

.method public static addIntoDownloadingApps(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/zui/launcher/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/LauncherModel;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherModel;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static checkCacheInfo(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;)I
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/zui/launcher/LauncherModel;->F(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    iget p0, p1, Lcom/zui/launcher/CacheInfo;->container:I

    const/16 v5, -0x64

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne p0, v5, :cond_6

    iget p0, p1, Lcom/zui/launcher/CacheInfo;->screen:I

    int-to-long v5, p0

    iget v7, p1, Lcom/zui/launcher/CacheInfo;->cellX:I

    iget v8, p1, Lcom/zui/launcher/CacheInfo;->cellY:I

    iget p0, p1, Lcom/zui/launcher/CacheInfo;->container:I

    int-to-long v9, p0

    invoke-static/range {v4 .. v10}, Lcom/zui/launcher/LauncherModel;->E(Ljava/util/ArrayList;JIIJ)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    return v12

    :cond_1
    const-string v2, "AppStoreHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------>checkCacheInfo:  cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "...occupied.size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v2, v2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {v2}, Lcom/zui/launcher/LauncherModel;->getItemInfoById(I)Lcom/zui/launcher/ItemInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    instance-of v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "AppStoreHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----checkCacheInfo--xxxxx----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    monitor-exit v1

    return v0

    :cond_4
    monitor-exit v1

    return v0

    :cond_5
    monitor-exit v1

    return v11

    :cond_6
    iget p0, p1, Lcom/zui/launcher/CacheInfo;->container:I

    const/16 v5, -0x65

    if-ne p0, v5, :cond_7

    iget p0, p1, Lcom/zui/launcher/CacheInfo;->container:I

    int-to-long p0, p0

    invoke-static {v4, p0, p1}, Lcom/zui/launcher/LauncherModel;->G(Ljava/util/ArrayList;J)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p0, v3, :cond_9

    monitor-exit v1

    return v12

    :cond_7
    iget p0, p1, Lcom/zui/launcher/CacheInfo;->container:I

    if-ltz p0, :cond_9

    iget p0, p1, Lcom/zui/launcher/CacheInfo;->container:I

    invoke-static {v4, p0, v11}, Lcom/zui/launcher/LauncherModel;->J(Ljava/util/ArrayList;II)Z

    move-result p0

    if-nez p0, :cond_8

    monitor-exit v1

    return v0

    :cond_8
    iget p0, p1, Lcom/zui/launcher/CacheInfo;->container:I

    int-to-long p0, p0

    invoke-static {v4, p0, p1}, Lcom/zui/launcher/LauncherModel;->G(Ljava/util/ArrayList;J)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p0, v2, :cond_9

    monitor-exit v1

    return v12

    :cond_9
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static checkDesktopCache(Lcom/zui/launcher/CacheInfo;Landroid/content/Context;Lcom/zui/launcher/util/IntArray;)Lcom/zui/launcher/CacheInfo;
    .locals 1

    iget v0, p0, Lcom/zui/launcher/CacheInfo;->screen:I

    invoke-virtual {p2, v0}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p0}, Lcom/zui/launcher/LauncherModel;->j(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static clearDownloadingApps()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static commitFirstLaunchAfterRestore(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "after_restore_success_firstlaunch"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/LauncherModel;->j:Z

    return p1
.end method

.method public static deleteCacheByPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/zui/launcher/LauncherModel$n;

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherModel$n;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteCacheByPosition(IIIIII)V
    .locals 10

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from cache where container="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and cellX >="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and cellX <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p2, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and cellY >="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and cellY <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->executeSqlInLauncherDb(Ljava/lang/String;)V

    sget-object v9, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v9

    :try_start_0
    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    int-to-long v3, p0

    int-to-long v7, p1

    move-object v0, v2

    move-wide v1, v3

    move-wide v3, v7

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CacheList;->removeCacheByPosition(JJIIII)V

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;Landroid/content/ContentValues;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/LauncherModel;->g(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherModel;->k(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static filterEquals(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 3

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->isAppType()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->isAppType()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherModel;->l(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_4
    iget-object v1, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/zui/launcher/LauncherModel;->m(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_5
    :goto_0
    return v0
.end method

.method public static filterEquals(Ljava/lang/String;Landroid/content/Intent;IILjava/lang/String;Landroid/content/Intent;II)Z
    .locals 1

    const/4 v0, 0x0

    if-eq p3, p7, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/zui/launcher/LauncherModel;->isAppType(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p6}, Lcom/zui/launcher/LauncherModel;->isAppType(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1, p5}, Lcom/zui/launcher/LauncherModel;->l(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0, p4}, Lcom/zui/launcher/LauncherModel;->m(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-static {p1, p5}, Lcom/zui/launcher/LauncherModel;->l(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static filterShortcutHashCode(Lcom/zui/launcher/WorkspaceItemInfo;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.category.ACTIVE_ICON"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    :cond_4
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method private static g(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;Landroid/content/ContentValues;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherModel;->h(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/zui/launcher/LauncherSettings$Cache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public static getAllWorkspaceItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    :cond_1
    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCacheInDatabaseByPkg(Ljava/lang/String;)Lcom/zui/launcher/CacheInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/CacheList;->getCacheInfoByPackage(Ljava/lang/String;)Lcom/zui/launcher/CacheInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getConfiguredLeosWidgets()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LenovoWidgetViewInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-boolean v4, v3, Lcom/zui/launcher/LenovoWidgetViewInfo;->configure:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method public static getFinalPosition(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Z)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zui/launcher/util/IntArray;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/zui/launcher/LauncherModel;->F(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/zui/launcher/LauncherModel;->w(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v4

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "generate_new_screen_id"

    invoke-static {v2, v4}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zui/launcher/util/IntArray;->add(I)V

    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    aput v6, v5, v3

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2, p1, v1, p0}, Lcom/zui/launcher/LauncherModel;->z(ILcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-static {p0, p2, p1, v1}, Lcom/zui/launcher/LauncherModel;->t(Landroid/content/Context;ILcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/LauncherModel;->L(Landroid/util/Pair;)V

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getItemInfoById(I)Lcom/zui/launcher/ItemInfo;
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getItemInfoByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_3

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v4, :cond_0

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getItemInfoForPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/LauncherModel$q;

    invoke-direct {v0, p1, p0}, Lcom/zui/launcher/LauncherModel$q;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object p0, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/LauncherModel;->r(Lcom/zui/launcher/util/IntSparseArrayMap;Lcom/zui/launcher/LauncherModel$ItemInfoFilter;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getLeosWidgetsByComponent(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LenovoWidgetViewInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object v4, v3, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getRecommendCacheInDatabase(Ljava/lang/String;Landroid/content/Context;)Lcom/zui/launcher/CacheInfo;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/LauncherModel;->getCacheInDatabaseByPkg(Ljava/lang/String;)Lcom/zui/launcher/CacheInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getScreensList()Lcom/zui/launcher/util/IntArray;
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v1}, Lcom/zui/launcher/model/BgDataModel;->collectWorkspaceScreens()Lcom/zui/launcher/util/IntArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static h(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/CacheList;->addCache(Lcom/zui/launcher/CacheInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    iget-object v2, p1, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/CacheList;->getCacheInfo(Landroid/content/Intent;)Lcom/zui/launcher/CacheInfo;

    move-result-object v1

    iget v2, v1, Lcom/zui/launcher/CacheInfo;->id:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/zui/launcher/LauncherSettings$Cache;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object p0, p0, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/CacheList;->removeCache(Lcom/zui/launcher/CacheInfo;)Z

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object p0, p0, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CacheList;->addCache(Lcom/zui/launcher/CacheInfo;)Z

    move-result v1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAutoDownload -packageName-------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "restore_autodownload_packagenames"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAutoDownload    add==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/zui/launcher/LauncherModel$Callbacks;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v2, p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->addAutoDownload(Ljava/lang/String;Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public static isAppInfoUpdatable(Lcom/zui/launcher/ItemInfo;)Z
    .locals 2

    instance-of v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isAppType(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static j(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherModel;->checkCacheInfo(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method private k(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zui/launcher/Workspace;->findViewByInfo(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkView, child =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherModel;->q(Ljava/lang/Object;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static l(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_f

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->formatEmtpyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->formatEmtpyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "android.intent.action.VIEW"

    const/4 v7, 0x0

    if-nez v5, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v2, v7

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object v3, v7

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_7
    if-eqz v3, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->formatEmtpyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->formatEmtpyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eq v2, v3, :cond_b

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_c
    move-object p0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    :cond_d
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_1
    return v1
.end method

.method private static m(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static n(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/LauncherModel;->o(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;Z)V

    return-void
.end method

.method private static o(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;Z)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/CacheInfo;->id:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/zui/launcher/LauncherSettings$Cache;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance p2, Lcom/zui/launcher/LauncherModel$p;

    invoke-direct {p2, p0, v0, p1}, Lcom/zui/launcher/LauncherModel$p;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/zui/launcher/CacheInfo;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p0

    :try_start_0
    sget-object p2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object p2, p2, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/CacheList;->removeCache(Lcom/zui/launcher/CacheInfo;)Z

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private p(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->deleteAllFileAndInfo(Landroid/content/Context;)V

    return-void
.end method

.method private q(Ljava/lang/Object;Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 1

    instance-of p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v0, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->userEquals(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "GlobalSearch"

    const-string p1, "equals.."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static r(Lcom/zui/launcher/util/IntSparseArrayMap;Lcom/zui/launcher/LauncherModel$ItemInfoFilter;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Lcom/zui/launcher/LauncherModel$ItemInfoFilter;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    instance-of v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v3, v1, v2, p2}, Lcom/zui/launcher/LauncherModel$ItemInfoFilter;->filterItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/zui/launcher/FolderInfo;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/zui/launcher/FolderInfo;

    iget-object v2, v1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v1, v3, v4, p2}, Lcom/zui/launcher/LauncherModel$ItemInfoFilter;->filterItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    instance-of v2, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v2, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-interface {p1, v3, v1, v2, p2}, Lcom/zui/launcher/LauncherModel$ItemInfoFilter;->filterItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static removeDownloadingApp(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static s(Ljava/util/Collection;Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    instance-of v2, v1, Lcom/zui/launcher/FolderInfo;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/zui/launcher/FolderInfo;

    iget-object v2, v2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-interface {p1, v3}, Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;->filterItemRough(Lcom/zui/launcher/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1, v1}, Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;->filterItemRough(Lcom/zui/launcher/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static shortcutGenerallyExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;II)I
    .locals 19

    move/from16 v0, p3

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/Utilities;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x2

    if-eqz v3, :cond_2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/zui/launcher/LauncherModel;->D(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, " intent like ? and profileId = ?"

    :goto_2
    move-object v4, v2

    move-object v5, v3

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v3, v4, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/zui/launcher/LauncherModel;->D(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, " title is null and intent like ? and profileId = ?"

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v9, v3, v10

    invoke-static/range {p2 .. p2}, Lcom/zui/launcher/LauncherModel;->D(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, " title=? and intent like ? and profileId = ?"

    goto :goto_2

    :goto_3
    sget-object v2, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "title"

    const-string v8, "itemType"

    const-string v11, "intent"

    const-string v12, "profileId"

    const-string v13, "_id"

    filled-new-array {v7, v8, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, -0x1

    :try_start_0
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v9

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v18, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move/from16 v8, v17

    :try_start_2
    invoke-static/range {v1 .. v8}, Lcom/zui/launcher/LauncherModel;->filterEquals(Ljava/lang/String;Landroid/content/Intent;IILjava/lang/String;Landroid/content/Intent;II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move/from16 v18, v7

    move/from16 v16, v8

    :cond_4
    move/from16 v8, v16

    move/from16 v7, v18

    goto :goto_4

    :cond_5
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    return v15

    :catchall_0
    move-exception v0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static shortcutGenerallyExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/zui/launcher/LauncherModel;->shortcutGenerallyExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static t(Landroid/content/Context;ILcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/zui/launcher/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/zui/launcher/LauncherModel;->u(Landroid/content/Context;ILcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static u(Landroid/content/Context;ILcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Z)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/zui/launcher/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0064

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {p2}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v2

    invoke-static {p3, v1, v2, p0, p4}, Lcom/zui/launcher/LauncherModel;->v(Ljava/util/ArrayList;[IIIZ)Lcom/zui/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance p0, Landroid/util/Pair;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static updateShortcutByRecommend(Landroid/content/Context;Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 7

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p3, Lcom/zui/launcher/ItemInfo;->id:I

    iget v1, p3, Lcom/zui/launcher/ItemInfo;->container:I

    instance-of v2, p0, Lcom/zui/launcher/Launcher;

    if-eqz v2, :cond_1

    iget v2, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-gez v2, :cond_1

    const/16 v2, -0x65

    if-ne v1, v2, :cond_1

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    iget v2, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, v2, v3}, Lcom/zui/launcher/HotseatLayout;->n0(II)I

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    :goto_0
    iget v2, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget v5, p3, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iget-object p3, p3, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    new-instance v6, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v6, p2}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iput v0, v6, Lcom/zui/launcher/ItemInfo;->id:I

    iput v1, v6, Lcom/zui/launcher/ItemInfo;->container:I

    iput p0, v6, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v2, v6, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v3, v6, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput-object p3, v6, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    :try_start_0
    invoke-virtual {p1, v6}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "--------SQLite--------"

    invoke-static {p1, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v6, p0}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v6, p0}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v6, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    iput v4, v6, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput v5, v6, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iget p0, v6, Lcom/zui/launcher/WorkspaceItemInfo;->changeCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v6, Lcom/zui/launcher/WorkspaceItemInfo;->changeCount:I

    :cond_2
    :goto_2
    return-void
.end method

.method static v(Ljava/util/ArrayList;[IIIZ)Lcom/zui/launcher/ItemInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;[IIIZ)",
            "Lcom/zui/launcher/ItemInfo;"
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    xor-int/lit8 v0, p4, 0x1

    const/16 v1, -0x64

    invoke-static {p0, v7, v1, v0}, Lcom/zui/launcher/LauncherModel;->H(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    return-object v10

    :cond_0
    new-instance v0, Lcom/zui/launcher/LauncherModel$a0;

    invoke-direct {v0, v10}, Lcom/zui/launcher/LauncherModel$a0;-><init>(Lcom/zui/launcher/LauncherModel$k;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz p4, :cond_5

    move v13, v11

    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_4

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/zui/launcher/ItemInfo;

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    if-eq v0, v12, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, v14, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/zui/launcher/LauncherModel;->G(Ljava/util/ArrayList;J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_3

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long v1, v7

    iget v3, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v4, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/16 v5, -0x64

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zui/launcher/LauncherModel;->I(Ljava/util/ArrayList;JIII)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    move-object v14, v10

    :goto_2
    if-nez v14, :cond_6

    return-object v10

    :cond_5
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/zui/launcher/ItemInfo;

    :cond_6
    iget v0, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    aput v0, p1, v11

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    aput v0, p1, v12

    return-object v14
.end method

.method public static verifyAppWidget(Landroid/content/Context;Lcom/zui/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;II)Z
    .locals 3

    if-nez p2, :cond_0

    new-instance p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;-><init>()V

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-le p2, p3, :cond_6

    iput p3, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    goto :goto_3

    :cond_5
    iget p2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-le p0, p4, :cond_8

    iput p4, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    goto :goto_4

    :cond_7
    iget p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    :cond_8
    :goto_4
    return v1
.end method

.method static w(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zui/launcher/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move-object/from16 v10, p0

    invoke-static {v10, v1, v0, v8, v3}, Lcom/zui/launcher/LauncherModel;->u(Landroid/content/Context;ILcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, [I

    aget v3, v5, v3

    check-cast v1, [I

    aget v1, v1, v2

    move v12, v1

    move v14, v3

    move v13, v4

    goto :goto_0

    :cond_1
    move v13, v3

    const/4 v12, -0x1

    const/4 v14, -0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v15

    move v7, v13

    :goto_1
    if-ge v7, v15, :cond_4

    const/4 v1, 0x2

    new-array v6, v1, [I

    if-ne v7, v13, :cond_2

    move/from16 v16, v12

    move v5, v14

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    const/16 v16, -0x1

    :goto_2
    invoke-virtual {v0, v7}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v1

    int-to-long v3, v1

    move-object/from16 v1, p2

    move-object v2, v6

    move-object v11, v6

    move/from16 v6, v16

    move v9, v7

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/LauncherModel;->x(Ljava/util/ArrayList;[IJIILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0, v9}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_3
    add-int/lit8 v7, v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    return-object v1

    :cond_5
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method static x(Ljava/util/ArrayList;[IJIILandroid/content/Context;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;[IJII",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    invoke-static {p6}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v5, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {p0, p2, p3, p6}, Lcom/zui/launcher/LauncherModel;->A(Ljava/util/ArrayList;JLandroid/content/Context;)Lcom/zui/launcher/util/GridOccupancy;

    move-result-object p6

    const/4 p0, -0x1

    if-eq p4, p0, :cond_1

    if-ne p5, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array v2, p0, [I

    const/4 p0, 0x0

    aput p4, v2, p0

    const/4 p0, 0x1

    aput p5, v2, p0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move v6, v0

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/zui/launcher/CellLayout;->D([I[IIIIILcom/zui/launcher/util/GridOccupancy;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p2, 0x1

    const/4 p3, 0x1

    move-object p0, p1

    move p1, p2

    move p2, p3

    move p3, v5

    move p4, v0

    move-object p5, p6

    invoke-static/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->C([IIIIILcom/zui/launcher/util/GridOccupancy;)Z

    move-result p0

    return p0
.end method

.method static y(Ljava/util/ArrayList;[IJLandroid/content/Context;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;[IJ",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    invoke-static {p4}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v4, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v5, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {p0, p2, p3, p4}, Lcom/zui/launcher/LauncherModel;->A(Ljava/util/ArrayList;JLandroid/content/Context;)Lcom/zui/launcher/util/GridOccupancy;

    move-result-object v6

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/CellLayout;->E([IIIIILcom/zui/launcher/util/GridOccupancy;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static z(ILcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Landroid/content/Context;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/zui/launcher/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-ltz p0, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v1, v2, v3, p3}, Lcom/zui/launcher/LauncherModel;->y(Ljava/util/ArrayList;[IJLandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Landroid/util/Pair;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public synthetic K(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, v0}, Lcom/zui/launcher/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    return-object p1
.end method

.method public addAndBindAddedWorkspaceItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;Z)V

    return-void
.end method

.method public addAndBindAddedWorkspaceItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/LauncherModel$Callbacks;->preAddApps()V

    :cond_0
    new-instance v0, Lcom/zui/launcher/model/AddWorkspaceItemsTask;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherModel$y;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherModel$y;-><init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/WorkspaceItemInfo;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addInstallApp(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrMoveItemInDatabase(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;IIII)V
    .locals 6

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/model/ModelWriter;->moveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    :goto_0
    return-void
.end method

.method public addRecommendWidget(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherModel$b;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherModel$b;-><init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beginLoader(Lcom/zui/launcher/model/LoaderTask;)Lcom/zui/launcher/LauncherModel$LoaderTransaction;
    .locals 2

    new-instance v0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/zui/launcher/LauncherModel$LoaderTransaction;-><init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/LoaderTask;Lcom/zui/launcher/LauncherModel$k;)V

    return-object v0
.end method

.method public bindAppOrFolderLast(Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/LauncherModel$Callbacks;->preAddApps()V

    :cond_0
    new-instance v0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;-><init>(Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    array-length v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "All apps list: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    iget-object v1, v1, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    iget-object p0, p0, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/AppInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   title=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" iconBitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/launcher/model/BgDataModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V
    .locals 6

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    sget-object v3, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v4, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    sget-object v5, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    move-object v0, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/zui/launcher/LauncherModel$ModelUpdateTask;->init(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;Ljava/util/concurrent/Executor;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public findCachePosition(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Landroid/content/Intent;Lcom/zui/launcher/util/IntArray;)Lcom/zui/launcher/CacheInfo;
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p3}, Lcom/zui/launcher/LauncherModel;->B(Landroid/content/Intent;)Lcom/zui/launcher/CacheInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1, p0}, Lcom/zui/launcher/LauncherModel;->n(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;)V

    if-eqz p0, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/launcher/LauncherModel;->deleteCacheByPackageName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget p2, p0, Lcom/zui/launcher/CacheInfo;->container:I

    const/16 p3, -0x64

    if-ne p2, p3, :cond_4

    invoke-static {p0, p1, p4}, Lcom/zui/launcher/LauncherModel;->checkDesktopCache(Lcom/zui/launcher/CacheInfo;Landroid/content/Context;Lcom/zui/launcher/util/IntArray;)Lcom/zui/launcher/CacheInfo;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p1, p0}, Lcom/zui/launcher/LauncherModel;->j(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    return-object v0
.end method

.method public findFolderById(I)Lcom/zui/launcher/FolderInfo;
    .locals 1

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/FolderInfo;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findShortcutInfoByPackageName(Ljava/util/LinkedHashSet;Z)Ljava/util/LinkedHashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/LinkedHashSet<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->clone()Lcom/zui/launcher/util/IntSparseArrayMap;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    instance-of v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v5, -0x64

    if-eq v4, v5, :cond_3

    goto :goto_0

    :cond_3
    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public flushWorkerThread()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/LauncherModel$m;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherModel$m;-><init>(Lcom/zui/launcher/LauncherModel;)V

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :catch_0
    :goto_1
    if-nez p0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public forceReload()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->forceReload(I)V

    return-void
.end method

.method public forceReload(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->stopLoader()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/LauncherModel;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->startLoader(I)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getAllAppsDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    iget-object p0, p0, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllAppsList()Lcom/zui/launcher/AllAppsList;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppInfo(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/AppInfo;
    .locals 4

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    iget-object p0, p0, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/AppInfo;

    iget-object v2, v1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-virtual {v1}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "zui.launcher.key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v1

    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getItemByComponent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/zui/launcher/model/LocateItem;
    .locals 6

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3

    sget-object v3, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    instance-of v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v5, v4, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v4, p2}, Lcom/zui/launcher/Utilities;->userEquals(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance p1, Lcom/zui/launcher/model/LocateItem;

    invoke-direct {p1, v3, v2}, Lcom/zui/launcher/model/LocateItem;-><init>(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)V

    monitor-exit p0

    return-object p1

    :cond_0
    instance-of v2, v3, Lcom/zui/launcher/FolderInfo;

    if-eqz v2, :cond_2

    move-object v2, v3

    check-cast v2, Lcom/zui/launcher/FolderInfo;

    iget-object v2, v2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v5, p2}, Lcom/zui/launcher/Utilities;->userEquals(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p1, Lcom/zui/launcher/model/LocateItem;

    invoke-direct {p1, v4, v3}, Lcom/zui/launcher/model/LocateItem;-><init>(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)V

    monitor-exit p0

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRecommendInfos()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRecommendWidgetInfos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->sRecommendWidgets:Ljava/util/HashMap;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->sRecommendWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getWriter(ZZ)Lcom/zui/launcher/model/ModelWriter;
    .locals 7

    new-instance v6, Lcom/zui/launcher/model/ModelWriter;

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    move-object v0, v6

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/model/ModelWriter;-><init>(Landroid/content/Context;Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/BgDataModel;ZZ)V

    return-object v6
.end method

.method public initialize(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------init Callbacks  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCurrentCallbacks(Lcom/zui/launcher/LauncherModel$Callbacks;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDownloadingOrInstalling()Z
    .locals 8

    sget-object p0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/launcher/util/DownloadController;->isDummyAppDownloadingOrInstalling(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)Z

    move-result v4

    const-string v5, "GridOption"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--------isDownloadingOrInstalling  isDownloading #### : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ####  pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/2addr v0, v4

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInstallApp(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isModelLoaded()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/zui/launcher/LauncherModel;->e:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadLookupKeys()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/LauncherModel$l;

    invoke-direct {v1, p0}, Lcom/zui/launcher/LauncherModel$l;-><init>(Lcom/zui/launcher/LauncherModel;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInstallSessionCreated(Lcom/zui/launcher/pm/PackageInstallInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherModel$u;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherModel$u;-><init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/pm/PackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->enableAndResetCache()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/zui/launcher/BluePoint;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v0, Lcom/zui/launcher/model/PackageUpdatedTask;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, p2, v2}, Lcom/zui/launcher/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/model/PackageUpdatedTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/zui/launcher/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 2
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

    new-instance v0, Lcom/zui/launcher/model/CacheDataUpdatedTask;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p1}, Lcom/zui/launcher/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;F)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/zui/launcher/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    return-void
.end method

.method public onPackageStateChanged(Lcom/zui/launcher/pm/PackageInstallInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/PackageInstallStateChangedTask;-><init>(Lcom/zui/launcher/pm/PackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    new-instance p3, Lcom/zui/launcher/model/PackageUpdatedTask;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p2, p1}, Lcom/zui/launcher/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public varargs onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package removed received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/model/PackageUpdatedTask;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/zui/launcher/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/PackageUpdatedTask;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2, p1}, Lcom/zui/launcher/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Lcom/zui/launcher/model/PackageUpdatedTask;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p2, p1}, Lcom/zui/launcher/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    :cond_0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/PackageUpdatedTask;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p2, p1}, Lcom/zui/launcher/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->refreshAndReloadLauncher()V

    goto/16 :goto_2

    :cond_0
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    const-string v5, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    if-nez v2, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "com.zui.launcher.action.RESTORE_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "clear_all_empty_db_flag"

    invoke-static {p2, v0}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/zui/launcher/LauncherModel;->commitFirstLaunchAfterRestore(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherModel;->p(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_2

    :cond_3
    const-string v1, "com.zui.intent.action.THEME_ICON_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ThemeSwitchStatus"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive com.zui.intent.action.THEME_ICON_CHANGED  switchStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->clearCurrentTheme(Landroid/content/Context;)V

    const-string p1, "Receive com.zui.intent.action.THEME_ICON_CHANGED to kill itself"

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/zui/launcher/LauncherModel$t;

    invoke-direct {p2, p0}, Lcom/zui/launcher/LauncherModel$t;-><init>(Lcom/zui/launcher/LauncherModel;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    :goto_0
    const-string p1, "android.intent.extra.USER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    new-instance p2, Lcom/zui/launcher/model/PackageUpdatedTask;

    const/4 v1, 0x7

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {p2, v1, p1, v2}, Lcom/zui/launcher/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    :cond_6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_7
    new-instance p2, Lcom/zui/launcher/model/UserLockStateChangedTask;

    invoke-direct {p2, p1}, Lcom/zui/launcher/model/UserLockStateChangedTask;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    goto :goto_2

    :cond_8
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------LauncherModel onReceive  action:  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->enableAndResetCache()V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->forceReload()V

    :cond_9
    :goto_2
    return-void
.end method

.method public onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherModel$s;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/launcher/LauncherModel$s;-><init>(Lcom/zui/launcher/LauncherModel;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/model/ShortcutsChangedTask;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/zui/launcher/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onUpdateSessionDisplay(Lcom/zui/launcher/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/icons/IconCache;->updateSessionCache(Lcom/zui/launcher/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p1, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/zui/launcher/model/CacheDataUpdatedTask;

    iget-object p1, p1, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/zui/launcher/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onWidgetLabelsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 1
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

    new-instance v0, Lcom/zui/launcher/LauncherModel$v;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/LauncherModel$v;-><init>(Lcom/zui/launcher/LauncherModel;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public reaperWorkspaceItem(I)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    iget-object p0, p0, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v3, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {v0}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    const/4 v4, 0x0

    const-string v5, "Screencount"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, v5, p1}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/16 p1, 0x15

    if-ge p0, p1, :cond_0

    const-string p0, "0x20"

    goto :goto_0

    :cond_0
    const/16 v4, 0x29

    if-lt p0, p1, :cond_1

    if-ge p0, v4, :cond_1

    const-string p0, "21x40"

    goto :goto_0

    :cond_1
    if-lt p0, v4, :cond_2

    const/16 p1, 0x3c

    if-ge p0, p1, :cond_2

    const-string p0, "41x60"

    goto :goto_0

    :cond_2
    const-string p0, "60x"

    :goto_0
    const/4 p1, 0x1

    const-string v4, "appcount"

    invoke-virtual {v0, p1, v4, p0}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x2

    const-string p1, "widgetcount"

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x3

    const-string p1, "foldercount"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p0, "Launcher"

    const-string p1, "Launcher"

    const-string v1, "Launcher"

    invoke-static {p0, p1, v1, v0}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public refreshAndBindWidgetsAndShortcuts(Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 1
    .param p1    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/zui/launcher/LauncherModel$x;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherModel$x;-><init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/util/PackageUserKey;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public refreshShortcutsIfRequired()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeInstallApp(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRecommendItem(Landroid/content/ComponentName;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherModel$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherModel$a;-><init>(Lcom/zui/launcher/LauncherModel;Landroid/content/ComponentName;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeRecommendItem(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherModel$z;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherModel$z;-><init>(Lcom/zui/launcher/LauncherModel;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeRecommendPendingItems(Ljava/util/HashSet;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----PacakgeUpdated remove  pkgsNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Model"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->removeRecommendWidgets(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeRecommendWidget(Landroid/content/ComponentName;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherModel$d;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherModel$d;-><init>(Lcom/zui/launcher/LauncherModel;Landroid/content/ComponentName;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeRecommendWidget(Landroid/content/ComponentName;J)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherModel$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/launcher/LauncherModel$e;-><init>(Lcom/zui/launcher/LauncherModel;Landroid/content/ComponentName;J)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeRecommendWidgets(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/LauncherModel$c;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/LauncherModel$c;-><init>(Lcom/zui/launcher/LauncherModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInstallApp(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPackageState(Lcom/zui/launcher/pm/PackageInstallInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/PackageInstallStateChangedTask;-><init>(Lcom/zui/launcher/pm/PackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public startLoader(I)Z
    .locals 10

    const-string v0, "Launcher.Model"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->printStack(Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/ItemInstallQueue;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zui/launcher/model/ItemInstallQueue;->pauseModelPush(I)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherModel$Callbacks;

    sget-object v2, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zui/launcher/d1;

    invoke-direct {v3, v1}, Lcom/zui/launcher/d1;-><init>(Lcom/zui/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->stopLoader()V

    new-instance v1, Lcom/zui/launcher/model/LoaderResults;

    iget-object v5, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    sget-object v6, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v7, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    iget-object v9, p0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    move-object v4, v1

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/zui/launcher/model/LoaderResults;-><init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;ILjava/lang/ref/WeakReference;)V

    iget-boolean p1, p0, Lcom/zui/launcher/LauncherModel;->e:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/launcher/LauncherModel;->d:Z

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/model/BaseLoaderResults;->bindWorkspace()V

    invoke-virtual {v1}, Lcom/zui/launcher/model/BaseLoaderResults;->bindAllApps()V

    invoke-virtual {v1}, Lcom/zui/launcher/model/LoaderResults;->bindDeepShortcuts()V

    invoke-virtual {v1}, Lcom/zui/launcher/model/LoaderResults;->bindWidgets()V

    invoke-virtual {v1}, Lcom/zui/launcher/model/LoaderResults;->finishBindingAllApps()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/zui/launcher/LauncherModel;->startLoaderForResults(Lcom/zui/launcher/model/LoaderResults;)V

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startLoaderForResults(Lcom/zui/launcher/model/LoaderResults;)V
    .locals 5

    const-string v0, "Launcher.Model"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->printStack(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->stopLoader()V

    new-instance v1, Lcom/zui/launcher/model/LoaderTask;

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel;->a:Lcom/zui/launcher/LauncherAppState;

    iget-object v3, p0, Lcom/zui/launcher/LauncherModel;->g:Lcom/zui/launcher/AllAppsList;

    sget-object v4, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/zui/launcher/model/LoaderTask;-><init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/AllAppsList;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/model/LoaderResults;)V

    iput-object v1, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startLoaderForResultsIfNotLoaded(Lcom/zui/launcher/model/LoaderResults;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->isModelLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "Workspace not loaded, loading now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->startLoaderForResults(Lcom/zui/launcher/model/LoaderResults;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startSearchedAppDownload(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 8

    new-instance v7, Lcom/zui/launcher/LauncherModel$r;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/LauncherModel$r;-><init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/LauncherModel$Callbacks;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopLoader()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/model/LoaderTask;->stopLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopLoaderAndRest()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/model/LoaderTask;->stopLocked()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/LauncherModel;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateAndBindWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/w1;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/w1;-><init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/LauncherModel$w;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherModel$w;-><init>(Lcom/zui/launcher/LauncherModel;Ljava/util/function/Supplier;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public updatePinnedShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/model/ShortcutsChangedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/zui/launcher/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zui/launcher/model/CacheDataUpdatedTask;

    const/4 v1, 0x2

    invoke-direct {p1, v1, p2, v0}, Lcom/zui/launcher/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/zui/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method
