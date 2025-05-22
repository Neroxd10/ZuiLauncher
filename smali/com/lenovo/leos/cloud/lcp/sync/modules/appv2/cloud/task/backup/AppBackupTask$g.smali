.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$g;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$g;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    const/4 p4, 0x0

    invoke-static {p3, p0, p1, p2, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->k(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;JZ)V

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
