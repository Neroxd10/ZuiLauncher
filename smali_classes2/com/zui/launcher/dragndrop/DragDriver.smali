.class public abstract Lcom/zui/launcher/dragndrop/DragDriver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/dragndrop/DragDriver$EventListener;
    }
.end annotation


# instance fields
.field protected final mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/dragndrop/DragDriver$EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/zui/launcher/dragndrop/DragController;Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragDriver;
    .locals 0

    iget-object p3, p3, Lcom/zui/launcher/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    if-eqz p3, :cond_0

    new-instance p3, Lcom/zui/launcher/dragndrop/o;

    invoke-direct {p3, p1, p0, p2}, Lcom/zui/launcher/dragndrop/o;-><init>(Lcom/zui/launcher/dragndrop/DragController;Landroid/content/Context;Lcom/zui/launcher/DropTarget$DragObject;)V

    return-object p3

    :cond_0
    new-instance p0, Lcom/zui/launcher/dragndrop/m;

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/m;-><init>(Lcom/zui/launcher/dragndrop/DragController;)V

    return-object p0
.end method


# virtual methods
.method public abstract onDragEvent(Landroid/view/DragEvent;)Z
.end method

.method public onDragViewAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-interface {p0}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-interface {p0}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDriver;->mEventListener:Lcom/zui/launcher/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/zui/launcher/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    :goto_0
    return v1
.end method
