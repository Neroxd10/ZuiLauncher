.class public Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;,
        Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/zui/launcher/icons/cache/BaseIconCache;

.field private final c:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseBooleanArray;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->f:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/zui/launcher/icons/cache/BaseIconCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->c:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->d:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->e:Z

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    iget-object p1, p1, Lcom/zui/launcher/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->d()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;)Lcom/zui/launcher/icons/cache/BaseIconCache;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    iget-object v0, v0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->a:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Landroid/os/UserHandle;Ljava/util/HashMap;Lcom/zui/launcher/icons/cache/CachingLogic;Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "TT;>;",
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "TT;>;",
            "Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    const-string v0, "system_state"

    const-string v1, "version"

    const-string v3, "lastUpdated"

    const-string v4, "componentName"

    const-string v6, "rowid"

    iget-object v7, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->c:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-nez v7, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    :cond_0
    iget-object v8, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    invoke-virtual {v8, v5}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    :try_start_0
    iget-object v11, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    iget-object v11, v11, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    filled-new-array {v6, v4, v3, v1, v0}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "profileId = ? "

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    aput-object v16, v15, v14

    invoke-virtual {v11, v12, v13, v15}, Lcom/zui/launcher/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    iget-object v13, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->a:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-nez v13, :cond_2

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    iget-boolean v13, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->e:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    iget-object v13, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    invoke-virtual {v13, v12, v5}, Lcom/zui/launcher/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v12, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_2
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x1000000

    and-int v14, v14, v17

    if-eqz v14, :cond_4

    :cond_3
    :goto_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v19, v1

    move/from16 v20, v3

    move-object/from16 v1, p2

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget v1, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v14, v1, :cond_6

    move v14, v6

    move-object v1, v7

    iget-wide v6, v13, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v6, v17, v6

    if-nez v6, :cond_7

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v3, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->e:Z

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->d:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v3, v15, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_5
    move-object v7, v1

    move v6, v14

    move/from16 v1, v19

    move/from16 v3, v20

    goto :goto_1

    :cond_6
    move v14, v6

    move-object v1, v7

    :cond_7
    const/4 v6, 0x0

    if-nez v3, :cond_8

    iget-boolean v3, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->e:Z

    const/4 v7, 0x1

    if-ne v3, v7, :cond_9

    iget-object v3, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    invoke-virtual {v3, v12, v5}, Lcom/zui/launcher/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v3, v2, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v15, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_8
    const/4 v7, 0x1

    invoke-virtual {v10, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_2
    move-object v7, v1

    move/from16 v1, v19

    move/from16 v3, v20

    move/from16 v21, v14

    move v14, v6

    move/from16 v6, v21

    goto/16 :goto_0

    :cond_a
    if-eqz v11, :cond_c

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_b

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "IconCacheUpdateHandler"

    const-string v3, "Error reading icon cache"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v3, v8

    move-object/from16 v5, p1

    move-object v7, v10

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;-><init>(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;JLandroid/os/UserHandle;Ljava/util/Stack;Ljava/util/Stack;Lcom/zui/launcher/icons/cache/CachingLogic;Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    invoke-virtual {v0}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->a()V

    :cond_e
    return-void
.end method


# virtual methods
.method public addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->c:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->c:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rowid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v3, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v3, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b:Lcom/zui/launcher/icons/cache/BaseIconCache;

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/util/SQLiteCacheHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public updateIcons(Ljava/util/List;Lcom/zui/launcher/icons/cache/CachingLogic;Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "TT;>;",
            "Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v4}, Lcom/zui/launcher/icons/cache/CachingLogic;->getUser(Ljava/lang/Object;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p2, v4}, Lcom/zui/launcher/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->e(Landroid/os/UserHandle;Ljava/util/HashMap;Lcom/zui/launcher/icons/cache/CachingLogic;Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    goto :goto_2

    :cond_3
    iput-boolean v2, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->e:Z

    return-void
.end method
