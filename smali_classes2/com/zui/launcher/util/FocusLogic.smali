.class public Lcom/zui/launcher/util/FocusLogic;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/FocusLogic$ContainerType;
    }
.end annotation


# static fields
.field public static final ALL_APPS_COLUMN:I = -0xb

.field public static final CURRENT_PAGE_FIRST_ITEM:I = -0x6

.field public static final CURRENT_PAGE_LAST_ITEM:I = -0x7

.field public static final EMPTY:I = -0x1

.field public static final NEXT_PAGE_FIRST_ITEM:I = -0x8

.field public static final NEXT_PAGE_LEFT_COLUMN:I = -0x9

.field public static final NEXT_PAGE_RIGHT_COLUMN:I = -0xa

.field public static final NOOP:I = -0x1

.field public static final PIVOT:I = 0x64

.field public static final PREVIOUS_OVERLAY_SCREEN:I = -0x65

.field public static final PREVIOUS_PAGE_FIRST_ITEM:I = -0x3

.field public static final PREVIOUS_PAGE_LAST_ITEM:I = -0x4

.field public static final PREVIOUS_PAGE_LEFT_COLUMN:I = -0x5

.field public static final PREVIOUS_PAGE_RIGHT_COLUMN:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)[[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p0, v0, p1

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    :goto_0
    if-ge p1, p0, :cond_0

    aget-object v1, v0, p1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(III[[IIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-eqz v3, :cond_1c

    const/4 v5, -0x1

    move v8, v5

    move v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_1

    aget-object v11, v3, v7

    aget v11, v11, v10

    if-ne v11, v0, :cond_0

    move v8, v7

    move v9, v10

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v10, Lcom/zui/launcher/util/FocusLogic$ContainerType;->FOLDER:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    const/4 v11, 0x1

    move-object/from16 v12, p6

    if-eq v12, v10, :cond_3

    invoke-static {v7}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v11

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    const/16 v10, -0xb

    if-eqz v7, :cond_d

    add-int v7, v9, v4

    move v12, v5

    :goto_3
    if-ltz v7, :cond_5

    if-ge v7, v2, :cond_5

    invoke-static {v8, v7, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v12

    if-eq v12, v5, :cond_4

    if-eq v12, v10, :cond_4

    return v12

    :cond_4
    add-int/2addr v7, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v1, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-lt v7, v11, :cond_17

    mul-int v15, v7, v4

    sub-int v6, v8, v15

    add-int v11, v8, v15

    add-int/2addr v15, v9

    invoke-static {v6, v15, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v5

    if-ne v5, v10, :cond_6

    const/4 v13, 0x1

    :cond_6
    invoke-static {v11, v15, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v5

    if-ne v5, v10, :cond_7

    const/4 v14, 0x1

    :cond_7
    :goto_5
    if-ltz v15, :cond_c

    if-ge v15, v2, :cond_c

    if-eqz v13, :cond_8

    add-int/lit8 v5, v2, -0x1

    if-ge v15, v5, :cond_8

    move v5, v4

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    add-int/2addr v5, v6

    invoke-static {v5, v15, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_9

    return v5

    :cond_9
    if-eqz v14, :cond_a

    add-int/lit8 v5, v2, -0x1

    if-ge v15, v5, :cond_a

    neg-int v5, v4

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    add-int/2addr v5, v11

    invoke-static {v5, v15, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v12

    const/4 v5, -0x1

    if-eq v12, v5, :cond_b

    return v12

    :cond_b
    add-int/2addr v15, v4

    goto :goto_5

    :cond_c
    add-int/lit8 v7, v7, -0x1

    const/4 v5, -0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_d
    add-int v5, v8, v4

    const/4 v6, -0x1

    :goto_8
    if-ltz v5, :cond_f

    if-ge v5, v1, :cond_f

    invoke-static {v5, v9, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    if-eq v6, v10, :cond_e

    return v6

    :cond_e
    add-int/2addr v5, v4

    goto :goto_8

    :cond_f
    move v12, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_9
    if-ge v5, v2, :cond_17

    mul-int v11, v5, v4

    add-int v13, v9, v11

    sub-int v14, v9, v11

    add-int/2addr v11, v8

    invoke-static {v11, v13, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v15

    if-ne v15, v10, :cond_10

    const/4 v6, 0x1

    :cond_10
    invoke-static {v11, v14, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v15

    if-ne v15, v10, :cond_11

    const/4 v7, 0x1

    :cond_11
    :goto_a
    if-ltz v11, :cond_16

    if-ge v11, v1, :cond_16

    if-eqz v6, :cond_12

    add-int/lit8 v12, v1, -0x1

    if-ge v11, v12, :cond_12

    move v12, v4

    goto :goto_b

    :cond_12
    const/4 v12, 0x0

    :goto_b
    add-int/2addr v12, v13

    invoke-static {v11, v12, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_13

    return v12

    :cond_13
    if-eqz v7, :cond_14

    add-int/lit8 v12, v1, -0x1

    if-ge v11, v12, :cond_14

    neg-int v12, v4

    goto :goto_c

    :cond_14
    const/4 v12, 0x0

    :goto_c
    add-int/2addr v12, v14

    invoke-static {v11, v12, v1, v2, v3}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_15

    return v12

    :cond_15
    add-int/2addr v11, v4

    goto :goto_a

    :cond_16
    const/4 v15, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_17
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1b

    const/4 v0, -0x4

    const/4 v1, -0x8

    if-eqz p5, :cond_19

    if-gez v4, :cond_18

    move v0, v1

    :cond_18
    return v0

    :cond_19
    if-gez v4, :cond_1a

    goto :goto_d

    :cond_1a
    move v0, v1

    :goto_d
    return v0

    :cond_1b
    return v12

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dpad navigation requires a matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(III[[IILcom/zui/launcher/util/FocusLogic$ContainerType;)I
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    if-eqz v2, :cond_18

    const/4 v4, -0x1

    move v7, v4

    move v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v1, :cond_1

    aget-object v10, v2, v6

    aget v10, v10, v9

    move/from16 v11, p0

    if-ne v10, v11, :cond_0

    move v8, v6

    move v7, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move/from16 v11, p0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v9, Lcom/zui/launcher/util/FocusLogic$ContainerType;->WORKSPACE:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    move-object/from16 v11, p5

    if-ne v11, v9, :cond_3

    invoke-static {v6}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/16 v9, -0xb

    if-eqz v6, :cond_d

    sub-int v6, v8, v3

    move v11, v4

    :goto_3
    if-ltz v6, :cond_5

    if-ge v6, v0, :cond_5

    if-ltz v6, :cond_5

    invoke-static {v6, v7, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v11

    if-eq v11, v4, :cond_4

    if-eq v11, v9, :cond_4

    return v11

    :cond_4
    sub-int/2addr v6, v3

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v6, v1, :cond_17

    mul-int v14, v6, v3

    add-int v15, v7, v14

    sub-int v5, v7, v14

    sub-int v14, v8, v14

    invoke-static {v14, v15, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v10

    if-ne v10, v9, :cond_6

    const/4 v12, 0x1

    :cond_6
    invoke-static {v14, v5, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v5

    if-ne v5, v9, :cond_7

    const/4 v13, 0x1

    :cond_7
    :goto_5
    if-ltz v14, :cond_c

    if-ge v14, v0, :cond_c

    if-eqz v12, :cond_8

    if-lez v14, :cond_8

    neg-int v5, v3

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    add-int/2addr v5, v15

    invoke-static {v14, v5, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v5

    if-eq v5, v4, :cond_9

    return v5

    :cond_9
    if-eqz v13, :cond_a

    if-lez v14, :cond_a

    move v5, v3

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    add-int/2addr v5, v15

    invoke-static {v14, v5, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v11

    if-eq v11, v4, :cond_b

    return v11

    :cond_b
    sub-int/2addr v14, v3

    goto :goto_5

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    add-int v5, v7, v3

    move v6, v4

    :goto_8
    if-ltz v5, :cond_f

    if-ge v5, v1, :cond_f

    if-ltz v5, :cond_f

    invoke-static {v8, v5, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v6

    if-eq v6, v4, :cond_e

    if-eq v6, v9, :cond_e

    return v6

    :cond_e
    add-int/2addr v5, v3

    goto :goto_8

    :cond_f
    move v11, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_9
    if-ge v5, v0, :cond_17

    mul-int v12, v5, v3

    add-int v13, v8, v12

    sub-int v14, v8, v12

    add-int/2addr v12, v7

    invoke-static {v13, v12, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v15

    if-ne v15, v9, :cond_10

    const/4 v6, 0x1

    :cond_10
    invoke-static {v14, v12, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v15

    if-ne v15, v9, :cond_11

    const/4 v10, 0x1

    :cond_11
    :goto_a
    if-ltz v12, :cond_16

    if-ge v12, v1, :cond_16

    if-eqz v6, :cond_12

    add-int/lit8 v11, v1, -0x1

    if-ge v12, v11, :cond_12

    move v11, v3

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    :goto_b
    add-int/2addr v11, v13

    invoke-static {v11, v12, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v11

    if-eq v11, v4, :cond_13

    return v11

    :cond_13
    if-eqz v10, :cond_14

    add-int/lit8 v11, v1, -0x1

    if-ge v12, v11, :cond_14

    neg-int v11, v3

    goto :goto_c

    :cond_14
    const/4 v11, 0x0

    :goto_c
    add-int/2addr v11, v14

    invoke-static {v11, v12, v0, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->h(IIII[[I)I

    move-result v11

    if-eq v11, v4, :cond_15

    return v11

    :cond_15
    add-int/2addr v12, v3

    goto :goto_a

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_17
    return v11

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dpad navigation requires a matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createSparseMatrix(Lcom/zui/launcher/CellLayout;)[[I
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p0

    invoke-virtual {v0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v2

    invoke-static {v1, p0}, Lcom/zui/launcher/util/FocusLogic;->a(II)[[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v6, v6, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v5, v5, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-eqz v2, :cond_1

    sub-int v6, v1, v6

    add-int/lit8 v6, v6, -0x1

    :cond_1
    if-ge v6, v1, :cond_2

    if-ge v5, p0, :cond_2

    aget-object v6, v3, v6

    aput v4, v6, v5

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static createSparseMatrixWithHotseat(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/DeviceProfile;)[[I
    .locals 8

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v4

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p1

    :goto_0
    add-int/2addr v4, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v4

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v4

    :goto_1
    invoke-static {v3, v4}, Lcom/zui/launcher/util/FocusLogic;->a(II)[[I

    move-result-object p1

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v7, v7, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v6, v6, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-ge v7, v3, :cond_3

    if-ge v6, v4, :cond_3

    aget-object v7, p1, v7

    aput v5, v7, v6

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    aget-object v4, p1, v4

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v6, v3

    aput v6, v4, v5

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    aget-object v4, p1, v4

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v3

    aput v6, v4, v5

    goto :goto_5

    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v5

    aget-object v5, p1, v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v6, v3

    aput v6, v5, v4

    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_7
    return-object p1
.end method

.method public static createSparseMatrixWithPivotColumn(Lcom/zui/launcher/CellLayout;IIZ)[[I
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p0

    :goto_0
    invoke-static {v1, p0}, Lcom/zui/launcher/util/FocusLogic;->a(II)[[I

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v3, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-eqz p3, :cond_3

    if-gez p2, :cond_2

    aget-object v4, p0, v4

    sub-int/2addr v3, p2

    aput v2, v4, v3

    goto :goto_2

    :cond_2
    aget-object v4, p0, v4

    aput v2, v4, v3

    goto :goto_2

    :cond_3
    if-gez p1, :cond_4

    sub-int/2addr v4, p1

    aget-object v4, p0, v4

    aput v2, v4, v3

    goto :goto_2

    :cond_4
    aget-object v4, p0, v4

    aput v2, v4, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/16 v0, 0x64

    if-eqz p3, :cond_7

    if-gez p2, :cond_6

    aget-object p1, p0, p1

    aput v0, p1, v1

    goto :goto_3

    :cond_6
    aget-object p1, p0, p1

    aput v0, p1, p2

    goto :goto_3

    :cond_7
    if-gez p1, :cond_8

    aget-object p1, p0, v1

    aput v0, p1, p2

    goto :goto_3

    :cond_8
    aget-object p1, p0, p1

    aput v0, p1, p2

    :goto_3
    return-object p0
.end method

.method private static d()I
    .locals 1

    const/4 v0, -0x7

    return v0
.end method

.method private static e()I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method private static f(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ge p0, p1, :cond_0

    const/4 p0, -0x8

    return p0

    :cond_0
    const/4 p0, -0x7

    return p0
.end method

.method private static g(ILcom/zui/launcher/util/FocusLogic$ContainerType;)I
    .locals 0

    if-lez p0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    sget-object p0, Lcom/zui/launcher/util/FocusLogic$ContainerType;->FOLDER:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    if-eq p1, p0, :cond_1

    const/16 p0, -0x65

    return p0

    :cond_1
    const/4 p0, -0x6

    return p0
.end method

.method public static getAdjacentChildInNextFolderPage(Lcom/zui/launcher/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget p1, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, -0x9

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v2

    xor-int/2addr p2, v2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p2

    add-int/lit8 v1, p2, -0x1

    :goto_1
    if-ltz v1, :cond_4

    move p2, p1

    :goto_2
    if-ltz p2, :cond_3

    invoke-virtual {p0, v1, p2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static h(IIII[[I)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/zui/launcher/util/FocusLogic;->i(IIII)Z

    move-result p2

    const/4 p3, -0x1

    if-eqz p2, :cond_0

    aget-object p2, p4, p0

    aget p2, p2, p1

    if-eq p2, p3, :cond_0

    aget-object p0, p4, p0

    aget p0, p0, p1

    return p0

    :cond_0
    return p3
.end method

.method public static handleKeyEvent(I[[IIIIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I
    .locals 9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    move v3, v1

    :goto_0
    if-nez p1, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    move v4, v1

    :goto_1
    const/16 v1, 0x5c

    if-eq p0, v1, :cond_9

    const/16 v1, 0x5d

    if-eq p0, v1, :cond_8

    const/16 v1, 0x7a

    if-eq p0, v1, :cond_7

    const/16 v1, 0x7b

    if-eq p0, v1, :cond_6

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v6, 0x1

    move v2, p2

    move-object v5, p1

    move v7, p5

    move-object v8, p6

    invoke-static/range {v2 .. v8}, Lcom/zui/launcher/util/FocusLogic;->b(III[[IIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result p0

    if-nez p5, :cond_2

    if-ne p0, v0, :cond_2

    add-int/lit8 p4, p4, -0x1

    if-ge p3, p4, :cond_2

    const/16 v0, -0x9

    goto/16 :goto_2

    :cond_2
    if-eqz p5, :cond_3

    if-ne p0, v0, :cond_3

    if-lez p3, :cond_3

    const/4 v0, -0x5

    goto/16 :goto_2

    :cond_3
    move v0, p0

    goto :goto_2

    :pswitch_1
    const/4 v6, -0x1

    move v2, p2

    move-object v5, p1

    move v7, p5

    move-object v8, p6

    invoke-static/range {v2 .. v8}, Lcom/zui/launcher/util/FocusLogic;->b(III[[IIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result p0

    if-nez p5, :cond_4

    if-ne p0, v0, :cond_4

    if-lez p3, :cond_4

    const/4 v0, -0x2

    goto :goto_2

    :cond_4
    if-eqz p5, :cond_5

    if-ne p0, v0, :cond_5

    add-int/lit8 p4, p4, -0x1

    if-ge p3, p4, :cond_5

    const/16 v0, -0xa

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/zui/launcher/util/FocusLogic$ContainerType;->FOLDER:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    if-eq p6, p1, :cond_3

    if-nez p5, :cond_3

    if-ne p0, v0, :cond_3

    if-gtz p3, :cond_3

    const/16 v0, -0x65

    goto :goto_2

    :pswitch_2
    const/4 v6, 0x1

    move v2, p2

    move-object v5, p1

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/zui/launcher/util/FocusLogic;->c(III[[IILcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result v0

    goto :goto_2

    :pswitch_3
    const/4 v6, -0x1

    move v2, p2

    move-object v5, p1

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/zui/launcher/util/FocusLogic;->c(III[[IILcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result v0

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/zui/launcher/util/FocusLogic;->d()I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/zui/launcher/util/FocusLogic;->e()I

    move-result v0

    goto :goto_2

    :cond_8
    invoke-static {p3, p4}, Lcom/zui/launcher/util/FocusLogic;->f(II)I

    move-result v0

    goto :goto_2

    :cond_9
    invoke-static {p3, p6}, Lcom/zui/launcher/util/FocusLogic;->g(ILcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result v0

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static i(IIII)Z
    .locals 0

    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldConsume(I)Z
    .locals 1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
