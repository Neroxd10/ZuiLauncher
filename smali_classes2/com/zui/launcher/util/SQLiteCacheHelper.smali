.class public abstract Lcom/zui/launcher/util/SQLiteCacheHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/SQLiteCacheHelper$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/zui/launcher/util/SQLiteCacheHelper$a;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->a:Ljava/lang/String;

    new-instance p4, Lcom/zui/launcher/util/SQLiteCacheHelper$a;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/zui/launcher/util/SQLiteCacheHelper$a;-><init>(Lcom/zui/launcher/util/SQLiteCacheHelper;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->b:Lcom/zui/launcher/util/SQLiteCacheHelper$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/SQLiteCacheHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 2

    const-string v0, "SQLiteCacheHelper"

    const-string v1, "Disk full, all write operations will be ignored"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->c:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->b:Lcom/zui/launcher/util/SQLiteCacheHelper$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/launcher/util/SQLiteCacheHelper$a;->a(Lcom/zui/launcher/util/SQLiteCacheHelper$a;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->b:Lcom/zui/launcher/util/SQLiteCacheHelper$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->b:Lcom/zui/launcher/util/SQLiteCacheHelper$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SQLiteCacheHelper"

    const-string p2, "Ignoring sqlite exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/SQLiteCacheHelper;->b(Landroid/database/sqlite/SQLiteFullException;)V

    :goto_0
    return-void
.end method

.method public insertOrReplace(Landroid/content/ContentValues;)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->b:Lcom/zui/launcher/util/SQLiteCacheHelper$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SQLiteCacheHelper"

    const-string v0, "Ignoring sqlite exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/SQLiteCacheHelper;->b(Landroid/database/sqlite/SQLiteFullException;)V

    :goto_0
    return-void
.end method

.method protected abstract onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->b:Lcom/zui/launcher/util/SQLiteCacheHelper$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/util/SQLiteCacheHelper;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
