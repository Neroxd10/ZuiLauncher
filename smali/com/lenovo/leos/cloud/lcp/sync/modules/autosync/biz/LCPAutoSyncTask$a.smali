.class Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->start()Z

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->buildRunTask()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->sequenceRunTaskMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Z)Z

    :goto_0
    return-void
.end method
