.class Lcom/zui/launcher/PermanentSettingsProvider$a;
.super Lcom/zui/launcher/util/NoLocaleSQLiteHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/PermanentSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:J

.field final synthetic c:Lcom/zui/launcher/PermanentSettingsProvider;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    const-string p1, "permanent_settings.db"

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/zui/launcher/util/NoLocaleSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->b:J

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS export_settings"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE export_settings (_id INTEGER,name TEXT NOT NULL,value TEXT,comment TEXT,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->e(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->b:J

    :cond_0
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4

    const-string p0, "SELECT MAX(_id) FROM export_settings"

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

    const-string p1, "Error: could not query max item id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.zui.launcher_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "comute_work_poi_name"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id"

    const-string v7, "value"

    const-string v8, "name"

    if-eqz v5, :cond_0

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v14}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v9, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v9}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v10

    const/4 v13, 0x0

    const-string v12, "export_settings"

    move-object/from16 v11, p1

    invoke-static/range {v9 .. v14}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    const-string v2, "commute_home_poi_name"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v14}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v9, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v9}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v10

    const/4 v13, 0x0

    const-string v12, "export_settings"

    move-object/from16 v11, p1

    invoke-static/range {v9 .. v14}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_1
    const-string v2, "commute_mycity"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v14}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v9, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v9}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v10

    const/4 v13, 0x0

    const-string v12, "export_settings"

    move-object/from16 v11, p1

    invoke-static/range {v9 .. v14}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_2
    const-string v2, "commute_home_poi_latitude"

    const/high16 v4, -0x31000000

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-eqz v9, :cond_3

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v15, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v15}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v10, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v10}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v11

    const/4 v14, 0x0

    const-string v13, "export_settings"

    move-object/from16 v12, p1

    invoke-static/range {v10 .. v15}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3
    const-string v2, "commute_home_poi_longitude"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-eqz v9, :cond_4

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v15, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v15}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v10, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v10}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v11

    const/4 v14, 0x0

    const-string v13, "export_settings"

    move-object/from16 v12, p1

    invoke-static/range {v10 .. v15}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_4
    const-string v2, "commute_work_poi_latitude"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-eqz v9, :cond_5

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v15, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v15}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v10, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v10}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v11

    const/4 v14, 0x0

    const-string v13, "export_settings"

    move-object/from16 v12, p1

    invoke-static/range {v10 .. v15}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_5
    const-string v2, "commute_work_poi_longitude"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_6

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v14}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v9, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v9}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v10

    const/4 v13, 0x0

    const-string v12, "export_settings"

    move-object/from16 v11, p1

    invoke-static/range {v9 .. v14}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_6
    const-string v2, "drive_preference"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v14}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v9, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v9}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v10

    const/4 v13, 0x0

    const-string v12, "export_settings"

    move-object/from16 v11, p1

    invoke-static/range {v9 .. v14}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v2, "bus_preference"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v14}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v9, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v9}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v10

    const-string v12, "export_settings"

    invoke-static/range {v9 .. v14}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v2, "short_time_preference"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v2, v14}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v9, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v9}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v10

    const-string v12, "export_settings"

    invoke-static/range {v9 .. v14}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v2, "short_distance_preference"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PermanentSettingsProvider$a;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v1, v14}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v9, v0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v9}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v10

    const-string v12, "export_settings"

    invoke-static/range {v9 .. v14}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Destroying all old data of PermanentSettingsProvider."

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherProviderLog(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS export_settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getAllExportSettingsFromOldDb(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/content/ContentValues;

    const-string v3, "name"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "launcher_auto_backup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v3, v9}, Lcom/zui/launcher/PermanentSettingsProvider;->a(Lcom/zui/launcher/PermanentSettingsProvider;Landroid/content/ContentValues;)V

    iget-object v4, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    iget-object v3, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {v3}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object v5

    const-string v7, "export_settings"

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Lcom/zui/launcher/PermanentSettingsProvider;->c(Lcom/zui/launcher/PermanentSettingsProvider;Lcom/zui/launcher/PermanentSettingsProvider$a;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------dataMirgration failed --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".....mHelper: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->c:Lcom/zui/launcher/PermanentSettingsProvider;

    invoke-static {p0}, Lcom/zui/launcher/PermanentSettingsProvider;->b(Lcom/zui/launcher/PermanentSettingsProvider;)Lcom/zui/launcher/PermanentSettingsProvider$a;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/PermanentSettingsProvider;->d(Lcom/zui/launcher/PermanentSettingsProvider;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->b:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max mMaxSettingId id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/launcher/PermanentSettingsProvider$a;->b:J

    invoke-direct {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====PermanentSettingsProvider=onDowngrade=====old: "

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
    invoke-direct {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/PermanentSettingsProvider$a;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
