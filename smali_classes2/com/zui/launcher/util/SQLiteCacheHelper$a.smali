.class Lcom/zui/launcher/util/SQLiteCacheHelper$a;
.super Lcom/zui/launcher/util/NoLocaleSQLiteHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/SQLiteCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/zui/launcher/util/SQLiteCacheHelper;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/util/SQLiteCacheHelper;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/SQLiteCacheHelper$a;->b:Lcom/zui/launcher/util/SQLiteCacheHelper;

    invoke-direct {p0, p2, p3, p4}, Lcom/zui/launcher/util/NoLocaleSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/SQLiteCacheHelper$a;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/SQLiteCacheHelper$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/util/SQLiteCacheHelper$a;->b:Lcom/zui/launcher/util/SQLiteCacheHelper;

    invoke-static {v1}, Lcom/zui/launcher/util/SQLiteCacheHelper;->a(Lcom/zui/launcher/util/SQLiteCacheHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/SQLiteCacheHelper$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/SQLiteCacheHelper$a;->b:Lcom/zui/launcher/util/SQLiteCacheHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/SQLiteCacheHelper;->onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-eq p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/SQLiteCacheHelper$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-eq p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/SQLiteCacheHelper$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
