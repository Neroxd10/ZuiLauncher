.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;
    }
.end annotation


# static fields
.field public static final BACK_FLAG:Z = true

.field protected static final DOC_BUCKET_NAME:Ljava/lang/String; = "document"

.field public static final KEY_RESULT_CURRENT_DOC:Ljava/lang/String; = "currentDoc"

.field public static final KEY_RESULT_HAS_WAIT:Ljava/lang/String; = "KEY_RESULT_HAS_WAIT"

.field public static final PROBLEM_GET_DOC_ENTITIES:Ljava/lang/String; = "PROBLEM_GET_DOC_ENTITIES"

.field public static final RETRY_TIMES:I = 0x1

.field public static final UPLOAD_TYPE_HTTP:I = 0x1

.field public static final UPLOAD_TYPE_PILOT:I = 0x2


# instance fields
.field protected breakFilePath:Ljava/lang/String;

.field protected chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

.field protected currentDoc:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

.field protected currentFilePath:Ljava/lang/String;

.field protected currentUser:Ljava/lang/String;

.field protected dbUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;

.field protected docService:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentService;

.field protected flow:J

.field protected nextDoc:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

.field protected pilot:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

.field protected realFlow:J

.field protected selectedDocEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected taskExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

.field protected totalFlow:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->currentFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->breakFilePath:Ljava/lang/String;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->taskExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method protected fillDocEntities()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;->isSelectedAll()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;->getDocList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->getSelectedDoc(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;->getDocList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->selectedDocEntities:Ljava/util/List;

    return-void
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 6

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    const-string v2, "countOfTotal"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    const-string v2, "countOfAdd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->currentFilePath:Ljava/lang/String;

    const-string v2, "fileKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->currentDoc:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    const-string v2, "perFlow"

    const-string v3, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->currentDoc:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object v1, v3

    :goto_0
    const-string v2, "currentDocName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->nextDoc:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v1, "nextDocName"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->totalFlow:J

    const-string v3, "totalFlow"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->totalFlow:J

    const-string p0, "real_flow"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected abstract getSelectedDoc(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method protected getSubParams()Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->getParams()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected getTotalFlow(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method protected notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "KEY_RESULT_HAS_WAIT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "currentDoc"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_2

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    int-to-float p1, p1

    const/high16 v7, 0x42c80000    # 100.0f

    div-float p1, v7, p1

    int-to-long v2, p2

    const-wide/16 v4, 0x64

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    div-float/2addr p1, v7

    add-float/2addr v1, p1

    float-to-long v2, v1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method protected prepareDoc()V
    .locals 2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->fillDocEntities()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->selectedDocEntities:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->selectedDocEntities:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->getTotalFlow(Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->totalFlow:J

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->selectedDocEntities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method protected preparePersistList()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->dbUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->cleanItems()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->dbUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->selectedDocEntities:Ljava/util/List;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;->getDocType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->saveSelectedItems(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method protected resolveData()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "PROBLEM_GET_DOC_ENTITIES"

    invoke-interface {v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    if-eqz v0, :cond_1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;->getSelectedCount()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument bakcupList is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected startTask()V
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->resolveData()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    const-string v0, "document"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->pilot:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->dbUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->prepareDoc()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->preparePersistList()V

    return-void
.end method

.method protected updatePersistList(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->dbUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->delete(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V

    return-void
.end method
