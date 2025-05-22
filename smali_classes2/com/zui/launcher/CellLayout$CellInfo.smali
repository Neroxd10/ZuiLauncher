.class public final Lcom/zui/launcher/CellLayout$CellInfo;
.super Lcom/zui/launcher/util/CellAndSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfo"
.end annotation


# instance fields
.field public final cell:Landroid/view/View;

.field final container:I

.field final screenId:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/util/CellAndSpan;-><init>()V

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput p1, p0, Lcom/zui/launcher/CellLayout$CellInfo;->screenId:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->container:I

    iput p1, p0, Lcom/zui/launcher/CellLayout$CellInfo;->container:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
