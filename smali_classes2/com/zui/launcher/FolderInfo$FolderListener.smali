.class public interface abstract Lcom/zui/launcher/FolderInfo$FolderListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderListener"
.end annotation


# virtual methods
.method public abstract onAdd(Lcom/zui/launcher/WorkspaceItemInfo;I)V
.end method

.method public abstract onItemsChanged(Z)V
.end method

.method public abstract onRecommendStatusChanged()V
.end method

.method public abstract onRemove(Lcom/zui/launcher/WorkspaceItemInfo;)V
.end method

.method public abstract onRemoveAll()V
.end method

.method public abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method public abstract prepareAutoUpdate()V
.end method
