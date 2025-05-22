.class public Lcom/zui/launcher/FocusHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/FocusHelper$PagedFolderKeyEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FocusHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstFocusableIconInReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v3

    if-ge v2, v3, :cond_4

    if-eqz p1, :cond_0

    const/4 v3, -0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-eqz p1, :cond_1

    add-int/lit8 v4, v0, -0x1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-ltz v4, :cond_3

    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4, v2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v5

    :cond_2
    add-int/2addr v4, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFirstFocusableIconInReverseReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v0, -0x1

    :goto_2
    if-ltz v4, :cond_3

    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4, v1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v5

    :cond_2
    add-int/2addr v4, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/util/FocusLogic;->shouldConsume(I)Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0456

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/Workspace;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/CellLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v10, v10, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/zui/launcher/CellLayout;

    if-nez v10, :cond_1

    return v2

    :cond_1
    invoke-virtual {v10}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v15

    const/16 v11, 0x13

    const/16 v16, 0x0

    if-ne v1, v11, :cond_2

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v11

    if-nez v11, :cond_2

    :goto_0
    invoke-static {v10, v7, v3}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrixWithHotseat(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/DeviceProfile;)[[I

    move-result-object v3

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v9, v6

    move-object v10, v3

    move v11, v9

    move-object v6, v15

    goto :goto_1

    :cond_2
    const/16 v11, 0x15

    if-ne v1, v11, :cond_3

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    :cond_3
    const/16 v10, 0x16

    if-ne v1, v10, :cond_4

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v1, 0x5d

    move v11, v9

    move-object/from16 v6, v16

    move-object v10, v6

    goto :goto_1

    :cond_4
    invoke-static {v7}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrix(Lcom/zui/launcher/CellLayout;)[[I

    move-result-object v3

    move-object v10, v3

    move v11, v9

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v14

    sget-object v3, Lcom/zui/launcher/util/FocusLogic$ContainerType;->HOTSEAT:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    move v9, v1

    move v12, v8

    move-object v7, v15

    move-object v15, v3

    invoke-static/range {v9 .. v15}, Lcom/zui/launcher/util/FocusLogic;->handleKeyEvent(I[[IIIIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result v3

    const/16 v9, -0x65

    if-eq v3, v9, :cond_a

    const/16 v9, -0xa

    if-eq v3, v9, :cond_9

    const/16 v9, -0x9

    if-eq v3, v9, :cond_9

    const/4 v9, -0x8

    const/4 v10, 0x0

    if-eq v3, v9, :cond_8

    const/4 v9, -0x5

    if-eq v3, v9, :cond_7

    const/4 v9, -0x4

    if-eq v3, v9, :cond_6

    const/4 v9, -0x3

    if-eq v3, v9, :cond_5

    const/4 v9, -0x2

    if-eq v3, v9, :cond_7

    goto :goto_4

    :cond_5
    sub-int/2addr v8, v4

    goto :goto_2

    :cond_6
    sub-int/2addr v8, v4

    invoke-static {v5, v8}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    goto :goto_3

    :cond_7
    sub-int/2addr v8, v4

    goto :goto_3

    :cond_8
    add-int/2addr v8, v4

    :goto_2
    invoke-static {v5, v8}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :goto_3
    invoke-virtual {v5, v8}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    goto :goto_4

    :cond_9
    add-int/2addr v8, v4

    goto :goto_3

    :cond_a
    invoke-virtual {v5}, Lcom/zui/launcher/Workspace;->scrollToOverScreen()V

    :goto_4
    if-ne v6, v7, :cond_b

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_b

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    :cond_b
    if-eqz v6, :cond_d

    if-nez v16, :cond_c

    if-ltz v3, :cond_c

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :cond_c
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    invoke-static {v1, v0}, Lcom/zui/launcher/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_d
    :goto_5
    return v2
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v8, p1

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/util/FocusLogic;->shouldConsume(I)Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v10, 0x1

    if-eq v1, v10, :cond_10

    if-nez v9, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/zui/launcher/Workspace;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a01d0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/zui/launcher/Hotseat;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    invoke-virtual {v14}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v7

    const/16 v4, 0x14

    if-ne v8, v4, :cond_1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-static {v2, v14, v1}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrixWithHotseat(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/DeviceProfile;)[[I

    move-result-object v1

    goto :goto_1

    :cond_1
    const/16 v4, 0x16

    if-ne v8, v4, :cond_2

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrix(Lcom/zui/launcher/CellLayout;)[[I

    move-result-object v1

    :goto_1
    move-object v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    sget-object v17, Lcom/zui/launcher/util/FocusLogic$ContainerType;->WORKSPACE:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    move/from16 v1, p1

    move v4, v15

    move/from16 v5, v16

    move-object/from16 p2, v7

    move-object/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/util/FocusLogic;->handleKeyEvent(I[[IIIIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v7

    const/4 v2, 0x0

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    const/16 v4, -0x65

    if-eq v1, v4, :cond_d

    const/4 v6, -0x4

    const/4 v5, -0x8

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    if-ltz v1, :cond_3

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gt v3, v1, :cond_4

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_4

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :pswitch_0
    sub-int/2addr v15, v10

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    invoke-static {v1, v7}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v14, v7}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v13, v15}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    goto :goto_2

    :pswitch_1
    invoke-static {v13, v14, v15, v7}, Lcom/zui/launcher/FocusHelper;->handlePreviousPageLastItem(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;IZ)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    invoke-static {v3, v7}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v14, v7}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :pswitch_3
    invoke-static {v3, v7}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v14, v7}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :pswitch_4
    invoke-static {v13, v14, v15, v7}, Lcom/zui/launcher/FocusHelper;->handleNextPageFirstItem(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;IZ)Landroid/view/View;

    move-result-object v2

    :cond_4
    :goto_2
    :pswitch_5
    move/from16 v17, v9

    goto/16 :goto_7

    :pswitch_6
    add-int/lit8 v3, v15, 0x1

    const/4 v12, -0x5

    if-ne v1, v12, :cond_5

    add-int/lit8 v1, v15, -0x1

    move v12, v1

    goto :goto_3

    :cond_5
    move v12, v3

    :goto_3
    invoke-static {v13, v12}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    const/4 v2, -0x1

    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-static {v1, v4, v2, v10}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrixWithPivotColumn(Lcom/zui/launcher/CellLayout;IIZ)[[I

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v10, v10, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-static {v1, v2, v10, v4}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrixWithPivotColumn(Lcom/zui/launcher/CellLayout;IIZ)[[I

    move-result-object v1

    :goto_4
    move-object v2, v1

    const/16 v4, 0x64

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v10

    sget-object v11, Lcom/zui/launcher/util/FocusLogic$ContainerType;->WORKSPACE:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    move/from16 v1, p1

    move/from16 v17, v9

    move-object v9, v3

    move v3, v4

    move v4, v12

    move v12, v5

    move/from16 v5, v16

    move v6, v10

    move v10, v7

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/util/FocusLogic;->handleKeyEvent(I[[IIIIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result v1

    if-ne v1, v12, :cond_7

    invoke-static {v13, v14, v15, v10}, Lcom/zui/launcher/FocusHelper;->handleNextPageFirstItem(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;IZ)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_7

    :cond_7
    const/4 v7, -0x4

    if-ne v1, v7, :cond_8

    invoke-static {v13, v14, v15, v10}, Lcom/zui/launcher/FocusHelper;->handlePreviousPageLastItem(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;IZ)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_7

    :pswitch_7
    move v12, v5

    move/from16 v17, v9

    move v9, v7

    move v7, v6

    add-int/lit8 v3, v15, -0x1

    const/16 v5, -0xa

    if-ne v1, v5, :cond_9

    add-int/lit8 v1, v15, 0x1

    move v5, v1

    goto :goto_5

    :cond_9
    move v5, v3

    :goto_5
    invoke-static {v13, v5}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    if-eqz v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v2, v2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrixWithPivotColumn(Lcom/zui/launcher/CellLayout;IIZ)[[I

    move-result-object v1

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v3, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-static {v1, v2, v3, v4}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrixWithPivotColumn(Lcom/zui/launcher/CellLayout;IIZ)[[I

    move-result-object v1

    :goto_6
    move-object v2, v1

    const/16 v3, 0x64

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v10

    sget-object v11, Lcom/zui/launcher/util/FocusLogic$ContainerType;->WORKSPACE:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    move/from16 v1, p1

    move v4, v5

    move/from16 v5, v16

    move-object/from16 v18, v6

    move v6, v10

    move v10, v7

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/util/FocusLogic;->handleKeyEvent(I[[IIIIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result v1

    if-ne v1, v12, :cond_b

    invoke-static {v13, v14, v15, v9}, Lcom/zui/launcher/FocusHelper;->handleNextPageFirstItem(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;IZ)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    :cond_b
    if-ne v1, v10, :cond_c

    invoke-static {v13, v14, v15, v9}, Lcom/zui/launcher/FocusHelper;->handlePreviousPageLastItem(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;IZ)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    :cond_c
    move-object/from16 v2, v18

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    :cond_d
    move/from16 v17, v9

    invoke-virtual {v13}, Lcom/zui/launcher/Workspace;->scrollToOverScreen()V

    :cond_e
    :goto_7
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    invoke-static {v8, v0}, Lcom/zui/launcher/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_f
    return v17

    :cond_10
    :goto_8
    move/from16 v17, v9

    return v17

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static handleNextPageFirstItem(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;IZ)Landroid/view/View;
    .locals 1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    invoke-static {v0, p3}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1, p3}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    :cond_1
    return-object v0
.end method

.method private static handlePreviousPageLastItem(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;IZ)Landroid/view/View;
    .locals 1

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    invoke-static {v0, p3}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1, p3}, Lcom/zui/launcher/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/zui/launcher/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    :cond_1
    return-object v0
.end method

.method static playSoundEffect(ILandroid/view/View;)V
    .locals 1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    :pswitch_2
    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    :pswitch_3
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
