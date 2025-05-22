.class public Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/GridSizeMigrationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MultiStepMigrationTask"
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;->a:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public migrate(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 4

    invoke-virtual {p2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    :goto_1
    iput v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_0
    if-le v2, v3, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    :goto_3
    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_2
    if-le v2, v3, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;->runStepTask(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_5
    return v1
.end method

.method protected runStepTask(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 7

    new-instance v6, Lcom/zui/launcher/model/GridSizeMigrationTask;

    iget-object v1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$MultiStepMigrationTask;->a:Ljava/util/HashSet;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v6}, Lcom/zui/launcher/model/GridSizeMigrationTask;->migrateWorkspace()Z

    move-result p0

    return p0
.end method
