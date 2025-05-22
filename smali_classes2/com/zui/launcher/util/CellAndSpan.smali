.class public Lcom/zui/launcher/util/CellAndSpan;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public cellX:I

.field public cellY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    iput p1, p0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iput p2, p0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iput p3, p0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iput p4, p0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/zui/launcher/util/CellAndSpan;)V
    .locals 1

    iget v0, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v0, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v0, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iput v0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget p1, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    iput p1, p0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
