.class public Lcom/zui/launcher/dragndrop/SpringLoadedDragController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# instance fields
.field a:Lcom/zui/launcher/Alarm;

.field private b:Lcom/zui/launcher/CellLayout;

.field private c:Lcom/zui/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->c:Lcom/zui/launcher/Launcher;

    new-instance p1, Lcom/zui/launcher/Alarm;

    invoke-direct {p1}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->a:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->a:Lcom/zui/launcher/Alarm;

    invoke-virtual {p0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    return-void
.end method

.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->b:Lcom/zui/launcher/CellLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->b:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->cancelDrag()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlarm(Lcom/zui/launcher/CellLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->a:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->a:Lcom/zui/launcher/Alarm;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x3b6

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->b:Lcom/zui/launcher/CellLayout;

    return-void
.end method
