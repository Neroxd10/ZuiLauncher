.class public Lcom/zui/launcher/GlobalSearchProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/GlobalSearchProvider$a;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/GlobalSearchProvider$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/content/ContentValues;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "modified"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private static b(Lcom/zui/launcher/GlobalSearchProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 0

    const-string p0, "_id"

    invoke-virtual {p4, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bulkUpdate([Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    aget-object v4, p1, v2

    invoke-direct {v3, v4, p3, p4}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v4, p2, v2

    invoke-direct {p0, v4}, Lcom/zui/launcher/GlobalSearchProvider;->a(Landroid/content/ContentValues;)V

    iget-object v4, v3, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    aget-object v5, p2, v2

    iget-object v6, v3, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v3, v3, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    array-length p0, p2

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "generateNewHistoryId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "generateNewGameAppId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "generateNewRecommendId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "generateNewUsageStatId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "generateNewHotWordId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v5, "value"

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->h()J

    move-result-wide p2

    :goto_2
    invoke-virtual {p1, v5, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->i()J

    move-result-wide p2

    goto :goto_2

    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->f()J

    move-result-wide p2

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->j()J

    move-result-wide p2

    goto :goto_2

    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->g()J

    move-result-wide p2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79334b39 -> :sswitch_4
        -0x60c3dd5b -> :sswitch_3
        -0x4121b9f4 -> :sswitch_2
        -0x18b8e961 -> :sswitch_1
        0x141c4524 -> :sswitch_0
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    iget-object p1, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p2, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object p3, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public executeSql(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public generateNewGameAppId()J
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewHistoryId()J
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewHotWordId()J
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewRecommendId()J
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewUsageStatId()J
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchProvider$a;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.dir/"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.item/"

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/zui/launcher/GlobalSearchProvider;->a(Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    iget-object v0, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p2}, Lcom/zui/launcher/GlobalSearchProvider;->b(Lcom/zui/launcher/GlobalSearchProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-gtz p0, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-direct {v1, v0}, Lcom/zui/launcher/GlobalSearchProvider$a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object p1, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v4, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/GlobalSearchProvider;->a(Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchProvider;->a:Lcom/zui/launcher/GlobalSearchProvider$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    iget-object p1, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p3, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object p4, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
