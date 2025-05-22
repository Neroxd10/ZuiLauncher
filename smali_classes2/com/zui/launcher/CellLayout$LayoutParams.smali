.class public Lcom/zui/launcher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isLockedToGrid:Z

.field public isXYExchanged:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isXYExchanged:Z

    iput p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput p2, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput p3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput p4, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isXYExchanged:Z

    iput p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isXYExchanged:Z

    iput p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/CellLayout$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isXYExchanged:Z

    iget v0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget p1, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iput p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    return p0
.end method

.method public setup(IIZIFFZI)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget-boolean v2, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_0
    iget-boolean v3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    :goto_1
    if-eqz p7, :cond_3

    if-eqz p3, :cond_2

    sub-int/2addr p4, v3

    iget p3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    sub-int v3, p4, p3

    :cond_2
    invoke-static {v2, v3, v0, p8}, Lcom/zui/launcher/Utilities;->getExchangeCell(IIII)[I

    move-result-object p3

    mul-int/2addr v1, p1

    int-to-float p4, v1

    div-float/2addr p4, p5

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float p7, p5

    sub-float/2addr p4, p7

    iget p7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float p7, p7

    sub-float/2addr p4, p7

    float-to-int p4, p4

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-int/2addr v0, p2

    int-to-float p4, v0

    div-float/2addr p4, p6

    iget p6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float p7, p6

    sub-float/2addr p4, p7

    iget p7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p7, p7

    sub-float/2addr p4, p7

    float-to-int p4, p4

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p4, 0x0

    aget p4, p3, p4

    mul-int/2addr p4, p1

    add-int/2addr p4, p5

    iput p4, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    const/4 p1, 0x1

    aget p1, p3, p1

    mul-int/2addr p1, p2

    add-int/2addr p1, p6

    iput p1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    sub-int/2addr p4, v2

    iget p3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v2, p4, p3

    :cond_4
    mul-int/2addr v0, p1

    int-to-float p3, v0

    div-float/2addr p3, p5

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float p5, p4

    sub-float/2addr p3, p5

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float p5, p5

    sub-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-int/2addr v1, p2

    int-to-float p3, v1

    div-float/2addr p3, p6

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float p6, p5

    sub-float/2addr p3, p6

    iget p6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p6, p6

    sub-float/2addr p3, p6

    float-to-int p3, p3

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p4

    iput v2, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    mul-int/2addr v3, p2

    add-int/2addr v3, p5

    iput v3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    :cond_5
    :goto_2
    return-void
.end method

.method public setup(IIZIZI)V
    .locals 9

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout$LayoutParams;->setup(IIZIFFZI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
