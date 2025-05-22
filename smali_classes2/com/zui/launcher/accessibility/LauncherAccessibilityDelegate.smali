.class public Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;,
        Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;
    }
.end annotation


# static fields
.field protected static final ADD_TO_WORKSPACE:I = 0x7f0a0047

.field public static final DEEP_SHORTCUTS:I = 0x7f0a0053

.field protected static final MOVE:I = 0x7f0a005c

.field protected static final MOVE_TO_WORKSPACE:I = 0x7f0a005f

.field public static final RECONFIGURE:I = 0x7f0a0060

.field public static final REMOVE:I = 0x7f0a0062

.field protected static final RESIZE:I = 0x7f0a0063

.field public static final SHORTCUTS_AND_NOTIFICATIONS:I = 0x7f0a0066

.field public static final UNINSTALL:I = 0x7f0a006b


# instance fields
.field final a:Lcom/zui/launcher/Launcher;

.field private b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

.field protected final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 4

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f1205d1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a0062

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f1206af

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a006b

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f1203c5

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a0060

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f12005f

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a0047

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f120067

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a005c

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f120069

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a005f

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f12006a

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a0063

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f120062

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a0053

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v1, 0x7f120626

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    const p1, 0x7f0a0066

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private c(Landroid/view/View;Lcom/zui/launcher/LauncherAppWidgetInfo;)Lcom/zui/launcher/util/IntArray;
    .locals 5

    new-instance p0, Lcom/zui/launcher/util/IntArray;

    invoke-direct {p0}, Lcom/zui/launcher/util/IntArray;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout;

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v3

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {p1, v1, v3, v2, v4}, Lcom/zui/launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    sub-int/2addr v1, v2

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {p1, v1, v3, v2, v4}, Lcom/zui/launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const v1, 0x7f120065

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_2
    iget v1, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    if-le v1, v3, :cond_3

    if-le v1, v2, :cond_3

    const v1, 0x7f120061

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_3
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v3

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/zui/launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    sub-int/2addr v1, v2

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/zui/launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const p1, 0x7f120064

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_5
    iget p1, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    if-le p1, p2, :cond_6

    if-le p1, v2, :cond_6

    const p1, 0x7f120060

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_6
    return-object p0
.end method

.method private d(Lcom/zui/launcher/ItemInfo;)Z
    .locals 2

    instance-of p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ltz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    instance-of p0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez p0, :cond_2

    instance-of p0, p1, Lcom/zui/launcher/FolderInfo;

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method


# virtual methods
.method a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->b(Ljava/lang/String;)V

    return-void
.end method

.method public addAccessibilityAction(II)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    if-nez p3, :cond_2

    invoke-static {v0}, Lcom/zui/launcher/util/ShortcutUtil;->supportsShortcuts(Lcom/zui/launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-static {}, Lcom/zui/launcher/notification/NotificationListener;->getInstanceIfConnected()Lcom/zui/launcher/notification/NotificationListener;

    move-result-object v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a0066

    goto :goto_0

    :cond_1
    const v2, 0x7f0a0053

    :goto_0
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDropTargetBar()Lcom/zui/launcher/DropTargetBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DropTargetBar;->getDropTargets()[Lcom/zui/launcher/ButtonDropTarget;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4, v0, p1}, Lcom/zui/launcher/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/zui/launcher/ButtonDropTarget;->getAccessibilityAction()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_6

    invoke-direct {p0, v0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->d(Lcom/zui/launcher/ItemInfo;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0a005c

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget p3, v0, Lcom/zui/launcher/ItemInfo;->container:I

    if-ltz p3, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p3, 0x7f0a005f

    :goto_2
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_3

    :cond_5
    instance-of p3, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p3, :cond_6

    move-object p3, v0

    check-cast p3, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, p3}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->c(Landroid/view/View;Lcom/zui/launcher/LauncherAppWidgetInfo;)Lcom/zui/launcher/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p3, 0x7f0a0063

    goto :goto_2

    :cond_6
    :goto_3
    instance-of p1, v0, Lcom/zui/launcher/AppInfo;

    if-nez p1, :cond_7

    instance-of p1, v0, Lcom/zui/launcher/PendingAddItemInfo;

    if-eqz p1, :cond_8

    :cond_7
    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p1, 0x7f0a0047

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_8
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beginAccessibleDrag(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    invoke-direct {v0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p2, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/zui/launcher/ItemInfo;

    iput-object p1, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    sget-object v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v1, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    instance-of v1, p2, Lcom/zui/launcher/FolderInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    :goto_0
    iput-object v1, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    goto :goto_1

    :cond_0
    instance-of v1, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/dragndrop/DragController;->prepareAccessibleDrag(II)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    new-instance v0, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1, p0, p2, v0}, Lcom/zui/launcher/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/dragndrop/DragOptions;)V

    return-void
.end method

.method e(ILandroid/view/View;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 10

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1, p2}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    const/4 v2, 0x1

    const v3, 0x7f120065

    if-ne p1, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v2, :cond_0

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    sub-int/2addr p1, v2

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p3, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/zui/launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget p1, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr p1, v3

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p3, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/zui/launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    sub-int/2addr p1, v2

    iput p1, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    :cond_2
    iget p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr p1, v2

    goto :goto_0

    :cond_3
    const v3, 0x7f120061

    if-ne p1, v3, :cond_4

    iget p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->spanX:I

    sub-int/2addr p1, v2

    :goto_0
    iput p1, p3, Lcom/zui/launcher/ItemInfo;->spanX:I

    goto :goto_2

    :cond_4
    const v3, 0x7f120064

    if-ne p1, v3, :cond_6

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p3, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr v3, v4

    iget v4, p3, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/zui/launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    sub-int/2addr p1, v2

    iput p1, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    :cond_5
    iget p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr p1, v2

    goto :goto_1

    :cond_6
    const v3, 0x7f120060

    if-ne p1, v3, :cond_7

    iget p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->spanY:I

    sub-int/2addr p1, v2

    :goto_1
    iput p1, p3, Lcom/zui/launcher/ItemInfo;->spanY:I

    :cond_7
    :goto_2
    invoke-virtual {v1, p2}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    iget v1, p3, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v0, v1, v3, p1}, Lcom/zui/launcher/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-object v4, p2

    check-cast v4, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    const/4 v5, 0x0

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v4 .. v9}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    const p2, 0x7f120744

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget p3, p3, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected findSpaceOnWorkspace(Lcom/zui/launcher/ItemInfo;[I)I
    .locals 6

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getScreenOrder()Lcom/zui/launcher/util/IntArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p2, v3, v4}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p2, v4, v5}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->addExtraEmptyScreen()Z

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, p2, v1, p1}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "LauncherAccessibilityDelegate"

    const-string p1, "Not enough space on an empty screen"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public getDragInfo()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    return-object p0
