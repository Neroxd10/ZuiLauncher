.class public Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;
.super Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;
.source ""


# instance fields
.field private final c:Landroid/graphics/Rect;

.field private final d:[I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/zui/launcher/CellLayout;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->c:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->d:[I

    return-void
.end method

.method public static getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    instance-of v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f120295

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/zui/launcher/FolderInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/zui/launcher/FolderInfo;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v3, :cond_2

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->rank:I

    iget v6, v4, Lcom/zui/launcher/ItemInfo;->rank:I

    if-le v5, v6, :cond_1

    :cond_2
    move-object v3, v4

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    const p0, 0x7f120073

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x7f120072

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    iget-object v1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    div-int/2addr p1, v1

    iget-object v1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2, v0, p1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p1, Lcom/zui/launcher/FolderInfo;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const p1, 0x7f120076

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const p1, 0x7f1203b9

    goto :goto_0

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const p1, 0x7f120410

    goto :goto_0
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    iget-object v1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    div-int/2addr p1, v1

    iget-object v1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2, v0, p1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected intersectsValidDropTarget(I)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    iget-object v2, v0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v2

    rem-int v3, p1, v1

    div-int v4, p1, v1

    iget-object v5, v0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v5}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v5

    iget-object v6, v5, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v7, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    const/4 v8, -0x1

    if-ne v6, v7, :cond_0

    iget-object v6, v0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/zui/launcher/CellLayout;->acceptsWidget()Z

    move-result v6

    if-nez v6, :cond_0

    return v8

    :cond_0
    iget-object v6, v5, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v7, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    if-ne v6, v7, :cond_a

    iget-object v5, v5, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/zui/launcher/ItemInfo;

    iget v6, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v5, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_8

    sub-int v11, v3, v9

    sub-int v12, v4, v10

    if-ltz v11, :cond_7

    if-gez v12, :cond_1

    goto :goto_6

    :cond_1
    const/4 v13, 0x1

    move v14, v11

    :goto_2
    add-int v15, v11, v6

    if-ge v14, v15, :cond_6

    if-nez v13, :cond_2

    goto :goto_5

    :cond_2
    move v15, v12

    :goto_3
    add-int v7, v12, v5

    if-ge v15, v7, :cond_5

    if-ge v14, v1, :cond_4

    if-ge v15, v2, :cond_4

    iget-object v7, v0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v7, v14, v15}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    const/4 v13, 0x0

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    if-eqz v13, :cond_7

    mul-int/2addr v1, v12

    add-int/2addr v11, v1

    return v11

    :cond_7
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_9
    return v8

    :cond_a
    iget-object v0, v0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0, v3, v4}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v5, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v0, v1, :cond_b

    goto :goto_7

    :cond_b
    iget-object v1, v5, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v2, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    if-eq v1, v2, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/AppInfo;

    if-nez v1, :cond_c

    instance-of v1, v0, Lcom/zui/launcher/FolderInfo;

    if-nez v1, :cond_c

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_d

    :cond_c
    return p1

    :cond_d
    return v8

    :cond_e
    :goto_7
    return p1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object p1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->d:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    iget-object v3, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1, v3, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->c:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->d:[I

    aget v3, p0, v2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    aget v2, p0, v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    aget v2, p0, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    aget p0, p0, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method
