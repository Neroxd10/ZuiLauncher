.class Lcom/zui/launcher/model/GridSizeMigrationTask$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/GridSizeMigrationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/zui/launcher/util/GridOccupancy;

.field private final c:Z

.field private final d:I

.field e:F

.field f:F

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/zui/launcher/model/GridSizeMigrationTask;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/model/GridSizeMigrationTask;Lcom/zui/launcher/util/GridOccupancy;Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/GridOccupancy;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;I)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;-><init>(Lcom/zui/launcher/model/GridSizeMigrationTask;Lcom/zui/launcher/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/model/GridSizeMigrationTask;Lcom/zui/launcher/util/GridOccupancy;Ljava/util/ArrayList;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/GridOccupancy;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;IZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->h:Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->e:F

    iput p1, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->f:F

    iput-object p2, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    iput-object p3, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->c:Z

    iput p4, p0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->d:I

    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b(IFFLjava/util/ArrayList;)V

    return-void
.end method

.method public b(IFFLjava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->e:F

    cmpl-float v6, v2, v5

    if-gez v6, :cond_15

    cmpl-float v5, v2, v5

    if-nez v5, :cond_0

    iget v5, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->f:F

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v5, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    iput v2, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->e:F

    iput v3, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->f:F

    invoke-static/range {p4 .. p4}, Lcom/zui/launcher/model/GridSizeMigrationTask;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->g:Ljava/util/ArrayList;

    return-void

    :cond_1
    iget-object v5, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v6, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v7, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-gt v9, v10, :cond_a

    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-le v9, v10, :cond_2

    goto/16 :goto_3

    :cond_2
    iget v9, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->d:I

    const v12, 0x7fffffff

    move v13, v12

    move v14, v13

    :goto_0
    iget-object v15, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->h:Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-static {v15}, Lcom/zui/launcher/model/GridSizeMigrationTask;->b(Lcom/zui/launcher/model/GridSizeMigrationTask;)I

    move-result v15

    if-ge v9, v15, :cond_5

    const/4 v15, 0x0

    :goto_1
    iget-object v11, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->h:Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-static {v11}, Lcom/zui/launcher/model/GridSizeMigrationTask;->c(Lcom/zui/launcher/model/GridSizeMigrationTask;)I

    move-result v11

    if-ge v15, v11, :cond_4

    iget-object v11, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    iget-object v11, v11, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    aget-object v11, v11, v15

    aget-boolean v11, v11, v9

    if-nez v11, :cond_3

    if-lez v14, :cond_3

    move v13, v9

    move v12, v15

    const/4 v14, 0x0

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    iget-object v9, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->h:Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-static {v9}, Lcom/zui/launcher/model/GridSizeMigrationTask;->c(Lcom/zui/launcher/model/GridSizeMigrationTask;)I

    move-result v9

    if-ge v12, v9, :cond_8

    iget-object v9, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->h:Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-static {v9}, Lcom/zui/launcher/model/GridSizeMigrationTask;->b(Lcom/zui/launcher/model/GridSizeMigrationTask;)I

    move-result v9

    if-ge v13, v9, :cond_8

    if-eq v12, v6, :cond_6

    iput v12, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    :cond_6
    if-eq v13, v7, :cond_7

    iput v13, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    :cond_7
    iget-object v9, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v9, v5, v10}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    add-int/2addr v1, v10

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b(IFFLjava/util/ArrayList;)V

    iget-object v8, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    iput v6, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v7, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget-object v6, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_15

    iget-object v6, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v6, v6, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v5, v5, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_15

    iget-boolean v6, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->c:Z

    if-nez v6, :cond_15

    goto/16 :goto_9

    :cond_8
    add-int/2addr v1, v10

    :goto_2
    iget-object v6, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_9

    iget-object v6, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;

    iget v6, v6, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    iget-object v1, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto/16 :goto_8

    :cond_a
    :goto_3
    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v11, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v12, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->d:I

    :goto_4
    iget-object v13, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->h:Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-static {v13}, Lcom/zui/launcher/model/GridSizeMigrationTask;->b(Lcom/zui/launcher/model/GridSizeMigrationTask;)I

    move-result v13

    if-ge v12, v13, :cond_14

    const/4 v13, 0x0

    :goto_5
    iget-object v14, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->h:Lcom/zui/launcher/model/GridSizeMigrationTask;

    invoke-static {v14}, Lcom/zui/launcher/model/GridSizeMigrationTask;->c(Lcom/zui/launcher/model/GridSizeMigrationTask;)I

    move-result v14

    if-ge v13, v14, :cond_13

    const/high16 v14, 0x3f800000    # 1.0f

    if-eq v13, v6, :cond_b

    iput v13, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    add-float v15, v3, v14

    goto :goto_6

    :cond_b
    move v15, v3

    :goto_6
    if-eq v12, v7, :cond_c

    iput v12, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    add-float/2addr v15, v14

    :cond_c
    iget-boolean v14, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->c:Z

    if-eqz v14, :cond_d

    move v15, v3

    :cond_d
    iget-object v14, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v14, v13, v12, v9, v11}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v14

    if-eqz v14, :cond_e

    iget-object v14, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v14, v5, v10}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v0, v14, v2, v15, v8}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b(IFFLjava/util/ArrayList;)V

    iget-object v14, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    const/4 v10, 0x0

    invoke-virtual {v14, v5, v10}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    :cond_e
    iget v10, v5, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    if-le v9, v10, :cond_f

    iget-object v10, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    add-int/lit8 v14, v9, -0x1

    invoke-virtual {v10, v13, v12, v14, v11}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v10

    if-eqz v10, :cond_f

    iget v10, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    iput v10, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget-object v10, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v10, v5, v14}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    add-int/lit8 v10, v1, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v14, v15, v16

    invoke-virtual {v0, v10, v2, v14, v8}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b(IFFLjava/util/ArrayList;)V

    iget-object v10, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    const/4 v14, 0x0

    invoke-virtual {v10, v5, v14}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    iget v10, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v14, 0x1

    add-int/2addr v10, v14

    iput v10, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    :cond_f
    iget v10, v5, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    if-le v11, v10, :cond_10

    iget-object v10, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v10, v13, v12, v9, v14}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v10

    if-eqz v10, :cond_10

    iget v10, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    iput v10, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v10, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v10, v5, v14}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    add-int/lit8 v10, v1, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v14, v15, v16

    invoke-virtual {v0, v10, v2, v14, v8}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b(IFFLjava/util/ArrayList;)V

    iget-object v10, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    const/4 v14, 0x0

    invoke-virtual {v10, v5, v14}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    iget v10, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    const/4 v14, 0x1

    add-int/2addr v10, v14

    iput v10, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    :cond_10
    iget v10, v5, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    if-le v11, v10, :cond_11

    iget v10, v5, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    if-le v9, v10, :cond_11

    iget-object v10, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    add-int/lit8 v14, v9, -0x1

    move/from16 v16, v9

    add-int/lit8 v9, v11, -0x1

    invoke-virtual {v10, v13, v12, v14, v9}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v9

    if-eqz v9, :cond_12

    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iput v9, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    sub-int/2addr v9, v10

    iput v9, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v9, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v9, v5, v10}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    add-int/lit8 v9, v1, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    add-float/2addr v15, v14

    invoke-virtual {v0, v9, v2, v15, v8}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b(IFFLjava/util/ArrayList;)V

    iget-object v9, v0, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b:Lcom/zui/launcher/util/GridOccupancy;

    const/4 v14, 0x0

    invoke-virtual {v9, v5, v14}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr v9, v10

    iput v9, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr v9, v10

    iput v9, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    goto :goto_7

    :cond_11
    move/from16 v16, v9

    :cond_12
    const/4 v14, 0x0

    :goto_7
    iput v6, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v7, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v16

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_13
    move/from16 v16, v9

    const/4 v14, 0x0

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto/16 :goto_4

    :cond_14
    move v9, v10

    add-int/2addr v1, v9

    :goto_8
    iget v5, v5, Lcom/zui/launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    :goto_9
    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/launcher/model/GridSizeMigrationTask$a;->b(IFFLjava/util/ArrayList;)V

    :cond_15
    :goto_a
    return-void
.end method
