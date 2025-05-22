.class public Lcom/zui/launcher/provider/LossyScreenMigrationTask;
.super Lcom/zui/launcher/model/GridSizeMigrationTask;
.source ""


# instance fields
.field private final j:Lcom/zui/launcher/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/zui/launcher/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    invoke-static {p1}, Lcom/zui/launcher/model/GridSizeMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    iget v0, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v1, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    iget v0, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-direct {v5, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V

    new-instance p1, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {p1}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/provider/LossyScreenMigrationTask;->j:Lcom/zui/launcher/util/IntSparseArrayMap;

    new-instance p1, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {p1}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/provider/LossyScreenMigrationTask;->k:Lcom/zui/launcher/util/IntSparseArrayMap;

    return-void
.end method


# virtual methods
.method protected loadWorkspaceEntries(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/zui/launcher/model/GridSizeMigrationTask;->loadWorkspaceEntries(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget-object v2, p0, Lcom/zui/launcher/provider/LossyScreenMigrationTask;->j:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v1}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget-object v2, p0, Lcom/zui/launcher/provider/LossyScreenMigrationTask;->k:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v1}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public migrateScreen0()V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/GridSizeMigrationTask;->migrateScreen(I)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/provider/LossyScreenMigrationTask;->k:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "favorites"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget-object v5, p0, Lcom/zui/launcher/provider/LossyScreenMigrationTask;->j:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v6, v3, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v6, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v7, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne v6, v7, :cond_1

    iget v6, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v7, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ne v6, v7, :cond_1

    iget v6, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, v3, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-ne v6, v7, :cond_1

    iget v5, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v6, v3, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-eq v5, v6, :cond_0

    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v3, v1}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->addToContentValues(Landroid/content/ContentValues;)V

    iget-object v5, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    const-string v3, "_id = ?"

    invoke-virtual {v5, v4, v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget-object v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask;->mEntryToRemove:Lcom/zui/launcher/util/IntArray;

    const-string v1, "_id"

    invoke-static {v1, p0}, Lcom/zui/launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/zui/launcher/util/IntArray;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method protected update(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/provider/LossyScreenMigrationTask;->k:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p1}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