.end method

.method public handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v0

    aput p2, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v0

    aput p2, v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    aput v0, v1, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    aput p2, v1, v2

    :goto_0
    iget-object p2, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    iget-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/dragndrop/DragController;->completeAccessibleDrag([I)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p3}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public isInAccessibleDrag()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragEnd()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z
    .locals 10

    const/4 v0, 0x0

    const v1, 0x7f0a005c

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->beginAccessibleDrag(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    goto/16 :goto_2

    :cond_0
    const v1, 0x7f0a0047

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    new-array p1, v2, [I

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/zui/launcher/ItemInfo;[I)I

    move-result p3

    new-instance v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;-><init>(Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;Lcom/zui/launcher/ItemInfo;I[I)V

    iget-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1, v3, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;ZLjava/lang/Runnable;)V

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v3

    :cond_2
    const v1, 0x7f0a005f

    if-ne p3, v1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    move-object v5, p2

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1, v5, v0}, Lcom/zui/launcher/FolderInfo;->remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    new-array p1, v2, [I

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/zui/launcher/ItemInfo;[I)I

    move-result v7

    iget-object p3, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v4

    const/16 v6, -0x64

    aget v8, p1, v0

    aget v9, p1, v3

    invoke-virtual/range {v4 .. v9}, Lcom/zui/launcher/model/ModelWriter;->moveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$b;

    invoke-direct {p3, p0, p2}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$b;-><init>(Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_3
    const v1, 0x7f0a0063

    if-ne p3, v1, :cond_5

    check-cast p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->c(Landroid/view/View;Lcom/zui/launcher/LauncherAppWidgetInfo;)Lcom/zui/launcher/util/IntArray;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p3}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3, v0}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12006a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;-><init>(Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;Lcom/zui/launcher/util/IntArray;Landroid/view/View;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v3

    :cond_5
    const v1, 0x7f0a0053

    if-ne p3, v1, :cond_7

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->showForIcon(Landroid/view/View;)Lcom/zui/launcher/popup/PopupContainerWithArrow;

    move-result-object p0

    if-eqz p0, :cond_6

    move v0, v3

    :cond_6
    return v0

    :cond_7
    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDropTargetBar()Lcom/zui/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DropTargetBar;->getDropTargets()[Lcom/zui/launcher/ButtonDropTarget;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_9

    aget-object v4, p0, v2

    invoke-virtual {v4, p2, p1}, Lcom/zui/launcher/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/zui/launcher/ButtonDropTarget;->getAccessibilityAction()I

    move-result v5

    if-ne p3, v5, :cond_8

    invoke-virtual {v4, p1, p2}, Lcom/zui/launcher/ButtonDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    return v3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    return v0
.end method
