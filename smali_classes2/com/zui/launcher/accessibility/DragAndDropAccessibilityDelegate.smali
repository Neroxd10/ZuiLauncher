.class public abstract Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final INVALID_POSITION:I = -0x1

.field private static final b:[I


# instance fields
.field private final a:Landroid/graphics/Rect;

.field protected final mContext:Landroid/content/Context;

.field protected final mDelegate:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

.field protected final mView:Lcom/zui/launcher/CellLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->b:[I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/CellLayout;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->a:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    return-void
.end method

.method private a(I)Landroid/graphics/Rect;
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    rem-int v2, p1, v0

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    div-int v3, p1, v0

    iget-object p1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    iget-object p1, p1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/zui/launcher/ItemInfo;

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v6, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->a:Landroid/graphics/Rect;

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->a:Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method protected abstract getConfirmationForIconDrop(I)Ljava/lang/String;
.end method

.method protected abstract getLocationDescriptionForIconDrop(I)Ljava/lang/String;
.end method

.method protected getVirtualViewAt(FF)I
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    float-to-int p1, p1

    float-to-int p2, p2

    sget-object v1, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->b:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/zui/launcher/CellLayout;->pointToCellExact(II[I)V

    sget-object p1, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->b:[I

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->intersectsValidDropTarget(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->intersectsValidDropTarget(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract intersectsValidDropTarget(I)I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result p1

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/16 p3, 0x10

    if-ne p2, p3, :cond_0

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->getConfirmationForIconDrop(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/zui/launcher/CellLayout;

    invoke-direct {p0, p1}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->a(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, v0, p0, p2}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const p1, 0x7f120068

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid virtual view id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->getLocationDescriptionForIconDrop(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;->a(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid virtual view id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
