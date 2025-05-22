.class public interface abstract Lcom/lenovo/leos/cloud/lcp/common/service/ISyncService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/service/ISyncService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelTask(I)V
.end method

.method public abstract getActivityIntent()Landroid/content/Intent;
.end method

.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getLastTaskResult()Ljava/lang/String;
.end method

.method public abstract getLastTaskResultForTaskType(I)Ljava/lang/String;
.end method

.method public abstract getSupportTaskTypeDescs()[Ljava/lang/String;
.end method

.method public abstract getSupportTaskTypes()[I
.end method

.method public abstract getSwitchDesc()Ljava/lang/String;
.end method

.method public abstract getSwitchFlag()Z
.end method

.method public abstract isTaskRunning(I)Z
.end method

.method public abstract setSwitchFlag(Z)V
.end method

.method public abstract startTask(I)V
.end method
