.class public Lcom/zui/launcher/model/GridBackupTable;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/model/GridBackupTable;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public backupOrRestoreAsNeeded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRestoreHotseatAndGridSize(Landroid/graphics/Point;)I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/model/GridBackupTable;->c:I

    iget v1, p0, Lcom/zui/launcher/model/GridBackupTable;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget p0, p0, Lcom/zui/launcher/model/GridBackupTable;->b:I

    return p0
.end method
