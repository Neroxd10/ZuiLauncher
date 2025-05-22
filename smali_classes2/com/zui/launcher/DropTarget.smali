.class public interface abstract Lcom/zui/launcher/DropTarget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/DropTarget$DragObject;
    }
.end annotation


# virtual methods
.method public abstract acceptDrop(Lcom/zui/launcher/DropTarget$DragObject;)Z
.end method

.method public abstract getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
.end method

.method public abstract isDropEnabled()Z
.end method

.method public abstract onDragEnter(Lcom/zui/launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDragOver(Lcom/zui/launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
.end method

.method public abstract prepareAccessibilityDrop()V
.end method
