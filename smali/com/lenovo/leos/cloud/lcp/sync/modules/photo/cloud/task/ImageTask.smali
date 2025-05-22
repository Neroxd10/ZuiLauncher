.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source ""


# static fields
.field protected static final IMAGE_BUCKET_NAME:Ljava/lang/String; = "gallery"

.field public static final KEY_RESULT_CURRENT_IMAGE:Ljava/lang/String; = "currentImage"

.field public static final KEY_RESULT_CURRENT_IMAGE_SIZE:Ljava/lang/String; = "currentImageSize"

.field public static final KEY_RESULT_PROGRESS_MAP:Ljava/lang/String; = "imageProgressMap"

.field public static final PROBLEM_RESOVLER_ALBUM_ID:Ljava/lang/String; = "PROBLEM_RESOVLER_ALBUM_ID"

.field public static final PROBLEM_RESOVLER_PHOTO_CHOOSER:Ljava/lang/String; = "PROBLEM_RESOVLER_PHOTO_CHOOSER"

.field protected static final QUERY_IMAGE_RETRY_TIME:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "ImageTaskAdapter"

.field public static final TASK_FAILED_PROGRESS:I = -0x1


# instance fields
.field protected albumId:Ljava/lang/String;

.field protected breakFilePath:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected curCount:I

.field protected endTime:J

.field private f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

.field protected failedCount:I

.field protected fastCount:I

.field protected gzipFlow:J

.field protected imageProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

.field protected pilot:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

.field protected progressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected progressStatus:I

.field protected realFlow:J

.field protected rootPath:Ljava/lang/String;

.field protected startTime:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->rootPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->breakFilePath:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->progressMap:Ljava/util/Map;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->context:Landroid/content/Context;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    return-void
.end method

.method private d()Z
    .locals 1

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private e()Z
    .locals 1

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    return-void
.end method

.method protected declared-synchronized decreseFailedCount()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->failedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->failedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected deleteChoiceImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->imageProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->removeChoice(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    return-void
.end method

.method protected getChangeNumber()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    return p0
.end method

.method protected getImageSize(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)J
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    return-wide p0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 5

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    const-string v2, "countOfTotal"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    const-string v2, "countOfAdd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->failedCount:I

    const-string v2, "countOfFailed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->fastCount:I

    const-string v2, "countOfFast"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->gzipFlow:J

    const-string v3, "gzip_flow"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->realFlow:J

    const-string v3, "real_flow"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->startTime:J

    sub-long/2addr v1, v3

    const-string p0, "costTime"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected declared-synchronized increaseFailedCount()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->failedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->failedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized increaseFastCount()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->fastCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->fastCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized increaseFlow(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->gzipFlow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->gzipFlow:J

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->realFlow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->realFlow:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized increaseSuccessCount()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isInterruptTask()Z
    .locals 1

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const/16 v0, 0x195

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isTrackEvent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected notEnoughSpaceException(Ljava/io/IOException;)Z
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->onNoneSpaceIOException(Landroid/content/Context;Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method protected notifyFinish()V
    .locals 1

    sget v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->PHOTO:I

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->restore(I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->release()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->progressStatus:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->onFinishImageTask()V

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    return-void
.end method

.method protected declared-synchronized notifyProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, v1, v0

    iget-wide v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->progressMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->progressMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->progressMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->failedCount:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    cmpg-float v0, p2, v3

    if-gez v0, :cond_3

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;I)V

    goto :goto_3

    :cond_3
    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "currentImage"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "currentImageSize"

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->getImageSize(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)J

    move-result-wide v1

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    int-to-long v1, p2

    const-wide/16 v3, 0x64

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onFinishImageTask()V
    .locals 0

    return-void
.end method

.method protected resolveData()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v2, :cond_1

    const-string v3, "PROBLEM_RESOVLER_ALBUM_ID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->albumId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v3, "PROBLEM_RESOVLER_LAST_COUNT"

    invoke-interface {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->getTotalCount()I

    move-result v3

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->getSuccessCount()I

    move-result v3

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->getFlow()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->realFlow:J

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveData  cost:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImageTaskAdapter"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setResult(I)V
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setResult(I)V

    return-void
.end method

.method protected abstract startImageTask()V
.end method

.method protected startTask()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->startTime:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    sget v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->PHOTO:I

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->justWifi(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->init(Z)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChoosers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->persist(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->startImageTask()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method protected updateDBTaskInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->removeChoice(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Z)V

    return-void
.end method
