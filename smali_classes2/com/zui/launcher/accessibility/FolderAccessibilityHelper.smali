.class public Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;
.super Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;
.source ""


# instance fields
.field private final c:I

.field private final d:Lcom/zui/launcher/folder/FolderPagedView;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/CellLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/zui/launcher/CellLayout;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/folder/FolderPagedView;

    iput-object v0, p0, Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;->d:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p1

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;->c:I

    return-void
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const p1, 0x7f120410

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;->c:I

    add-int/2addr p1, p0

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    const p0, 0x7f1204ea

    invoke-virtual {v0, p0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected intersectsValidDropTarget(I)I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;->d:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderPagedView;->getAllocatedContentSize()I

    move-result v0

    iget p0, p0, Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;->c:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
