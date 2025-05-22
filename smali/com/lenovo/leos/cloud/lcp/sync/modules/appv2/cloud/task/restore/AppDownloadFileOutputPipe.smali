.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;
.super Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistantSuppliable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$AppDownloadRequestIntercepter;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$a;
    }
.end annotation


# instance fields
.field private o:Ljava/lang/String;

.field private p:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;->o:Ljava/lang/String;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;->p:J

    return-void
.end method


# virtual methods
.method public getTaskAssistant()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;
    .locals 4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$a;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;->o:Ljava/lang/String;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;->p:J

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$a;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method
