.class public Lcom/zui/launcher/ReorderActor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/ReorderActor$b;,
        Lcom/zui/launcher/ReorderActor$c;,
        Lcom/zui/launcher/ReorderActor$d;,
        Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ReorderActor"

.field private static final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ReorderActor$d;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Z


# instance fields
.field private a:Lcom/zui/launcher/PagedView;

.field private b:[[Landroid/graphics/Point;

.field private c:Lcom/zui/launcher/ReorderActor$b;

.field private d:Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;

.field private e:Lcom/zui/launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/launcher/ReorderActor;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zui/launcher/ReorderActor;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/PagedView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/ReorderActor$b;->EMPTY:Lcom/zui/launcher/ReorderActor$b;

    iput-object v0, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    iput-object p1, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/zui/launcher/ReorderActor;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/zui/launcher/ReorderActor;)Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ReorderActor;->d:Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;

    return-object p0
.end method

.method private c([[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/ReorderActor;->d([[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    aget-object p0, p1, p2

    aget-object p0, p0, p3

    iget-object p0, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    if-nez p0, :cond_1

    return v0

    :cond_1
    aget-object p0, p1, p2

    aget-object p0, p0, p3

    iget-object p0, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/zui/launcher/ItemInfo;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private d([[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

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

.method private e()Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/zui/launcher/ReorderActor;->f(I)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private f(I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/zui/launcher/CellLayout;

    return p0
.end method

.method private g(II)Z
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    array-length v1, p0

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    aget-object v1, p0, v0

    array-length v1, v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    aget-object p0, p0, p2

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private h(Landroid/view/View;II)Z
    .locals 2

    instance-of p0, p1, Lcom/zui/launcher/qsb/QsbContainerView;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/ItemInfo;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ltz v1, :cond_3

    if-ge v1, p2, :cond_3

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ltz p1, :cond_3

    if-lt p1, p3, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return p0
.end method

.method private i(Lcom/zui/launcher/ReorderActor$c;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ReorderActor$c;->run()V

    :cond_0
    return-void
.end method

.method private j(II)[[[Lcom/zui/launcher/reorder/Reorder$SwapItem;
    .locals 27

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p2

    new-instance v14, Lcom/zui/launcher/reorder/Reorder$SwapItem;

    invoke-direct {v14}, Lcom/zui/launcher/reorder/Reorder$SwapItem;-><init>()V

    new-instance v15, Lcom/zui/launcher/reorder/Reorder$SwapItem;

    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->stone:Lcom/zui/launcher/reorder/Reorder$Type;

    invoke-direct {v15, v0}, Lcom/zui/launcher/reorder/Reorder$SwapItem;-><init>(Lcom/zui/launcher/reorder/Reorder$Type;)V

    iget-object v0, v11, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x2

    aput v13, v0, v1

    const/16 v16, 0x1

    aput v12, v0, v16

    const/16 v17, 0x0

    aput v10, v0, v17

    const-class v1, Lcom/zui/launcher/reorder/Reorder$SwapItem;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [[[Lcom/zui/launcher/reorder/Reorder$SwapItem;

    iget-object v0, v11, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNoOrderScreens()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v19, v17

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v19, v16

    :goto_1
    move/from16 v8, v17

    :goto_2
    if-ge v8, v10, :cond_7

    iget-object v0, v11, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/zui/launcher/CellLayout;

    if-nez v19, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v21, v17

    goto :goto_4

    :cond_3
    :goto_3
    move/from16 v21, v16

    :goto_4
    move/from16 v7, v17

    :goto_5
    if-ge v7, v13, :cond_6

    move/from16 v6, v17

    :goto_6
    if-ge v6, v12, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    move-object v3, v14

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v22, v6

    move v6, v8

    move/from16 v23, v7

    move/from16 v7, v22

    move/from16 v24, v8

    move/from16 v8, v23

    move-object/from16 v25, v9

    move-object/from16 v9, v18

    move/from16 v26, v10

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/ReorderActor;->k(ZLcom/zui/launcher/CellLayout;Lcom/zui/launcher/reorder/Reorder$SwapItem;IIIII[[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/reorder/Reorder$SwapItem;)V

    aget-object v0, v18, v24

    aget-object v0, v0, v22

    aget-object v0, v0, v23

    if-nez v0, :cond_4

    aget-object v0, v18, v24

    aget-object v0, v0, v22

    aput-object v14, v0, v23

    :cond_4
    add-int/lit8 v6, v22, 0x1

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v10, v26

    goto :goto_6

    :cond_5
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v10

    add-int/lit8 v7, v23, 0x1

    goto :goto_5

    :cond_6
    move/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v10

    add-int/lit8 v8, v24, 0x1

    goto :goto_2

    :cond_7
    return-object v18
.end method

.method private k(ZLcom/zui/launcher/CellLayout;Lcom/zui/launcher/reorder/Reorder$SwapItem;IIIII[[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/reorder/Reorder$SwapItem;)V
    .locals 10

    move/from16 v6, p7

    move/from16 v7, p8

    if-nez p1, :cond_0

    aget-object v0, p9, p6

    aget-object v0, v0, v6

    aput-object p10, v0, v7

    return-void

    :cond_0
    move-object v0, p2

    invoke-virtual {p2, v6, v7}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    aget-object v0, p9, p6

    aget-object v0, v0, v6

    aput-object p3, v0, v7

    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    instance-of v0, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez v0, :cond_8

    instance-of v0, v1, Lcom/zui/launcher/FolderInfo;

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    instance-of v0, v2, Lcom/zui/launcher/qsb/QsbContainerView;

    if-eqz v0, :cond_5

    move-object v0, p0

    iget-object v0, v0, Lcom/zui/launcher/ReorderActor;->e:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, p9, p6

    aget-object v4, v4, v3

    aput-object p10, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    move-object v0, p0

    instance-of v3, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v3, :cond_7

    instance-of v3, v1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_2
    move-object v0, p0

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/zui/launcher/ReorderActor;->m(Lcom/zui/launcher/ItemInfo;Landroid/view/View;IIIII[[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/reorder/Reorder$SwapItem;)V

    return-void

    :cond_8
    :goto_3
    aget-object v0, p9, p6

    aget-object v0, v0, v6

    new-instance v1, Lcom/zui/launcher/reorder/Reorder$SwapItem;

    sget-object v3, Lcom/zui/launcher/reorder/Reorder$Type;->chessman:Lcom/zui/launcher/reorder/Reorder$Type;

    invoke-direct {v1, v3, v2}, Lcom/zui/launcher/reorder/Reorder$SwapItem;-><init>(Lcom/zui/launcher/reorder/Reorder$Type;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    return-void
.end method

.method private l(Lcom/zui/launcher/CellLayout;IIII[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/reorder/Reorder$SwapItem;)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p4, p5}, Lcom/zui/launcher/ReorderActor;->h(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p1, v2, Lcom/zui/launcher/qsb/QsbContainerView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/ReorderActor;->e:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 p3, 0x1

    if-ge p2, p3, :cond_2

    move p3, p1

    :goto_1
    if-ge p3, p0, :cond_1

    aget-object p4, p6, p3

    aput-object p7, p4, p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    instance-of p1, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez p1, :cond_4

    instance-of p1, v1, Lcom/zui/launcher/FolderInfo;

    if-eqz p1, :cond_5

    :cond_4
    iget p1, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    aget-object p1, p6, p1

    iget p2, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    new-instance p3, Lcom/zui/launcher/reorder/Reorder$SwapItem;

    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->chessman:Lcom/zui/launcher/reorder/Reorder$Type;

    invoke-direct {p3, v0, v2}, Lcom/zui/launcher/reorder/Reorder$SwapItem;-><init>(Lcom/zui/launcher/reorder/Reorder$Type;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    :cond_5
    instance-of p1, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez p1, :cond_6

    instance-of p1, v1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz p1, :cond_7

    :cond_6
    move-object v0, p0

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/ReorderActor;->n(Lcom/zui/launcher/ItemInfo;Landroid/view/View;II[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/reorder/Reorder$SwapItem;)V

    :cond_7
    return-void
.end method

.method private m(Lcom/zui/launcher/ItemInfo;Landroid/view/View;IIIII[[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/reorder/Reorder$SwapItem;)V
    .locals 0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-ne p0, p2, :cond_0

    aget-object p0, p8, p5

    aget-object p0, p0, p6

    aput-object p9, p0, p7

    return-void

    :cond_0
    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr p0, p2

    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr p2, p1

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ge p7, p1, :cond_2

    move p2, p6

    :goto_1
    if-ge p2, p0, :cond_1

    aget-object p3, p8, p5

    aget-object p3, p3, p2

    aput-object p9, p3, p7

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private n(Lcom/zui/launcher/ItemInfo;Landroid/view/View;II[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/reorder/Reorder$SwapItem;)V
    .locals 1

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-ne p0, p2, :cond_0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    aget-object p0, p5, p0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    aput-object p6, p0, p1

    goto :goto_2

    :cond_0
    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr p0, p2

    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget p3, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr p2, p3

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget p3, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    :goto_0
    if-ge p3, p2, :cond_2

    iget p4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_1
    if-ge p4, p0, :cond_1

    aget-object v0, p5, p4

    aput-object p6, v0, p3

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private o(III)[[Lcom/zui/launcher/reorder/Reorder$SwapItem;
    .locals 17

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    iget-object v0, v8, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/zui/launcher/CellLayout;

    new-instance v12, Lcom/zui/launcher/reorder/Reorder$SwapItem;

    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->stone:Lcom/zui/launcher/reorder/Reorder$Type;

    invoke-direct {v12, v0}, Lcom/zui/launcher/reorder/Reorder$SwapItem;-><init>(Lcom/zui/launcher/reorder/Reorder$Type;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v10, v0, v1

    const/4 v13, 0x0

    aput v9, v0, v13

    const-class v1, Lcom/zui/launcher/reorder/Reorder$SwapItem;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [[Lcom/zui/launcher/reorder/Reorder$SwapItem;

    invoke-direct {v8, v14, v9, v10}, Lcom/zui/launcher/ReorderActor;->p([[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)V

    move v15, v13

    :goto_0
    if-ge v15, v10, :cond_1

    move v7, v13

    :goto_1
    if-ge v7, v9, :cond_0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v7

    move v3, v15

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v14

    move/from16 v16, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/ReorderActor;->l(Lcom/zui/launcher/CellLayout;IIII[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/reorder/Reorder$SwapItem;)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    return-object v14
.end method

.method private p([[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)V
    .locals 4

    new-instance p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;

    invoke-direct {p0}, Lcom/zui/launcher/reorder/Reorder$SwapItem;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_0

    aget-object v3, p1, v2

    aput-object p0, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/ReorderActor;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReorderActor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private q([[Lcom/zui/launcher/reorder/Reorder$SwapItem;IILcom/zui/launcher/ReorderActor$c;IF)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/ReorderActor;->c([[Lcom/zui/launcher/reorder/Reorder$SwapItem;II)Z

    move-result p6

    if-nez p6, :cond_0

    invoke-direct {p0, p4}, Lcom/zui/launcher/ReorderActor;->i(Lcom/zui/launcher/ReorderActor$c;)V

    return-void

    :cond_0
    aget-object p1, p1, p2

    aget-object p1, p1, p3

    iget-object p1, p1, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    if-eqz p1, :cond_4

    iget p6, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne p6, p2, :cond_1

    iget p6, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-eq p6, p3, :cond_4

    :cond_1
    iget-object p6, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p6, v0}, Lcom/zui/launcher/PagedView;->getPageIndexForScreenId(I)I

    move-result v2

    const/4 p6, -0x1

    if-ne v2, p6, :cond_2

    invoke-direct {p0, p4}, Lcom/zui/launcher/ReorderActor;->i(Lcom/zui/launcher/ReorderActor$c;)V

    return-void

    :cond_2
    iget-object p6, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {p6}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p6

    if-ne v2, p6, :cond_3

    iget-object p6, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    aget-object p6, p6, p2

    new-instance v0, Landroid/graphics/Point;

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-direct {v0, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, p6, p3

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    const/16 v6, 0xe6

    const/4 v8, 0x1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/PagedView;->animateChildToPosition(Landroid/view/View;IIILjava/lang/Runnable;IIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p4}, Lcom/zui/launcher/ReorderActor;->i(Lcom/zui/launcher/ReorderActor$c;)V

    return-void
.end method

.method private r(III[[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/ReorderActor$d;Lcom/zui/launcher/ReorderActor$c;[I)V
    .locals 10

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    aget-object v1, p4, v2

    aget-object v1, v1, v3

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p5}, Lcom/zui/launcher/ReorderActor$d;->a()V

    return-void

    :cond_0
    aget-object v1, p4, v2

    aget-object v1, v1, v3

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/zui/launcher/ItemInfo;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/ItemInfo;

    if-eqz v5, :cond_3

    iget v6, v5, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget-object v7, v0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v7, p1}, Lcom/zui/launcher/PagedView;->getScreenIdForPageIndex(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne v6, v3, :cond_2

    iget v5, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-eq v5, v4, :cond_3

    :cond_2
    iget-object v0, v0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    const/16 v6, 0xe6

    const/4 v9, 0x0

    aget v7, p7, v9

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/PagedView;->animateChildToPosition(Landroid/view/View;IIILjava/lang/Runnable;IIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    aget v0, p7, v9

    const/4 v1, 0x1

    aget v2, p7, v1

    add-int/2addr v0, v2

    aput v0, p7, v9

    aget v0, p7, v1

    int-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v0, v2

    aput v0, p7, v1

    return-void

    :cond_3
    invoke-virtual {p5}, Lcom/zui/launcher/ReorderActor$d;->a()V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p5}, Lcom/zui/launcher/ReorderActor$d;->a()V

    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ReorderActor;->reorderItemsManualPositive(I)V

    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ReorderActor;->reorderItemsManualReverse(I)V

    return-void
.end method

.method private u(IILcom/zui/launcher/ReorderActor$c;IF)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/ReorderActor;->g(II)Z

    move-result p5

    if-nez p5, :cond_0

    invoke-direct {p0, p3}, Lcom/zui/launcher/ReorderActor;->i(Lcom/zui/launcher/ReorderActor$c;)V

    return-void

    :cond_0
    iget-object p5, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    aget-object p5, p5, p1

    aget-object p5, p5, p2

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v3

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v4, p5, Landroid/graphics/Point;->x:I

    if-ne v1, v4, :cond_2

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v1, p5, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    iget v4, p5, Landroid/graphics/Point;->x:I

    aget-object v1, v0, v4

    iget v5, p5, Landroid/graphics/Point;->y:I

    aget-object p5, v1, v5

    if-nez p5, :cond_3

    aget-object p1, v0, p1

    const/4 p5, 0x0

    aput-object p5, p1, p2

    iget-object v1, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    const/16 v7, 0xe6

    const/4 v9, 0x1

    move-object v6, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/zui/launcher/PagedView;->animateChildToPosition(Landroid/view/View;IIILjava/lang/Runnable;IIZ)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p3}, Lcom/zui/launcher/ReorderActor;->i(Lcom/zui/launcher/ReorderActor$c;)V

    return-void

    :cond_4
    :goto_0
    invoke-direct {p0, p3}, Lcom/zui/launcher/ReorderActor;->i(Lcom/zui/launcher/ReorderActor$c;)V

    return-void
.end method

.method private v()V
    .locals 14

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    sget-object v1, Lcom/zui/launcher/ReorderActor$b;->EMPTY:Lcom/zui/launcher/ReorderActor$b;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->e:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x1

    const-string v3, "reorder"

    invoke-virtual {v0, v1, v3}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    array-length v3, v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    array-length v0, v0

    mul-int v5, v3, v0

    new-instance v6, Lcom/zui/launcher/ReorderActor$d;

    invoke-direct {v6, p0, v5}, Lcom/zui/launcher/ReorderActor$d;-><init>(Lcom/zui/launcher/ReorderActor;I)V

    new-instance v5, Lcom/zui/launcher/ReorderActor$c;

    invoke-direct {v5, v6}, Lcom/zui/launcher/ReorderActor$c;-><init>(Lcom/zui/launcher/ReorderActor$d;)V

    sget-object v7, Lcom/zui/launcher/ReorderActor;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/high16 v13, 0x41f00000    # 30.0f

    iget-object v7, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    sget-object v8, Lcom/zui/launcher/ReorderActor$b;->POSITIVE:Lcom/zui/launcher/ReorderActor$b;

    if-ne v7, v8, :cond_2

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    add-int/lit8 v4, v3, -0x1

    :goto_1
    if-ltz v4, :cond_1

    move-object v7, p0

    move v8, v4

    move v9, v0

    move-object v10, v5

    move v11, v6

    move v12, v13

    invoke-direct/range {v7 .. v12}, Lcom/zui/launcher/ReorderActor;->u(IILcom/zui/launcher/ReorderActor$c;IF)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_2
    if-ge v1, v0, :cond_4

    move v6, v4

    :goto_3
    if-ge v6, v3, :cond_3

    const/4 v11, 0x0

    const/high16 v12, 0x41f00000    # 30.0f

    move-object v7, p0

    move v8, v6

    move v9, v1

    move-object v10, v5

    invoke-direct/range {v7 .. v12}, Lcom/zui/launcher/ReorderActor;->u(IILcom/zui/launcher/ReorderActor$c;IF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    iput-object v2, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    sget-object v0, Lcom/zui/launcher/ReorderActor$b;->EMPTY:Lcom/zui/launcher/ReorderActor$b;

    iput-object v0, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    return-void
.end method


# virtual methods
.method public cleanReorderManual()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    sget-object v0, Lcom/zui/launcher/ReorderActor$b;->EMPTY:Lcom/zui/launcher/ReorderActor$b;

    iput-object v0, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    return-void
.end method

.method public isLeosReordering()Z
    .locals 0

    sget-object p0, Lcom/zui/launcher/ReorderActor;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reorderItemAllScreen()V
    .locals 20

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/ReorderActor;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    iget-object v0, v8, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v8, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/Launcher;

    const/4 v2, 0x1

    const-string v3, "reorder"

    invoke-virtual {v1, v2, v3}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v11

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v12

    mul-int v0, v9, v12

    mul-int/2addr v0, v11

    new-instance v13, Lcom/zui/launcher/ReorderActor$d;

    invoke-direct {v13, v8, v0}, Lcom/zui/launcher/ReorderActor$d;-><init>(Lcom/zui/launcher/ReorderActor;I)V

    new-instance v14, Lcom/zui/launcher/ReorderActor$c;

    invoke-direct {v14, v13}, Lcom/zui/launcher/ReorderActor$c;-><init>(Lcom/zui/launcher/ReorderActor$d;)V

    sget-object v0, Lcom/zui/launcher/ReorderActor;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v8, v11, v12}, Lcom/zui/launcher/ReorderActor;->j(II)[[[Lcom/zui/launcher/reorder/Reorder$SwapItem;

    move-result-object v15

    new-instance v0, Lcom/zui/launcher/reorder/Reorder;

    invoke-direct {v0}, Lcom/zui/launcher/reorder/Reorder;-><init>()V

    new-instance v1, Lcom/zui/launcher/reorder/All_Z_Reorder;

    invoke-direct {v1}, Lcom/zui/launcher/reorder/All_Z_Reorder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/reorder/Reorder;->setReorderAlgorithm(Lcom/zui/launcher/reorder/a;)V

    invoke-virtual {v0, v15}, Lcom/zui/launcher/reorder/Reorder;->reorderAll([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v13}, Lcom/zui/launcher/ReorderActor$d;->b()V

    return-void

    :cond_2
    move v7, v10

    :goto_0
    if-ge v7, v9, :cond_5

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move v5, v10

    :goto_1
    if-ge v5, v12, :cond_4

    move v4, v10

    :goto_2
    if-ge v4, v11, :cond_3

    move-object/from16 v0, p0

    move v1, v7

    move v2, v4

    move v3, v5

    move/from16 v16, v4

    move-object v4, v15

    move/from16 v17, v5

    move-object v5, v13

    move-object/from16 v18, v6

    move-object v6, v14

    move/from16 v19, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/ReorderActor;->r(III[[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Lcom/zui/launcher/ReorderActor$d;Lcom/zui/launcher/ReorderActor$c;[I)V

    add-int/lit8 v4, v16, 0x1

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    goto :goto_2

    :cond_3
    move/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    add-int/lit8 v5, v17, 0x1

    goto :goto_1

    :cond_4
    move/from16 v19, v7

    add-int/lit8 v7, v19, 0x1

    goto :goto_0

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x1e
    .end array-data
.end method

.method public reorderItemsManualDown()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------->reorder--down------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/ReorderActor$a;->a:[I

    iget-object v1, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/ReorderActor;->v()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/ReorderActor;->t()V

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor;->cleanReorderManual()V

    return-void
.end method

.method public reorderItemsManualPositive(I)V
    .locals 17

    move-object/from16 v7, p0

    move/from16 v0, p1

    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/ReorderActor;->f(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v7, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v8

    :goto_0
    iget-object v3, v7, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v4, v7, Lcom/zui/launcher/ReorderActor;->e:Lcom/zui/launcher/Launcher;

    const-string v5, "reorder"

    invoke-virtual {v4, v2, v5}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v9

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v10

    mul-int v3, v10, v9

    new-instance v4, Lcom/zui/launcher/ReorderActor$d;

    invoke-direct {v4, v7, v3}, Lcom/zui/launcher/ReorderActor$d;-><init>(Lcom/zui/launcher/ReorderActor;I)V

    new-instance v11, Lcom/zui/launcher/ReorderActor$c;

    invoke-direct {v11, v4}, Lcom/zui/launcher/ReorderActor$c;-><init>(Lcom/zui/launcher/ReorderActor$d;)V

    sget-object v3, Lcom/zui/launcher/ReorderActor;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v7, v0, v9, v10}, Lcom/zui/launcher/ReorderActor;->o(III)[[Lcom/zui/launcher/reorder/Reorder$SwapItem;

    move-result-object v12

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v10, v0, v2

    aput v9, v0, v8

    const-class v2, Landroid/graphics/Point;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Point;

    iput-object v0, v7, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    sget-object v0, Lcom/zui/launcher/ReorderActor$b;->POSITIVE:Lcom/zui/launcher/ReorderActor$b;

    iput-object v0, v7, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    :cond_3
    new-instance v0, Lcom/zui/launcher/reorder/Reorder;

    invoke-direct {v0}, Lcom/zui/launcher/reorder/Reorder;-><init>()V

    new-instance v2, Lcom/zui/launcher/reorder/All_Z_Reorder;

    invoke-direct {v2}, Lcom/zui/launcher/reorder/All_Z_Reorder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/reorder/Reorder;->setReorderAlgorithm(Lcom/zui/launcher/reorder/a;)V

    invoke-virtual {v0, v12}, Lcom/zui/launcher/reorder/Reorder;->reorder([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    sget-object v0, Lcom/zui/launcher/ReorderActor$b;->EMPTY:Lcom/zui/launcher/ReorderActor$b;

    iput-object v0, v7, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    :cond_4
    invoke-virtual {v4}, Lcom/zui/launcher/ReorderActor$d;->b()V

    return-void

    :cond_5
    const/4 v13, 0x0

    const/high16 v14, 0x41f00000    # 30.0f

    move v15, v8

    :goto_1
    if-ge v15, v10, :cond_7

    move v6, v8

    :goto_2
    if-ge v6, v9, :cond_6

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v6

    move v3, v15

    move-object v4, v11

    move v5, v13

    move/from16 v16, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/ReorderActor;->q([[Lcom/zui/launcher/reorder/Reorder$SwapItem;IILcom/zui/launcher/ReorderActor$c;IF)V

    add-int/lit8 v6, v16, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public reorderItemsManualReverse(I)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/zui/launcher/ReorderActor;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/ReorderActor;->a:Lcom/zui/launcher/PagedView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/zui/launcher/ReorderActor;->e:Lcom/zui/launcher/Launcher;

    const-string v5, "reorder"

    invoke-virtual {v4, v2, v5}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v3

    mul-int v5, v3, v4

    new-instance v6, Lcom/zui/launcher/ReorderActor$d;

    invoke-direct {v6, p0, v5}, Lcom/zui/launcher/ReorderActor$d;-><init>(Lcom/zui/launcher/ReorderActor;I)V

    new-instance v5, Lcom/zui/launcher/ReorderActor$c;

    invoke-direct {v5, v6}, Lcom/zui/launcher/ReorderActor$c;-><init>(Lcom/zui/launcher/ReorderActor$d;)V

    sget-object v7, Lcom/zui/launcher/ReorderActor;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v4, v3}, Lcom/zui/launcher/ReorderActor;->o(III)[[Lcom/zui/launcher/reorder/Reorder$SwapItem;

    move-result-object p1

    if-eqz v0, :cond_3

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v3, v7, v2

    aput v4, v7, v1

    const-class v1, Landroid/graphics/Point;

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Point;

    iput-object v1, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    sget-object v1, Lcom/zui/launcher/ReorderActor$b;->REVERSE:Lcom/zui/launcher/ReorderActor$b;

    iput-object v1, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    :cond_3
    new-instance v1, Lcom/zui/launcher/reorder/Reorder;

    invoke-direct {v1}, Lcom/zui/launcher/reorder/Reorder;-><init>()V

    new-instance v7, Lcom/zui/launcher/reorder/All_Z_Reorder;

    invoke-direct {v7}, Lcom/zui/launcher/reorder/All_Z_Reorder;-><init>()V

    invoke-virtual {v1, v7}, Lcom/zui/launcher/reorder/Reorder;->setReorderAlgorithm(Lcom/zui/launcher/reorder/a;)V

    invoke-virtual {v1, p1}, Lcom/zui/launcher/reorder/Reorder;->reorderReverse([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/ReorderActor;->b:[[Landroid/graphics/Point;

    sget-object p1, Lcom/zui/launcher/ReorderActor$b;->EMPTY:Lcom/zui/launcher/ReorderActor$b;

    iput-object p1, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    :cond_4
    invoke-virtual {v6}, Lcom/zui/launcher/ReorderActor$d;->b()V

    return-void

    :cond_5
    const/4 v0, 0x0

    const/high16 v1, 0x41f00000    # 30.0f

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_7

    add-int/lit8 v6, v4, -0x1

    :goto_2
    if-ltz v6, :cond_6

    move-object v7, p0

    move-object v8, p1

    move v9, v6

    move v10, v3

    move-object v11, v5

    move v12, v0

    move v13, v1

    invoke-direct/range {v7 .. v13}, Lcom/zui/launcher/ReorderActor;->q([[Lcom/zui/launcher/reorder/Reorder$SwapItem;IILcom/zui/launcher/ReorderActor$c;IF)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public reorderItemsManualUp()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------->reorderItemsManualPositive------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/ReorderActor$a;->a:[I

    iget-object v1, p0, Lcom/zui/launcher/ReorderActor;->c:Lcom/zui/launcher/ReorderActor$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/ReorderActor;->v()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/ReorderActor;->s()V

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor;->cleanReorderManual()V

    return-void
.end method

.method public setLauncher(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ReorderActor;->e:Lcom/zui/launcher/Launcher;

    return-void
.end method

.method public setReorderingChangedListener(Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ReorderActor;->d:Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;

    return-void
.end method
