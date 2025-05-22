.class Lcom/zui/launcher/backup/BackupController$h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/api/IFssApi$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/zui/launcher/backup/BackupController$h;


# direct methods
.method constructor <init>(Lcom/zui/launcher/backup/BackupController$h;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$h$a;->b:Lcom/zui/launcher/backup/BackupController$h;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$h$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "restor onError---errorMsg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$h$a;->b:Lcom/zui/launcher/backup/BackupController$h;

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2, p3}, Lcom/zui/launcher/backup/BackupController;->sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;JJ)V
    .locals 0

    const-string p0, "BackupController"

    const-string p1, "restor onProgress"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/zui/fss/api/FileMeta;)V
    .locals 4

    const-string p1, "/"

    const-string p2, ".dbBackup"

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$h$a;->b:Lcom/zui/launcher/backup/BackupController$h;

    iget-object v2, v2, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.zui.launcher.permanent_settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController$h$a;->b:Lcom/zui/launcher/backup/BackupController$h;

    iget-object v3, v3, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dbBackupZip"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$h$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/launcher/backup/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$h$a;->b:Lcom/zui/launcher/backup/BackupController$h;

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/backup/BackupController;->dataRestore(Landroid/content/Context;)V

    const-string p0, "BackupController"

    const-string p1, "restore onSuccess"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$h$a;->b:Lcom/zui/launcher/backup/BackupController$h;

    iget-object p2, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/backup/BackupController;->dataRestore(Landroid/content/Context;)V

    throw p1
.end method
