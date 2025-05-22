.class public Lcom/zui/launcher/networksdk/db/DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field public static final DB_TABLE_NAME:Ljava/lang/String; = "download"

.field private static volatile a:Lcom/zui/launcher/networksdk/db/DBOpenHelper; = null

.field public static final done:Ljava/lang/String; = "done"

.field public static finshStatus:I = 0x0

.field public static initStatus:I = 0x0

.field public static final max:Ljava/lang/String; = "max"

.field public static final path:Ljava/lang/String; = "path"

.field public static pauseStatus:I = 0x0

.field public static final savepath:Ljava/lang/String; = "savepath"

.field public static startStatus:I = 0x0

.field public static final status:Ljava/lang/String; = "status"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->startStatus:I

    add-int/lit8 v1, v0, 0x2

    sput v1, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->pauseStatus:I

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->finshStatus:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "lelaunchernetwork.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/db/DBOpenHelper;
    .locals 3

    const-class v0, Lcom/zui/launcher/networksdk/db/DBOpenHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->a:Lcom/zui/launcher/networksdk/db/DBOpenHelper;

    if-nez v1, :cond_1

    const-class v1, Lcom/zui/launcher/networksdk/db/DBOpenHelper;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->a:Lcom/zui/launcher/networksdk/db/DBOpenHelper;

    if-nez v2, :cond_0

    new-instance v2, Lcom/zui/launcher/networksdk/db/DBOpenHelper;

    invoke-direct {v2, p0}, Lcom/zui/launcher/networksdk/db/DBOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->a:Lcom/zui/launcher/networksdk/db/DBOpenHelper;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->a:Lcom/zui/launcher/networksdk/db/DBOpenHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->a:Lcom/zui/launcher/networksdk/db/DBOpenHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->a:Lcom/zui/launcher/networksdk/db/DBOpenHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->a:Lcom/zui/launcher/networksdk/db/DBOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    return-object v0
.end method

.method public declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS download( _id INTEGER PRIMARY KEY AUTOINCREMENT, path VARCHAR, max INTEGER,done INTEGER,status INTEGER,savepath VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
