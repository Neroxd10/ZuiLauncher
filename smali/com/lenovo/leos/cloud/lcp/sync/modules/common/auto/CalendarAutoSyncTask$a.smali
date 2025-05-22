.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "CalendarAutoSyncTask"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/AutoSyncConfigDownloader;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/AutoSyncConfigDownloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/AutoSyncConfigDownloader;->start()Z

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->checkSyncCondition()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->doSync(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    const-string v2, "===>\u5f00\u59cb\u81ea\u52a8\u540c\u6b65"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "\u81ea\u52a8\u540c\u6b65\u65e5\u5386\u51fa\u9519"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-static {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;Z)Z

    :goto_0
    return-void
.end method
