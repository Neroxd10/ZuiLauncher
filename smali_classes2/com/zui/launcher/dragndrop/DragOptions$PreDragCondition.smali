.class public interface abstract Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/dragndrop/DragOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreDragCondition"
.end annotation


# virtual methods
.method public abstract onPreDragEnd(Lcom/zui/launcher/DropTarget$DragObject;Z)V
.end method

.method public abstract onPreDragStart(Lcom/zui/launcher/DropTarget$DragObject;)V
.end method

.method public abstract shouldStartDrag(D)Z
.end method
