.class Lcom/zui/launcher/backup/BackupController$l;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController;->uploadFile(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zui/launcher/backup/BackupController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/backup/BackupController;->readStData(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p0}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v0, p1}, Lcom/zui/launcher/backup/BackupController;->u(Lcom/zui/launcher/backup/BackupController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v3, "upTime"

    invoke-virtual {v9, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "newUpTime"

    invoke-virtual {v9, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/zui/launcher/backup/AppUtil;->userAppId:Ljava/lang/String;

    const-string v5, "zui.zuk.com"

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fssId:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";rid:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";token:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";objectKey:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v3}, Lcom/zui/launcher/backup/BackupController;->v(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";filepath:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v3}, Lcom/zui/launcher/backup/BackupController;->w(Lcom/zui/launcher/backup/BackupController;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "BackupController"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    const-wide/16 v7, 0x0

    invoke-static {p1, v7, v8}, Lcom/zui/launcher/backup/BackupController;->k(Lcom/zui/launcher/backup/BackupController;J)J

    invoke-static {p1, v7, v8}, Lcom/zui/launcher/backup/BackupController;->i(Lcom/zui/launcher/backup/BackupController;J)J

    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v3}, Lcom/zui/launcher/backup/BackupController;->w(Lcom/zui/launcher/backup/BackupController;)Ljava/io/File;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/zui/fss/api/FssCloudApi;->getInstance(Landroid/content/Context;)Lcom/zui/fss/api/IFssApi;

    move-result-object v3

    iget-object v7, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v7}, Lcom/zui/launcher/backup/BackupController;->v(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v8}, Lcom/zui/launcher/backup/BackupController;->w(Lcom/zui/launcher/backup/BackupController;)Ljava/io/File;

    move-result-object v8

    new-instance v10, Lcom/zui/launcher/backup/BackupController$l$a;

    invoke-direct {v10, p0, v2}, Lcom/zui/launcher/backup/BackupController$l$a;-><init>(Lcom/zui/launcher/backup/BackupController$l;Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v11}, Lcom/zui/fss/api/IFssApi;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/zui/fss/api/IFssApi$ProgressCallback;Z)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v0, v3}, Lcom/zui/launcher/backup/BackupController;->sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    const-string v2, "\u767b\u5f55\u72b6\u6001\u5f02\u5e38,\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/zui/launcher/backup/BackupController;->sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController$l;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController$l;->b(Ljava/lang/String;)V

    return-void
.end method
