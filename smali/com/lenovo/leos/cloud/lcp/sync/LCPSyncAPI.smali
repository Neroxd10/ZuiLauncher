.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public varargs abstract backup([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)V
.end method

.method public abstract cancel()V
.end method

.method public varargs abstract cancel([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
.end method

.method public abstract clearProgressListener()V
.end method

.method public varargs abstract getCount([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)[I
.end method

.method public varargs abstract restore([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;)V
.end method

.method public abstract setProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
.end method

.method public abstract setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
.end method

.method public abstract setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
.end method

.method public varargs abstract sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V
.end method
