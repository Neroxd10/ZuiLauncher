.class public Lcom/zui/launcher/model/GridSizeMigrationTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;,
        Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;,
        Lcom/zui/launcher/model/GridSizeMigrationTask$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:I

.field protected final mCarryOver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected final mEntryToRemove:Lcom/zui/launcher/util/IntArray;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/zui/launcher/util/IntArray;

    invoke-direct {p3}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->a:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iput p4, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->h:I

    iput p5, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->i:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->c:I

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->g:Z

    iput-boolean p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->f:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Point;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/zui/launcher/util/IntArray;

    invoke-direct {p3}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->a:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget p1, p4, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->b:I

    iget p2, p4, Landroid/graphics/Point;->y:I

    iput p2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->c:I

    iget p2, p5, Landroid/graphics/Point;->x:I

    iput p2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    iget p3, p5, Landroid/graphics/Point;->y:I

    iput p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ge p2, p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    iput-boolean p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->f:Z

    iget p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    iget p2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->c:I

    if-ge p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    iput-boolean p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->g:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->i:I

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->h:I

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->e(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/model/GridSizeMigrationTask;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/model/GridSizeMigrationTask;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    return p0
.end method

.method private d()Z
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "GridSizeMigrationTask"

    const/4 v4, 0x0

    const-string v5, "favorites"

    if-ge v2, v0, :cond_0

    iget-object v6, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v7, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->a:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing items: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v6}, Lcom/zui/launcher/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    const-string v6, "_id"

    invoke-static {v6, v3}, Lcom/zui/launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/zui/launcher/util/IntArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    if-gtz v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static e(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-virtual {v1}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private f(I)I
    .locals 4

    const-string v0, "_id"

    const-string v1, "intent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/model/GridSizeMigrationTask;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/launcher/model/GridSizeMigrationTask;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method static g(Landroid/database/sqlite/SQLiteDatabase;)Lcom/zui/launcher/util/IntArray;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v1, "favorites"

    const-string v2, "screen"

    const-string v3, "container = -100"

    const-string v4, "screen"

    const-string v5, "screen"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zui/launcher/provider/LauncherDbUtils;->queryIntArray(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method protected static getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/zui/launcher/pm/InstallSessionHelper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/zui/launcher/model/x;

    invoke-direct {v1, v0}, Lcom/zui/launcher/model/x;-><init>(Ljava/util/HashSet;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic h(Ljava/util/HashSet;Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 0

    iget-object p1, p1, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "itemType"

    const-string v2, "intent"

    const-string v3, "screen"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "container = -101"

    const-string v6, "screen asc "

    invoke-virtual {p0, v4, v5, v6}, Lcom/zui/launcher/model/GridSizeMigrationTask;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v6}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v8, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->h:I

    iget v9, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->i:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lt v7, v8, :cond_0

    :goto_1
    iget-object v7, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    iget v6, v6, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v7, v6}, Lcom/zui/launcher/util/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget v7, v6, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v8, 0x8

    if-eqz v7, :cond_4

    const/4 v9, 0x1

    if-eq v7, v9, :cond_4

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_4

    const/16 v9, 0x9

    if-ne v7, v9, :cond_1

    goto :goto_2

    :cond_1
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Invalid item type"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    iget v7, v6, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-direct {p0, v7}, Lcom/zui/launcher/model/GridSizeMigrationTask;->f(I)I

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v8, 0x3f000000    # 0.5f

    int-to-float v7, v7

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    goto :goto_5

    :cond_3
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Folder is empty"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    :goto_2
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/zui/launcher/model/GridSizeMigrationTask;->k(Ljava/lang/String;)V

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v7, :cond_6

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-ne v7, v8, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    :goto_3
    const v7, 0x3f4ccccd    # 0.8f

    :goto_4
    iput v7, v6, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GridSizeMigrationTask"

    invoke-static {v9, v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v5
.end method

.method private j(IIILjava/util/ArrayList;[F)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;[F)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    new-instance v7, Lcom/zui/launcher/util/GridOccupancy;

    iget v1, v0, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    iget v2, v0, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    invoke-direct {v7, v1, v2}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iget v4, v0, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    iget-boolean v1, v0, Lcom/zui/launcher/model/GridSizeMigrationTask;->f:Z

    const v2, 0x7fffffff

    if-eqz v1, :cond_0

    move/from16 v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v3, v0, Lcom/zui/launcher/model/GridSizeMigrationTask;->g:Z

    if-eqz v3, :cond_1

    move/from16 v2, p2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v11, v8, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-gt v11, v1, :cond_3

    iget v12, v8, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr v12, v11

    if-gt v12, v1, :cond_4

    :cond_3
    iget v11, v8, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-gt v11, v2, :cond_6

    iget v12, v8, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr v12, v11

    if-le v12, v2, :cond_6

    :cond_4
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v9, v8, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-lt v9, v1, :cond_5

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/zui/launcher/ItemInfo;->cellX:I

    :cond_5
    iget v9, v8, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-lt v9, v2, :cond_2

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_1

    :cond_6
    iget v11, v8, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v12, 0x7

    if-ne v11, v12, :cond_9

    iget v11, v8, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v12, v8, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v13, v0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/FetchLenovoWidgetUtil;

    move-result-object v13

    iget-object v14, v8, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getSpanXY(Ljava/lang/String;)[I

    move-result-object v13

    if-eqz v13, :cond_7

    aget v14, v13, v9

    if-eqz v14, :cond_7

    aget v14, v13, v10

    if-eqz v14, :cond_7

    aget v11, v13, v9

    aget v12, v13, v10

    :cond_7
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    if-eq v8, v10, :cond_8

    iget v13, v10, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v14, v8, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-lt v13, v14, :cond_8

    add-int/2addr v14, v11

    if-ge v13, v14, :cond_8

    iget v13, v10, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v14, v8, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-lt v13, v14, :cond_8

    add-int/2addr v14, v12

    if-ge v13, v14, :cond_8

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget v9, v8, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-le v9, v1, :cond_a

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/zui/launcher/ItemInfo;->cellX:I

    :cond_a
    iget v9, v8, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-le v9, v2, :cond_b

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/zui/launcher/ItemInfo;->cellY:I

    :cond_b
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8, v10}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    new-instance v1, Lcom/zui/launcher/model/GridSizeMigrationTask$a;

    move/from16 v2, p3

    invoke-direct {v1, p0, v7, v4, v2}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;-><init>(Lcom/zui/launcher/model/GridSizeMigrationTask;Lcom/zui/launcher/util/GridOccupancy;Ljava/util/ArrayList;I)V

    invoke-virtual {v1}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a()V

    iget-object v0, v1, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, v1, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->e:F

    aput v0, p5, v9

    iget v0, v1, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->f:F

    aput v0, p5, v10

    return-object v3
.end method

.method private k(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static markForMigration(Landroid/content/Context;III)V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->getPointString(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "migration_src_workspace_size"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "migration_src_hotseat_count"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static migrateGridIfNeeded(Landroid/content/Context;)Z
    .locals 26

    const-string v1, "Workspace migration completed in "

    const-string v2, "GridSizeMigrationTask"

    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v4

    iget v0, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v5, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v5}, Lcom/zui/launcher/Utilities;->getPointString(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "migration_src_workspace_size"

    const-string v0, ""

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    const-string v8, "migration_src_hotseat_count"

    if-eqz v0, :cond_0

    iget v0, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-interface {v3, v8, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v0, v9, :cond_0

    return v7

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "new_db_transaction"

    invoke-static {v0, v12}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "value"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v0, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-interface {v3, v8, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/zui/launcher/Utilities;->parsePoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v15

    new-instance v14, Lcom/zui/launcher/model/GridBackupTable;

    invoke-virtual {v12}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    iget v13, v15, Landroid/graphics/Point;->x:I

    iget v11, v15, Landroid/graphics/Point;->y:I

    move/from16 v17, v13

    move-object v13, v14

    move-object/from16 v19, v14

    move-object/from16 v14, p0

    move-object v7, v15

    move-object/from16 v15, v16

    move/from16 v16, v0

    move/from16 v18, v11

    invoke-direct/range {v13 .. v18}, Lcom/zui/launcher/model/GridBackupTable;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;III)V

    invoke-virtual/range {v19 .. v19}, Lcom/zui/launcher/model/GridBackupTable;->backupOrRestoreAsNeeded()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v11, v19

    invoke-virtual {v11, v7}, Lcom/zui/launcher/model/GridBackupTable;->getRestoreHotseatAndGridSize(Landroid/graphics/Point;)I

    move-result v0

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v15

    iget v13, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    if-eq v0, v13, :cond_2

    new-instance v11, Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-virtual {v12}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    iget v14, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    move-object v13, v11

    move/from16 v18, v14

    move-object/from16 v14, p0

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    move/from16 v17, v0

    invoke-direct/range {v13 .. v18}, Lcom/zui/launcher/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashSet;II)V

    invoke-virtual {v11}, Lcom/zui/launcher/model/GridSizeMigrationTask;->migrateHotseat()Z

    move-result v11

    goto :goto_1

    :cond_2
    move-object/from16 v19, v15

    :goto_1
    new-instance v0, Landroid/graphics/Point;

    iget v13, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v14, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    new-instance v13, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;

    invoke-virtual {v12}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    move-object/from16 v15, p0

    move/from16 v16, v11

    move-object/from16 v11, v19

    invoke-direct {v13, v11, v15, v14}, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;-><init>(Ljava/util/HashSet;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v13, v7, v0}, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;->migrate(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    move/from16 v11, v16

    :goto_2
    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v7, "Removed every thing during grid resize"

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    invoke-virtual {v12}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->commit()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "refresh_backup_table"

    invoke-static {v0, v7}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_6

    :try_start_2
    invoke-virtual {v12}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v12, :cond_7

    :try_start_3
    invoke-virtual {v12}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_4
    invoke-virtual {v7, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_5
    const-string v7, "Error during grid migration"

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    return v1

    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, v4, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw v0
.end method

.method public static removeBrokenHotseatItems(Landroid/content/Context;)Lcom/zui/launcher/util/IntSparseArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "new_db_transaction"

    invoke-static {v0, v1}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;

    :try_start_0
    new-instance v7, Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-virtual {v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {p0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v4

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashSet;II)V

    invoke-direct {v7}, Lcom/zui/launcher/model/GridSizeMigrationTask;->i()Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v7}, Lcom/zui/launcher/model/GridSizeMigrationTask;->d()Z

    new-instance v1, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method


# virtual methods
.method protected loadWorkspaceEntries(I)Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, ", "

    const-string v4, "GridSizeMigrationTask"

    const-string v5, "_id"

    const-string v6, "itemType"

    const-string v7, "cellX"

    const-string v8, "cellY"

    const-string v9, "spanX"

    const-string v10, "spanY"

    const-string v11, "intent"

    const-string v12, "appWidgetProvider"

    const-string v13, "appWidgetId"

    const-string v14, "title"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container = -100 AND screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "screen asc, cellY asc, cellX asc"

    invoke-virtual {v1, v0, v5, v6}, Lcom/zui/launcher/model/GridSizeMigrationTask;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const-string v0, "_id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v0, "itemType"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v0, "cellX"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "cellY"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v0, "spanX"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v0, "spanY"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "intent"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v0, "appWidgetProvider"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v0, "appWidgetId"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v0, "title"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    iget-object v0, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    move/from16 v16, v12

    iget v12, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    move-object/from16 v17, v3

    iget v3, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    move/from16 v18, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object/from16 v19, v14

    new-instance v14, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v14}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;-><init>()V

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v2, v14, Lcom/zui/launcher/ItemInfo;->screenId:I

    :try_start_0
    iget v0, v14, Lcom/zui/launcher/ItemInfo;->itemType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    if-eq v0, v2, :cond_18

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x4

    const v23, 0x3f19999a    # 0.6f

    move/from16 v24, v6

    const/16 v25, 0x0

    if-eq v0, v2, :cond_9

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    :cond_0
    move/from16 v22, v3

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v17, v9

    goto/16 :goto_11

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Invalid item type"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move/from16 v22, v3

    goto/16 :goto_16

    :cond_2
    :try_start_2
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    int-to-float v2, v2

    mul-float v2, v2, v23

    iget v6, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    int-to-float v6, v6

    mul-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v14, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iput-object v0, v14, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v2, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v6, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    move/from16 v20, v2

    iget v2, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v2, v14, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v2, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v2, v14, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget-object v2, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/FetchLenovoWidgetUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getSpanXY(Ljava/lang/String;)[I

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v2, :cond_3

    :try_start_3
    aget v22, v2, v25

    if-eqz v22, :cond_3

    const/16 v21, 0x1

    aget v22, v2, v21

    if-eqz v22, :cond_3

    aget v6, v2, v25

    iput v6, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v6, v14, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    aget v6, v2, v21

    iput v6, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v6, v14, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    aget v6, v2, v25

    aget v2, v2, v21
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v26, v7

    move/from16 v28, v6

    move v6, v2

    move/from16 v2, v28

    goto :goto_1

    :cond_3
    move/from16 v26, v7

    move/from16 v2, v20

    :goto_1
    :try_start_4
    const-string v7, "com.zui.launcher.NewDualTimeZoneWidget"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, v14, Lcom/zui/launcher/ItemInfo;->spanX:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v27, v8

    :try_start_5
    iget v8, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->b:I

    if-ne v7, v8, :cond_4

    iget v7, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    iput v7, v14, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v7, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    :cond_4
    iget v7, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v8, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->c:I

    if-ne v7, v8, :cond_6

    iget v7, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    iput v7, v14, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iput v7, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    goto :goto_2

    :cond_5
    move/from16 v27, v8

    :cond_6
    :goto_2
    iget v7, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    add-int/2addr v7, v2

    if-gt v7, v3, :cond_8

    iget v7, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    add-int/2addr v7, v6

    if-gt v7, v12, :cond_8

    iget v0, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    if-gt v2, v0, :cond_7

    iget v0, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    if-gt v6, v0, :cond_7

    move/from16 v22, v3

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v17, v9

    goto/16 :goto_14

    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Leos Widget can\'t be resized down to fit the grid"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadWorkspaceEntries   leosWidget className -->"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Leos Widget Limit Exceeded "

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v26, v7

    :goto_3
    move/from16 v27, v8

    :goto_4
    move/from16 v22, v3

    goto/16 :goto_17

    :cond_9
    move/from16 v26, v7

    move/from16 v27, v8

    const/16 v21, 0x1

    :try_start_6
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    int-to-float v0, v0

    mul-float v0, v0, v23

    iget v2, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v14, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move/from16 v2, v18

    :try_start_7
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v6, Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v7, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    :try_start_8
    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->getMinSpans()Landroid/graphics/Point;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move/from16 v18, v2

    goto :goto_4

    :cond_a
    :goto_5
    if-eqz v6, :cond_13

    :try_start_9
    iget v7, v6, Landroid/graphics/Point;->x:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    if-lez v7, :cond_b

    :try_start_a
    iget v7, v6, Landroid/graphics/Point;->x:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    :cond_b
    :try_start_b
    iget v7, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    :goto_6
    iget v8, v6, Landroid/graphics/Point;->y:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    if-lez v8, :cond_c

    :try_start_c
    iget v8, v6, Landroid/graphics/Point;->y:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_7

    :cond_c
    :try_start_d
    iget v8, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :goto_7
    move/from16 v18, v2

    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move/from16 v22, v3

    :try_start_f
    const-string v3, "label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   p.minSpanX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    move-object/from16 v3, v17

    :try_start_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    move/from16 v17, v9

    :try_start_11
    iget v9, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "   needSpanX: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "    ==>   nowSpanXY: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v2, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->b:I

    if-ne v0, v2, :cond_e

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-lt v0, v7, :cond_d

    iget v0, v6, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_e

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-le v0, v7, :cond_e

    :cond_d
    iput v7, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    move/from16 v25, v21

    :cond_e
    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v2, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->c:I

    if-ne v0, v2, :cond_10

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-lt v0, v8, :cond_f

    iget v0, v6, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_10

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-le v0, v8, :cond_10

    :cond_f
    iput v8, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    move/from16 v2, v21

    goto :goto_8

    :cond_10
    move/from16 v2, v25

    :goto_8
    iget v0, v6, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_11

    iget v0, v6, Landroid/graphics/Point;->x:I

    goto :goto_9

    :cond_11
    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    :goto_9
    iput v0, v14, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v0, v6, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_12

    iget v0, v6, Landroid/graphics/Point;->y:I

    goto :goto_a

    :cond_12
    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    :goto_a
    iput v0, v14, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    move/from16 v25, v2

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    goto :goto_d

    :cond_13
    move/from16 v18, v2

    move/from16 v22, v3

    move-object/from16 v3, v17

    const/4 v0, 0x2

    move/from16 v17, v9

    iput v0, v14, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iput v0, v14, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    :goto_b
    iget v0, v14, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v2, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    if-gt v0, v2, :cond_14

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget v2, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    if-gt v0, v2, :cond_14

    if-eqz v25, :cond_16

    invoke-virtual {v1, v14}, Lcom/zui/launcher/model/GridSizeMigrationTask;->update(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_f

    :cond_14
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Widget can\'t be resized down to fit the grid"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v0

    move/from16 v18, v2

    goto :goto_c

    :catch_8
    move-exception v0

    :goto_c
    move/from16 v22, v3

    :goto_d
    move-object/from16 v3, v17

    :goto_e
    move/from16 v17, v9

    goto :goto_10

    :cond_15
    move/from16 v22, v3

    move/from16 v24, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v3, v17

    move/from16 v17, v9

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-direct {v1, v0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->f(I)I

    move-result v0

    if-eqz v0, :cond_17

    const/high16 v2, 0x3f000000    # 0.5f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, v14, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    :cond_16
    :goto_f
    move/from16 v2, v16

    goto :goto_14

    :cond_17
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Folder is empty"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    :catch_9
    move-exception v0

    :goto_10
    move/from16 v2, v16

    goto :goto_15

    :cond_18
    move/from16 v22, v3

    move/from16 v24, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v3, v17

    move/from16 v17, v9

    move/from16 v2, v16

    :goto_11
    :try_start_12
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->k(Ljava/lang/String;)V

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_1a

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_19

    goto :goto_12

    :cond_19
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_1a
    :goto_12
    const v0, 0x3f4ccccd    # 0.8f

    :goto_13
    iput v0, v14, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    :goto_14
    move-object/from16 v6, v19

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :catch_a
    move-exception v0

    :goto_15
    move-object/from16 v6, v19

    goto :goto_18

    :catch_b
    move-exception v0

    move/from16 v22, v3

    move/from16 v24, v6

    :goto_16
    move/from16 v26, v7

    move/from16 v27, v8

    :goto_17
    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v19

    move/from16 v17, v9

    :goto_18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing item "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    iget v7, v14, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v7}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :goto_19
    move/from16 v16, v2

    move-object v14, v6

    move/from16 v9, v17

    move/from16 v6, v24

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v2, p1

    move-object/from16 v17, v3

    move/from16 v3, v22

    goto/16 :goto_0

    :cond_1b
    move-object v6, v14

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-object v6
.end method

.method protected migrateHotseat()Z
    .locals 6

    invoke-direct {p0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->i()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->i:I

    if-le v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v4, v3, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v5, v1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/IntArray;->add(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-eq v4, v2, :cond_3

    iput v2, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v2, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v1, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, v3}, Lcom/zui/launcher/model/GridSizeMigrationTask;->update(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->d()Z

    move-result p0

    return p0
.end method

.method protected migrateScreen(I)V
    .locals 21

    move-object/from16 v6, p0

    move/from16 v7, p1

    iget-object v0, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    if-nez v7, :cond_0

    move v15, v9

    goto :goto_0

    :cond_0
    move v15, v8

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/model/GridSizeMigrationTask;->loadWorkspaceEntries(I)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x2

    new-array v12, v11, [F

    const/4 v0, 0x0

    iget v1, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->b:I

    sub-int/2addr v1, v9

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v3, 0x7fffffff

    move v13, v1

    move v1, v2

    move v4, v3

    :goto_1
    if-ltz v13, :cond_8

    iget v5, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->c:I

    sub-int/2addr v5, v9

    move-object v14, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    :goto_2
    if-lt v5, v15, :cond_6

    invoke-static {v10}, Lcom/zui/launcher/model/GridSizeMigrationTask;->e(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v13

    move v2, v5

    move v3, v15

    move/from16 v20, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/model/GridSizeMigrationTask;->j(IIILjava/util/ArrayList;[F)Ljava/util/ArrayList;

    move-result-object v0

    aget v1, v12, v8

    cmpg-float v1, v1, v17

    if-ltz v1, :cond_1

    aget v1, v12, v8

    cmpl-float v1, v1, v17

    if-nez v1, :cond_4

    aget v1, v12, v9

    cmpg-float v1, v1, v16

    if-gez v1, :cond_4

    :cond_1
    aget v1, v12, v8

    aget v2, v12, v9

    iget-boolean v3, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->f:Z

    if-eqz v3, :cond_2

    move/from16 v18, v13

    :cond_2
    iget-boolean v3, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->g:Z

    if-eqz v3, :cond_3

    move/from16 v19, v20

    :cond_3
    move-object v14, v0

    move/from16 v17, v1

    move/from16 v16, v2

    :cond_4
    iget-boolean v0, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->g:Z

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v20, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    iget-boolean v5, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->f:Z

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_8
    :goto_4
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v11

    const-string v3, "Removing row %d, column %d on screen %d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridSizeMigrationTask"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    invoke-static {v10}, Lcom/zui/launcher/model/GridSizeMigrationTask;->e(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v8, v4, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v4, v5}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->columnsSame(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v6, v4}, Lcom/zui/launcher/model/GridSizeMigrationTask;->update(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget-object v4, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget-object v1, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v8, 0x0

    cmpl-float v1, v2, v8

    if-nez v1, :cond_f

    new-instance v2, Lcom/zui/launcher/util/GridOccupancy;

    iget v1, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    iget v3, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    invoke-direct {v2, v1, v3}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    const/4 v1, 0x1

    move-object v10, v2

    move v14, v15

    move v4, v15

    move v15, v1

    invoke-virtual/range {v10 .. v15}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-virtual {v2, v1, v9}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    goto :goto_8

    :cond_d
    new-instance v9, Lcom/zui/launcher/model/GridSizeMigrationTask$a;

    iget-object v0, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->e(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;-><init>(Lcom/zui/launcher/model/GridSizeMigrationTask;Lcom/zui/launcher/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    invoke-virtual {v9}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a()V

    iget v0, v9, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->e:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_f

    iget-object v0, v9, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iput v7, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v6, v1}, Lcom/zui/launcher/model/GridSizeMigrationTask;->update(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_9

    :cond_e
    iget-object v0, v6, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_f
    return-void
.end method

.method protected migrateWorkspace()Z
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->g(Landroid/database/sqlite/SQLiteDatabase;)Lcom/zui/launcher/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GridSizeMigrationTask"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/zui/launcher/model/GridSizeMigrationTask;->migrateScreen(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/zui/launcher/model/GridSizeMigrationTask$a;

    new-instance v6, Lcom/zui/launcher/util/GridOccupancy;

    iget v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->d:I

    iget v3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->e:I

    invoke-direct {v6, v2, v3}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iget-object v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/zui/launcher/model/GridSizeMigrationTask;->e(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;-><init>(Lcom/zui/launcher/model/GridSizeMigrationTask;Lcom/zui/launcher/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    invoke-virtual {v1}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a()V

    iget-object v2, v1, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "generate_new_screen_id"

    invoke-static {v2, v3}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v1, v1, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget-object v4, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v2, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, v3}, Lcom/zui/launcher/model/GridSizeMigrationTask;->update(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Unable to find matching items"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "None of the items can be placed on an empty screen"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->d()Z

    move-result p0

    return p0
.end method

.method protected queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method protected queryWorkspace([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method protected update(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)V
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->addToContentValues(Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->a:Landroid/util/SparseArray;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
