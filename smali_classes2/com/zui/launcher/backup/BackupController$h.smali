.class Lcom/zui/launcher/backup/BackupController$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController;->y(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zui/launcher/backup/BackupController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "BackupController"

    const-string v1, "=====>BackupController--->downloadFile---"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/zui/launcher/backup/AppUtil;->userAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/backup/BackupController;->readStData(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v1}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fssId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";rid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "zui.zuk.com"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";objectKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v2}, Lcom/zui/launcher/backup/BackupController;->v(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";filepath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v2}, Lcom/zui/launcher/backup/BackupController;->w(Lcom/zui/launcher/backup/BackupController;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=================>BackupController====>before downloadFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v2}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v1}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v1}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "=================>BackupController====>downloadFile ---: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    const-string v1, ".dbBackup"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zui/launcher/BackupTools;->removeDirContent(Ljava/io/File;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/fss/api/FssCloudApi;->getInstance(Landroid/content/Context;)Lcom/zui/fss/api/IFssApi;

    move-result-object v2

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v1}, Lcom/zui/launcher/backup/BackupController;->v(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v1}, Lcom/zui/launcher/backup/BackupController;->d(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/zui/launcher/backup/BackupController$h$a;

    invoke-direct {v8, p0, v0}, Lcom/zui/launcher/backup/BackupController$h$a;-><init>(Lcom/zui/launcher/backup/BackupController$h;Ljava/io/File;)V

    invoke-interface/range {v2 .. v8}, Lcom/zui/fss/api/IFssApi;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v9, v9, v0}, Lcom/zui/launcher/backup/BackupController;->sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$h;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$h;->a:Landroid/content/Context;

    const-string v1, "\u767b\u5f55\u72b6\u6001\u5f02\u5e38,\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, p0, v9, v9, v1}, Lcom/zui/launcher/backup/BackupController;->sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V

    :goto_0
    return-void
.end method
