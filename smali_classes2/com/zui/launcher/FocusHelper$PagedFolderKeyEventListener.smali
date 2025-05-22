.class public Lcom/zui/launcher/FocusHelper$PagedFolderKeyEventListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/FocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PagedFolderKeyEventListener"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/folder/Folder;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/FocusHelper$PagedFolderKeyEventListener;->a:Lcom/zui/launcher/folder/Folder;

    return-void
.end method


# virtual methods
.method public handleNoopKey(ILandroid/view/View;)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/FocusHelper$PagedFolderKeyEventListener;->a:Lcom/zui/launcher/folder/Folder;

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {p1, p2}, Lcom/zui/launcher/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    invoke-static/range {p2 .. p2}, Lcom/zui/launcher/util/FocusLogic;->shouldConsume(I)Z

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    return v10

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    const/4 v12, 0x0

    if-nez v2, :cond_1

    return v12

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v16

    invoke-virtual {v15}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v7

    invoke-static {v14}, Lcom/zui/launcher/util/FocusLogic;->createSparseMatrix(Lcom/zui/launcher/CellLayout;)[[I

    move-result-object v8

    sget-object v17, Lcom/zui/launcher/util/FocusLogic$ContainerType;->FOLDER:Lcom/zui/launcher/util/FocusLogic$ContainerType;

    move/from16 v2, p2

    move-object v3, v8

    move/from16 v5, v16

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lcom/zui/launcher/util/FocusLogic;->handleKeyEvent(I[[IIIIZLcom/zui/launcher/util/FocusLogic$ContainerType;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v9, v1}, Lcom/zui/launcher/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    return v10

    :cond_2
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_3

    :pswitch_0
    add-int/lit8 v2, v16, -0x1

    invoke-static {v15, v2}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_2

    :pswitch_1
    add-int/lit8 v2, v16, -0x1

    invoke-static {v15, v2}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v15, v2}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    move-object/from16 v5, v18

    array-length v2, v5

    sub-int/2addr v2, v11

    aget-object v3, v5, v12

    array-length v3, v3

    sub-int/2addr v3, v11

    invoke-virtual {v4, v2, v3}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :pswitch_2
    move-object/from16 v5, v18

    add-int/lit8 v4, v16, -0x1

    invoke-static {v15, v4}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v3, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v15, v4}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    const/4 v4, -0x5

    if-ne v2, v4, :cond_3

    move v2, v11

    goto :goto_0

    :cond_3
    move v2, v12

    :goto_0
    invoke-virtual {v6}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    xor-int/2addr v2, v4

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    array-length v2, v5

    add-int/lit8 v12, v2, -0x1

    :goto_1
    invoke-virtual {v6, v12, v3}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :pswitch_3
    invoke-virtual {v14, v12, v12}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :pswitch_4
    invoke-virtual {v15}, Lcom/zui/launcher/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :pswitch_5
    add-int/lit8 v2, v16, 0x1

    invoke-static {v15, v2}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v15, v2}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    invoke-virtual {v4, v12, v12}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :pswitch_6
    add-int/lit8 v4, v16, 0x1

    invoke-static {v15, v4}, Lcom/zui/launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v15, v4}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    invoke-static {v5, v1, v2}, Lcom/zui/launcher/util/FocusLogic;->getAdjacentChildInNextFolderPage(Lcom/zui/launcher/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-static {v9, v1}, Lcom/zui/launcher/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v9, v1}, Lcom/zui/launcher/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    :goto_4
    return v10

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
