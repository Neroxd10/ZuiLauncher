.class public interface abstract Lcom/zui/launcher/touch/SwipeDetector$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/SwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDrag(F)Z
.end method

.method public onDrag(FLandroid/view/MotionEvent;)Z
    .locals 0

    invoke-interface {p0, p1}, Lcom/zui/launcher/touch/SwipeDetector$Listener;->onDrag(F)Z

    move-result p0

    return p0
.end method

.method public abstract onDragEnd(FZ)V
.end method

.method public abstract onDragStart(Z)V
.end method

.method public shouldDrag(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
