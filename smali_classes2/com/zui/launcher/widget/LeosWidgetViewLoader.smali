.class public Lcom/zui/launcher/widget/LeosWidgetViewLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;


# instance fields
.field private a:Ljava/lang/Runnable;

.field b:Lcom/zui/launcher/Launcher;

.field c:Landroid/os/Handler;

.field final d:Landroid/view/View;

.field final e:Lcom/zui/launcher/LenovoWidgetViewInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->a:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->b:Lcom/zui/launcher/Launcher;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->c:Landroid/os/Handler;

    iput-object p2, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iput-object p1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    return-void
.end method

.method private a()Z
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;-><init>(Lcom/zui/launcher/widget/LeosWidgetViewLoader;)V

    iput-object v0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->a:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onDragEnd()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object v0, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;->boundWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object v1, v1, Lcom/zui/launcher/LenovoWidgetViewInfo;->boundWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->boundWidget:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->a()Z

    return-void
.end method
