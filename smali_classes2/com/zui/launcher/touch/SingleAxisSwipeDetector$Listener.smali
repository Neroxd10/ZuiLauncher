.class public interface abstract Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/SingleAxisSwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDrag(F)Z
.end method

.method public onDrag(FFLandroid/view/MotionEvent;)Z
    .locals 0

    invoke-interface {p0, p1, p3}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;->onDrag(FLandroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(FLandroid/view/MotionEvent;)Z
    .locals 0

    invoke-interface {p0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;->onDrag(F)Z

    move-result p0

    return p0
.end method

.method public abstract onDragEnd(F)V
.end method

.method public abstract onDragStart(ZF)V
.end method
