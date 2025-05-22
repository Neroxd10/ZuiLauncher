.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/dao/AppDataPathDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/dao/AppDataPathDBHelper$TableColumns;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "app_data_path.db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "app_data_path"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "app_data_path.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE app_data_path (_id INTEGER PRIMARY KEY AUTOINCREMENT,pkglable TEXT,pkginstallpath TEXT,pkgname TEXT,pkgversincode TEXT,other TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX DIFFERENT ON app_data_path (pkginstallpath,pkgname );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/dao/AppDataPathDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS app_data_path"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/dao/AppDataPathDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
