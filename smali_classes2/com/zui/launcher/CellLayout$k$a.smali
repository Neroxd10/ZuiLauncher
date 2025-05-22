.class Lcom/zui/launcher/CellLayout$k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/CellLayout$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/zui/launcher/CellLayout$k;


# direct methods
.method constructor <init>(Lcom/zui/launcher/CellLayout$k;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/CellLayout$k$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$k;->b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/util/CellAndSpan;

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$k;->b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/util/CellAndSpan;

    iget v0, p0, Lcom/zui/launcher/CellLayout$k$a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget p2, p2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object v1, v1, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p2

    iget v0, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget p1, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p0

    sub-int/2addr p0, p2

    return p0

    :cond_0
    iget p0, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget p1, p2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    sub-int/2addr p0, p1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, p2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p0

    iget p1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p1

    sub-int/2addr p1, p0

    return p1

    :cond_2
    iget p0, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget p1, p2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    sub-int/2addr p0, p1

    return p0

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v1, p2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object v2, v2, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v0

    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p0

    invoke-static {v1, v2, p0}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p0

    iget p2, p2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v0, p2

    iget p1, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0

    :cond_4
    iget p0, p2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget p2, p2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr p0, p2

    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget p1, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr p2, p1

    sub-int/2addr p0, p2

    return p0

    :cond_5
    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k$a;->b:Lcom/zui/launcher/CellLayout$k;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p0

    if-eqz p0, :cond_6

    iget p0, p2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p0

    iget v0, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v0

    iget p2, p2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr p0, p2

    iget p1, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0

    :cond_6
    iget p0, p2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget p2, p2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr p0, p2

    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget p1, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr p2, p1

    sub-int/2addr p0, p2

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/CellLayout$k$a;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method
