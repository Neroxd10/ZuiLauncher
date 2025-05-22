.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

.field private static e:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "path"

    const-string v2, "type"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->e:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->getId()J

    move-result-wide v2

    if-eqz v1, :cond_0

    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->e()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "file_info"

    invoke-virtual {p0, v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v2, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p0, v2, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-array p0, v2, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_2
    return-void

    :goto_3
    new-array p0, v2, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :cond_1
    :goto_4
    return-void
.end method

.method private d(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->e()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v0, "file_info"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "_id DESC"

    :goto_0
    move-object v8, p1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private e()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

    return-object p0
.end method

.method private f(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->d(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private g(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;
    .locals 9

    const-string v0, "path = ?"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    :try_start_0
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->e:[Ljava/lang/String;

    invoke-direct {p0, p1, v4, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->d(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-array v1, v1, [Landroid/database/Cursor;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V

    return-object p1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;-><init>()V

    invoke-virtual {v7, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->setId(J)V

    invoke-virtual {v7, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->setPath(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->setType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v1, [Landroid/database/Cursor;

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V

    return-object v7

    :cond_1
    new-array v1, v1, [Landroid/database/Cursor;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v0, p1

    :goto_0
    :try_start_2
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array v1, v1, [Landroid/database/Cursor;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v0, p1

    :goto_1
    :try_start_3
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-array v1, v1, [Landroid/database/Cursor;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    :goto_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_3
    new-array v1, v1, [Landroid/database/Cursor;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized addFileInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->g(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "path"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->e()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "file_info"

    invoke-virtual {v4, v5, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v0, v2, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->setId(J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    new-array v0, v2, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteAll()I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->e()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "file_info"

    invoke-virtual {v3, v4, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v1, v1, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    :goto_0
    :try_start_3
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-array v0, v1, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    :goto_1
    :try_start_5
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-array v0, v1, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    :goto_3
    :try_start_7
    new-array v1, v1, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->f(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    new-array p1, v4, [Landroid/database/Cursor;

    aput-object v2, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;

    invoke-direct {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;-><init>()V

    invoke-virtual {v8, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->setId(J)V

    invoke-virtual {v8, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->setPath(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->setType(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    new-array p1, v4, [Landroid/database/Cursor;

    aput-object v2, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    :goto_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_5
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-array p1, v4, [Landroid/database/Cursor;

    aput-object v2, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_7
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-array p1, v4, [Landroid/database/Cursor;

    aput-object v2, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    goto :goto_1

    :goto_2
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->c(Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_9
    new-array v0, v4, [Landroid/database/Cursor;

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLogCount()I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "count(*)"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->d(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    :try_start_1
    new-array v0, v0, [Landroid/database/Cursor;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v3

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v0, v0, [Landroid/database/Cursor;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    :goto_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_4
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-array v0, v0, [Landroid/database/Cursor;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :goto_2
    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    goto :goto_4

    :goto_3
    :try_start_6
    new-array v0, v0, [Landroid/database/Cursor;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->b()V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    monitor-exit p0

    throw v0
.end method
