.class final Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil;->h(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "lsfApkVersion"

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "userName"

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x2

    const-string v3, "dataNumber"

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->isResultNetErr(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x194

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getResultCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->isAuthError(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/AuthorizationUtil;->getLenovoIdApkVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    const-string v2, "uploadDownloadFileSize"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getRootCauseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getRootCauseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v2, 0x5

    const-string v3, "errorMsg"

    invoke-virtual {v1, v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->isNeedCheck(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->checkNetwork(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)V

    :cond_5
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->addNetwordErrorParam(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getEvent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getCost()I

    move-result p0

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->g(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->decreaseBackgroundTask()V

    return-void

    :goto_2
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getEvent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getResultCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;->a:Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getCost()I

    move-result p0

    invoke-virtual {v2, v3, v4, p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->g(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->decreaseBackgroundTask()V

    throw v0
.end method
