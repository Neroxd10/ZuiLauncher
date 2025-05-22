.class public Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;
.super Lcom/zui/launcher/ItemInfo;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/GridSizeMigrationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DbEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/ItemInfo;",
        "Ljava/lang/Comparable<",
        "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addToContentValues(Landroid/content/ContentValues;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "spanY"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public columnsSame(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)Z
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public compareTo(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)I
    .locals 3

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget p0, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, -0x1

    return p0

    :cond_5
    :goto_2
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    mul-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->compareTo(Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;)I

    move-result p0

    return p0
.end method

.method public copy()Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v0}, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    iget v1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iput v1, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iput p0, v0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    return-object v0
.end method
