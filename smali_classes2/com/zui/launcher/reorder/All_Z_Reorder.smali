.class public Lcom/zui/launcher/reorder/All_Z_Reorder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/reorder/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)Z
    .locals 1

    const/4 p0, 0x0

    if-ltz p2, :cond_1

    aget-object v0, p1, p0

    array-length v0, v0

    if-ge p2, v0, :cond_1

    if-ltz p3, :cond_1

    aget-object p1, p1, p0

    aget-object p1, p1, p0

    array-length p1, p1

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private b([[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)Z
    .locals 1

    const/4 p0, 0x0

    if-ltz p2, :cond_1

    array-length v0, p1

    if-ge p2, v0, :cond_1

    if-ltz p3, :cond_1

    aget-object p1, p1, p0

    array-length p1, p1

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private c([[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/zui/launcher/reorder/Reorder$SwapItem;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;II)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/zui/launcher/reorder/All_Z_Reorder;->b([[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private d([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;III)Z
    .locals 1

    if-ltz p2, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/zui/launcher/reorder/All_Z_Reorder;->a([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private e([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;III)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[",
            "Lcom/zui/launcher/reorder/Reorder$SwapItem;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/reorder/Point3D;",
            ">;III)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/zui/launcher/reorder/All_Z_Reorder;->d([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;III)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private f([[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/zui/launcher/reorder/Reorder$SwapItem;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;II)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/reorder/All_Z_Reorder;->c([[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;II)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    aget-object p0, p1, p3

    aget-object p0, p0, p4

    iget-object v1, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->t:Lcom/zui/launcher/reorder/Reorder$Type;

    sget-object v2, Lcom/zui/launcher/reorder/Reorder$Type;->empty:Lcom/zui/launcher/reorder/Reorder$Type;

    if-ne v1, v2, :cond_1

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/zui/launcher/reorder/Reorder$Type;->chessman:Lcom/zui/launcher/reorder/Reorder$Type;

    if-ne v1, v2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    aget-object v3, v3, v1

    aget-object v2, p1, v2

    aput-object p0, v2, v1

    aget-object p0, p1, p3

    aput-object v3, p0, p4

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private g([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;III)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[",
            "Lcom/zui/launcher/reorder/Reorder$SwapItem;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/reorder/Point3D;",
            ">;III)Z"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/reorder/All_Z_Reorder;->e([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;III)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    aget-object p0, p1, p3

    aget-object p0, p0, p4

    aget-object p0, p0, p5

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->t:Lcom/zui/launcher/reorder/Reorder$Type;

    sget-object v2, Lcom/zui/launcher/reorder/Reorder$Type;->empty:Lcom/zui/launcher/reorder/Reorder$Type;

    if-ne v1, v2, :cond_2

    new-instance p0, Lcom/zui/launcher/reorder/Point3D;

    invoke-direct {p0, p3, p4, p5}, Lcom/zui/launcher/reorder/Point3D;-><init>(III)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/zui/launcher/reorder/Reorder$Type;->chessman:Lcom/zui/launcher/reorder/Reorder$Type;

    if-ne v1, v2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/reorder/Point3D;

    iget v2, v1, Lcom/zui/launcher/reorder/Point3D;->screen:I

    aget-object v3, p1, v2

    iget v4, v1, Landroid/graphics/Point;->x:I

    aget-object v3, v3, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    aget-object v3, v3, v1

    aget-object v2, p1, v2

    aget-object v2, v2, v4

    aput-object p0, v2, v1

    aget-object p0, p1, p3

    aget-object p0, p0, p4

    aput-object v3, p0, p5

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance p0, Lcom/zui/launcher/reorder/Point3D;

    invoke-direct {p0, p3, p4, p5}, Lcom/zui/launcher/reorder/Point3D;-><init>(III)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public reorder([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    aget-object v3, p1, v0

    array-length v3, v3

    move v4, v0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    move v6, v0

    :goto_1
    if-ge v6, v2, :cond_1

    invoke-direct {p0, p1, v1, v6, v4}, Lcom/zui/launcher/reorder/All_Z_Reorder;->f([[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;II)Z

    move-result v7

    or-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public reorderAll([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Z)Z
    .locals 16

    move-object/from16 v6, p1

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v6

    aget-object v0, v6, v7

    array-length v10, v0

    aget-object v0, v6, v7

    aget-object v0, v0, v7

    array-length v11, v0

    move v0, v7

    move v12, v0

    :goto_0
    if-ge v12, v9, :cond_4

    move v13, v7

    :goto_1
    if-ge v13, v11, :cond_2

    move v14, v0

    move v15, v7

    :goto_2
    if-ge v15, v10, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v12

    move v4, v15

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/reorder/All_Z_Reorder;->g([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;III)Z

    move-result v0

    or-int/2addr v14, v0

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v13, 0x1

    move v0, v14

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    invoke-interface {v8}, Ljava/util/List;->clear()V

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public reorderReverse([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    aget-object v3, p1, v0

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    add-int/lit8 v4, v2, -0x1

    :goto_1
    if-ltz v4, :cond_1

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/zui/launcher/reorder/All_Z_Reorder;->f([[Lcom/zui/launcher/reorder/Reorder$SwapItem;Ljava/util/List;II)Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method
