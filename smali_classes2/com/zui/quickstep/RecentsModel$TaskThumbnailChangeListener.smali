.class public interface abstract Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/RecentsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskThumbnailChangeListener"
.end annotation


# virtual methods
.method public abstract onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;
.end method
