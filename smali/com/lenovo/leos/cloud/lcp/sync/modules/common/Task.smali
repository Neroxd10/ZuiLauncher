.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCode;


# static fields
.field public static final ERROR_FLAG:Ljava/lang/String; = "ERROR RESULT"

.field public static final KEY_PROGRESS_MESSAGE:Ljava/lang/String; = "progressmessage"

.field public static final KEY_PROGRESS_PAUSED:Ljava/lang/String; = "paused"

.field public static final KEY_PROGRESS_STATE:Ljava/lang/String; = "progressstate"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_RESULT_ADD:Ljava/lang/String; = "countOfAdd"

.field public static final KEY_RESULT_ADD_FAILED:Ljava/lang/String; = "countOfFailed"

.field public static final KEY_RESULT_COST_TIME:Ljava/lang/String; = "costTime"

.field public static final KEY_RESULT_DELETE:Ljava/lang/String; = "countOfDel"

.field public static final KEY_RESULT_FAST_COUNT:Ljava/lang/String; = "countOfFast"

.field public static final KEY_RESULT_GZIP_FLOW:Ljava/lang/String; = "gzip_flow"

.field public static final KEY_RESULT_NOT_INSTALL:Ljava/lang/String; = "countOfNotInstall"

.field public static final KEY_RESULT_OTHER_ADD:Ljava/lang/String; = "otherCountOfAdd"

.field public static final KEY_RESULT_REAL_FLOW:Ljava/lang/String; = "real_flow"

.field public static final KEY_RESULT_TOTAL_COUNT:Ljava/lang/String; = "countOfTotal"

.field public static final KEY_RESULT_UPDATE:Ljava/lang/String; = "countOfUpdate"

.field public static final KEY_RESULT_USED_FLOW:Ljava/lang/String; = "used_flow"

.field public static final KEY_RESULT_USERNAME:Ljava/lang/String; = "username"

.field public static final KEY_SYNC_CLOUD_NUMBER:Ljava/lang/String; = "cloud_number"

.field public static final KEY_SYNC_LOCAL_NUMBER:Ljava/lang/String; = "local_number"

.field public static final PROGRESS_FORCE_NOTIFY:I = -0x1

.field public static final PROGRESS_STATUS_END:I = 0x7fffffff

.field public static final PROGRESS_STATUS_START:I = 0x1


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public abstract getResult()I
.end method

.method public abstract getTaskId()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
.end method

.method public abstract getTimeCost()J
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract setProblemResolver(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
.end method

.method public abstract setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
.end method

.method public abstract setResult(I)V
.end method

.method public abstract start()V
.end method
