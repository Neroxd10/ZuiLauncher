.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-static {p3, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;J)V

    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
