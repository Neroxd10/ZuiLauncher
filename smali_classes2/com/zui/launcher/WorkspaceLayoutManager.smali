.class public interface abstract Lcom/zui/launcher/WorkspaceLayoutManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXTRA_EMPTY_SCREEN_ID:I = -0xc9

.field public static final FIRST_SCREEN_ID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Launcher.Workspace"


# virtual methods
.method public addInScreenFromBind(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 10

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v2, v3, :cond_0

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-interface {p0}, Lcom/zui/launcher/WorkspaceLayoutManager;->getHotseat()Lcom/zui/launcher/Hotseat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/Hotseat;->b0(I)I

    move-result v1

    invoke-interface {p0}, Lcom/zui/launcher/WorkspaceLayoutManager;->getHotseat()Lcom/zui/launcher/Hotseat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zui/launcher/Hotseat;->c0(I)I

    move-result v0

    move v7, v0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v1

    :goto_0
    iget v4, p2, Lcom/zui/launcher/ItemInfo;->container:I

    iget v5, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v8, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v9, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v2, p0

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/zui/launcher/WorkspaceLayoutManager;->addInScreenReal(Landroid/view/View;IIIIII)V

    return-void
.end method

.method public addInScreenReal(Landroid/view/View;IIIIII)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v8, -0x64

    const-string v9, "Launcher.Workspace"

    if-ne v2, v8, :cond_1

    invoke-interface {p0, p3}, Lcom/zui/launcher/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping child, screenId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_1
    const/16 v8, -0xc9

    if-eq v3, v8, :cond_a

    const/16 v8, -0x65

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v2, v8, :cond_3

    invoke-interface {p0}, Lcom/zui/launcher/WorkspaceLayoutManager;->getHotseat()Lcom/zui/launcher/Hotseat;

    move-result-object v2

    instance-of v3, v1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v3, v11}, Lcom/zui/launcher/folder/FolderIcon;->setTextVisible(Z)V

    :cond_2
    new-instance v3, Lcom/zui/launcher/k3;

    invoke-direct {v3}, Lcom/zui/launcher/k3;-><init>()V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v2, v10}, Lcom/zui/launcher/folder/FolderIcon;->setTextVisible(Z)V

    :cond_4
    invoke-interface {p0, p3}, Lcom/zui/launcher/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/l3;

    invoke-direct {v3}, Lcom/zui/launcher/l3;-><init>()V

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v8, v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iput v4, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v5, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v7, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_2

    :cond_6
    :goto_1
    new-instance v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/zui/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_2
    if-gez v6, :cond_7

    if-gez v7, :cond_7

    iput-boolean v11, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v4}, Lcom/zui/launcher/ItemInfo;->getViewId()I

    move-result v4

    instance-of v5, v1, Lcom/zui/launcher/folder/Folder;

    xor-int/2addr v5, v10

    if-eqz v2, :cond_8

    const/4 v6, -0x1

    move-object p2, v2

    move-object p3, p1

    move/from16 p4, v6

    move/from16 p5, v4

    move-object/from16 p6, v3

    move/from16 p7, v5

    invoke-virtual/range {p2 .. p7}, Lcom/zui/launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add to item at ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to CellLayout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p1, v11}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    sget-object v2, Lcom/zui/launcher/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    instance-of v2, v1, Lcom/zui/launcher/DropTarget;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/zui/launcher/DropTarget;

    invoke-interface {p0, v1}, Lcom/zui/launcher/WorkspaceLayoutManager;->onAddDropTarget(Lcom/zui/launcher/DropTarget;)V

    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getHotseat()Lcom/zui/launcher/Hotseat;
.end method

.method public abstract getScreenWithId(I)Lcom/zui/launcher/CellLayout;
.end method

.method public onAddDropTarget(Lcom/zui/launcher/DropTarget;)V
    .locals 0

    return-void
.end method
