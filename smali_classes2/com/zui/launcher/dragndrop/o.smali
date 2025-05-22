.class Lcom/zui/launcher/dragndrop/o;
.super Lcom/zui/launcher/dragndrop/DragDriver;
.source ""


# instance fields
.field a:F

.field b:F


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragController;Landroid/content/Context;Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DragDriver;-><init>(Lcom/zui/launcher/dragndrop/DragDriver$EventListener;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/dragndrop/o;->a:F

    iput p1, p0, Lcom/zui/launcher/dragndrop/o;->b:F

    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-interface {p0}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragExitWindow()V

    :pswitch_1
    return v1

    :pswitch_2
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-interface {p0}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    return v1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/dragndrop/o;->a:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/dragndrop/o;->b:F

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    iget v0, p0, Lcom/zui/launcher/dragndrop/o;->a:F

    iget p0, p0, Lcom/zui/launcher/dragndrop/o;->b:F

    invoke-interface {p1, v0, p0}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    return v1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/dragndrop/o;->a:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/dragndrop/o;->b:F

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    return v1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/dragndrop/o;->a:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/o;->b:F

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
