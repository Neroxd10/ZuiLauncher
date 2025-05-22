.class Lcom/zui/launcher/CellLayout$k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/CellLayout$k$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

.field final c:Landroid/graphics/Rect;

.field final d:[I

.field final e:[I

.field final f:[I

.field final g:[I

.field h:I

.field i:Z

.field final j:Lcom/zui/launcher/CellLayout$k$a;

.field final synthetic k:Lcom/zui/launcher/CellLayout;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/CellLayout;Ljava/util/ArrayList;Lcom/zui/launcher/CellLayout$ItemConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/zui/launcher/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k;->c:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountV()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k;->d:[I

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountV()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k;->e:[I

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountH()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k;->f:[I

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountH()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k;->g:[I

    new-instance p1, Lcom/zui/launcher/CellLayout$k$a;

    invoke-direct {p1, p0}, Lcom/zui/launcher/CellLayout$k$a;-><init>(Lcom/zui/launcher/CellLayout$k;)V

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k;->j:Lcom/zui/launcher/CellLayout$k$a;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$k;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zui/launcher/CellLayout$k;->b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout$k;->e()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout$k;->e()V

    return-void
.end method

.method b(I)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/CellAndSpan;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_e

    const/4 v3, 0x2

    if-eq p1, v3, :cond_8

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v3

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v4

    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    move v5, v3

    :goto_1
    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v6, v3

    if-ge v5, v6, :cond_14

    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->g:[I

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget v7, v6, v5

    if-le v4, v7, :cond_1

    aput v4, v6, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    :goto_2
    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_14

    iget-object v5, p0, Lcom/zui/launcher/CellLayout$k;->g:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget v6, v5, v4

    if-le v3, v6, :cond_3

    aput v3, v5, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v3

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v4

    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v5

    move v5, v4

    :goto_3
    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_14

    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->e:[I

    aget v7, v6, v5

    if-le v3, v7, :cond_5

    aput v3, v6, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    :goto_4
    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_14

    iget-object v5, p0, Lcom/zui/launcher/CellLayout$k;->e:[I

    aget v6, v5, v4

    if-le v3, v6, :cond_7

    aput v3, v5, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v3

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v4

    move v5, v3

    :goto_5
    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v6, v3

    if-ge v5, v6, :cond_14

    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->f:[I

    array-length v7, v6

    if-ge v5, v7, :cond_a

    aget v7, v6, v5

    if-lt v4, v7, :cond_9

    aget v6, v6, v5

    if-gez v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->f:[I

    aput v4, v6, v5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    :goto_6
    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_14

    iget-object v5, p0, Lcom/zui/launcher/CellLayout$k;->f:[I

    array-length v6, v5

    if-ge v4, v6, :cond_d

    aget v6, v5, v4

    if-lt v3, v6, :cond_c

    aget v5, v5, v4

    if-gez v5, :cond_d

    :cond_c
    iget-object v5, p0, Lcom/zui/launcher/CellLayout$k;->f:[I

    aput v3, v5, v4

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v3

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v4

    move v5, v4

    :goto_7
    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_14

    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->d:[I

    aget v7, v6, v5

    if-lt v3, v7, :cond_f

    aget v6, v6, v5

    if-gez v6, :cond_10

    :cond_f
    iget-object v6, p0, Lcom/zui/launcher/CellLayout$k;->d:[I

    aput v3, v6, v5

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_11
    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    :goto_8
    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_14

    iget-object v5, p0, Lcom/zui/launcher/CellLayout$k;->d:[I

    aget v6, v5, v4

    if-lt v3, v6, :cond_12

    aget v5, v5, v4

    if-gez v5, :cond_13

    :cond_12
    iget-object v5, p0, Lcom/zui/launcher/CellLayout$k;->d:[I

    aput v3, v5, v4

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 5

    iget-boolean v0, p0, Lcom/zui/launcher/CellLayout$k;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k;->b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v4}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/launcher/CellLayout$ItemConfiguration;->c(Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k;->c:Landroid/graphics/Rect;

    return-object p0
.end method

.method d(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k;->b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/util/CellAndSpan;

    iget v0, p0, Lcom/zui/launcher/CellLayout$k;->h:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/CellLayout$k;->b(I)V

    iget v0, p0, Lcom/zui/launcher/CellLayout$k;->h:I

    not-int v1, p2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/CellLayout$k;->h:I

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    const/16 v1, 0x8

    if-eq p2, v1, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v1

    move v2, p2

    :goto_0
    iget v3, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v3, p2

    if-ge v2, v3, :cond_11

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->g:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    if-ne v3, v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    :goto_1
    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_11

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k;->g:[I

    array-length v2, v1

    if-ge p2, v2, :cond_4

    aget v1, v1, p2

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    if-ne v1, v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v1

    move v2, v1

    :goto_2
    iget v3, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_11

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->e:[I

    array-length v4, v3

    if-ge v2, v4, :cond_6

    aget v3, v3, v2

    if-ne v3, p2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    :goto_3
    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_11

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k;->e:[I

    array-length v2, v1

    if-ge p2, v2, :cond_8

    aget v1, v1, p2

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    if-ne v1, v2, :cond_8

    return v0

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p2

    if-eqz p2, :cond_b

    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v1

    move v2, p2

    :goto_4
    iget v3, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v3, p2

    if-ge v2, v3, :cond_11

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->f:[I

    array-length v4, v3

    if-ge v2, v4, :cond_a

    aget v3, v3, v2

    iget v4, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_a

    return v0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    :goto_5
    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_11

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k;->f:[I

    array-length v2, v1

    if-ge p2, v2, :cond_c

    aget v1, v1, p2

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v3, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_c

    return v0

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_d
    iget-object p2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p2

    if-eqz p2, :cond_f

    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v1

    move v2, v1

    :goto_6
    iget v3, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_11

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$k;->d:[I

    array-length v4, v3

    if-ge v2, v4, :cond_e

    aget v3, v3, v2

    iget v4, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v4, p2

    if-ne v3, v4, :cond_e

    return v0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    iget p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    :goto_7
    iget v1, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_11

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k;->d:[I

    array-length v2, v1

    if-ge p2, v2, :cond_10

    aget v1, v1, p2

    iget v2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v3, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_10

    return v0

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    const/4 p0, 0x0

    return p0
.end method

.method e()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCountH()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->f:[I

    aput v3, v2, v1

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->g:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountV()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k;->d:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$k;->e:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0xf

    iput v0, p0, Lcom/zui/launcher/CellLayout$k;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$k;->i:Z

    return-void
.end method

.method f(II)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/CellAndSpan;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_1
    iget v2, v1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    add-int/2addr v2, p2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget v2, v1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    add-int/2addr v2, p2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/zui/launcher/CellLayout$k;->k:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget v2, v1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    sub-int/2addr v2, p2

    :goto_2
    iput v2, v1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    goto :goto_0

    :cond_6
    :goto_3
    iget v2, v1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    sub-int/2addr v2, p2

    :goto_4
    iput v2, v1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout$k;->e()V

    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$k;->j:Lcom/zui/launcher/CellLayout$k$a;

    iput p1, v0, Lcom/zui/launcher/CellLayout$k$a;->a:I

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$k;->b:Lcom/zui/launcher/CellLayout$ItemConfiguration;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->c:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
