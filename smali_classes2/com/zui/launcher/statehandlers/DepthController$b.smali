.class Lcom/zui/launcher/statehandlers/DepthController$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/statehandlers/DepthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/statehandlers/DepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/statehandlers/DepthController$b;->a:Lcom/zui/launcher/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController$b;->a:Lcom/zui/launcher/statehandlers/DepthController;

    invoke-static {v0}, Lcom/zui/launcher/statehandlers/DepthController;->c(Lcom/zui/launcher/statehandlers/DepthController;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/statehandlers/DepthController$b;->a:Lcom/zui/launcher/statehandlers/DepthController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/zui/launcher/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)V

    new-instance v1, Lcom/zui/launcher/statehandlers/a;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/statehandlers/a;-><init>(Lcom/zui/launcher/statehandlers/DepthController$b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
