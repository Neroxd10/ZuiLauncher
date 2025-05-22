.class Lcom/zui/launcher/LeftScreenDbProvider$a;
.super Lcom/zui/launcher/util/NoLocaleSQLiteHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LeftScreenDbProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field final synthetic g:Lcom/zui/launcher/LeftScreenDbProvider;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/LeftScreenDbProvider;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->g:Lcom/zui/launcher/LeftScreenDbProvider;

    const-string p1, "leftScreen.db"

    const/4 v0, 0x3

    invoke-direct {p0, p2, p1, v0}, Lcom/zui/launcher/util/NoLocaleSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->b:J

    iput-wide p1, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->c:J

    iput-wide p1, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->d:J

    iput-wide p1, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->e:J

    iput-wide p1, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->f:J

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS bind_phone"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE bind_phone (_id INTEGER ,phone TEXT NOT NULL,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS rookie_courierCompany"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE rookie_courierCompany (_id INTEGER ,company_key TEXT NOT NULL,company_full_name TEXT NOT NULL,company_short_name TEXT NOT NULL,cp_code TEXT NOT NULL,small_icon TEXT ,middle_icon TEXT ,normal_icon TEXT ,s100_icon TEXT ,s72_icon TEXT ,s38_icon TEXT ,tel_phone TEXT ,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS overlay_settings"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE overlay_settings (_id INTEGER, key TEXT NOT NULL,card_type INTEGER NOT NULL DEFAULT 1,enabled INTEGER NOT NULL DEFAULT 1,cta_hide INTEGER NOT NULL DEFAULT 0,rank INTEGER NOT NULL DEFAULT 0,no_edit INTEGER NOT NULL DEFAULT 0,no_default_bg INTEGER NOT NULL DEFAULT 0,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS removed_express"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE removed_express (_id INTEGER ,mailNo TEXT NOT NULL,subPhone TEXT NOT NULL,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS search_history"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE search_history (_id INTEGER ,mailNo TEXT NOT NULL,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private o(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "rookie_courierCompany"

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/LeftScreenDbProvider$a;->p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->b:J

    :cond_0
    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "bind_phone"

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/LeftScreenDbProvider$a;->p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->c:J

    :cond_1
    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "removed_express"

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/LeftScreenDbProvider$a;->p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->d:J

    :cond_2
    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "search_history"

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/LeftScreenDbProvider$a;->p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->e:J

    :cond_3
    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "overlay_settings"

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/LeftScreenDbProvider$a;->p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->f:J

    :cond_4
    return-void
.end method

.method private p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT MAX(_id) FROM "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    return-wide v2

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: could not query max "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private q(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Destroying all old data of LeftScreenDbProvider."

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherProviderLog(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS rookie_courierCompany"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS bind_phone"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS removed_express"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS overlay_settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS search_history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    iget-object v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->g:Lcom/zui/launcher/LeftScreenDbProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/zui/launcher/Utilities;->readOverlayCardFromOldDb(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->g:Lcom/zui/launcher/LeftScreenDbProvider;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-static {v3, v4}, Lcom/zui/launcher/LeftScreenDbProvider;->a(Lcom/zui/launcher/LeftScreenDbProvider;Landroid/content/ContentValues;)V

    iget-object v5, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->g:Lcom/zui/launcher/LeftScreenDbProvider;

    iget-object v3, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->g:Lcom/zui/launcher/LeftScreenDbProvider;

    invoke-static {v3}, Lcom/zui/launcher/LeftScreenDbProvider;->b(Lcom/zui/launcher/LeftScreenDbProvider;)Lcom/zui/launcher/LeftScreenDbProvider$a;

    move-result-object v6

    const-string v8, "overlay_settings"

    const/4 v9, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/content/ContentValues;

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/zui/launcher/LeftScreenDbProvider;->c(Lcom/zui/launcher/LeftScreenDbProvider;Lcom/zui/launcher/LeftScreenDbProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->g:Lcom/zui/launcher/LeftScreenDbProvider;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------dataMirgration failed --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider;->d(Lcom/zui/launcher/LeftScreenDbProvider;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()J
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->c:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max phone item id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()I
    .locals 3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT MAX(rank) FROM rookie_courierCompany"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-ne v2, v1, :cond_2

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->b:J

    long-to-int v2, v0

    :cond_2
    return v2
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT MAX(rank) FROM overlay_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-ne v2, v1, :cond_2

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->f:J

    long-to-int v2, v0

    :cond_2
    return v2
.end method

.method public j()I
    .locals 3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT MAX(rank) FROM bind_phone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-ne v2, v1, :cond_2

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->c:J

    long-to-int v2, v0

    :cond_2
    return v2
.end method

.method public k()J
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->b:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max item id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l()J
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->f:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max overlay id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m()J
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->d:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max removed express id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n()J
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->e:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max search history id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->b:J

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->c:J

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->d:J

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->e:J

    iput-wide v0, p0, Lcom/zui/launcher/LeftScreenDbProvider$a;->f:J

    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====LeftScreenDbProvider=onDowngrade=====old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "---> new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherProviderLog(Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "------>onDowngrade -------"

    invoke-static {p3, p2}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/zui/launcher/util/Debug;->saveLauncherProviderError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p2

    :try_start_3
    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/zui/launcher/util/Debug;->saveLauncherProviderError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_2
    invoke-direct {p0, p1}, Lcom/zui/launcher/LeftScreenDbProvider$a;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method
