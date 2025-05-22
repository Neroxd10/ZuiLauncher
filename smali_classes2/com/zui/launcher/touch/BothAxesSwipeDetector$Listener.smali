.class public interface abstract Lcom/zui/launcher/touch/BothAxesSwipeDetector$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/BothAxesSwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDrag(Landroid/graphics/PointF;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onDragEnd(Landroid/graphics/PointF;)V
.end method

.method public abstract onDragStart(Z)V
.end method
