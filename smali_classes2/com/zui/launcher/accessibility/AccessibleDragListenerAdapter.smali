.class public Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->a:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->b:I

    return-void
.end method


# virtual methods
.method protected enableAccessibleDrag(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0, v1, p1}, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->setEnableForLayout(Lcom/zui/launcher/CellLayout;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    return-void
.end method

.method protected final setEnableForLayout(Lcom/zui/launcher/CellLayout;Z)V
    .locals 0

    iget p0, p0, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->b:I

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/CellLayout;->enableAccessibleDrag(ZI)V

    return-void
.end method
