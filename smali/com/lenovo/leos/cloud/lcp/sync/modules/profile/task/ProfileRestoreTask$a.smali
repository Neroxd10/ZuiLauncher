.class Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$a;
.super Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->startTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;

    invoke-direct {p0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public download(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;->callback(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;Ljava/io/InputStream;)V

    return-void
.end method
