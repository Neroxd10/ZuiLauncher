.class public final Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private b:Lcom/zui/launcher/DropTarget$DragObject;

.field private c:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;->a:Lcom/zui/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public onDragContentChanged()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;->b:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object p0, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;->c:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->endDrag()V

    iget-object v0, p0, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p2}, Lcom/zui/launcher/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;->b:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iput-object p1, p0, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;->c:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->startDrag(Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    :goto_0
    return-void
.end method
