.class Lcom/zui/launcher/backup/BackupController$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/api/IFssApi$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController;->A(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/zui/launcher/backup/BackupController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/backup/BackupController;Ljava/lang/Runnable;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$f;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/zui/launcher/backup/BackupController$f;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/zui/launcher/backup/BackupController$f;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on Error : mBackupTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v0}, Lcom/zui/launcher/backup/BackupController;->a(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " errorCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " errorMsg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$f;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/zui/fss/api/FileMeta;)V
    .locals 1

    invoke-virtual {p2}, Lcom/zui/fss/api/FileMeta;->getExtraMeta()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    const-string v0, "newUpTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/zui/launcher/backup/BackupController;->b(Lcom/zui/launcher/backup/BackupController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p2}, Lcom/zui/launcher/backup/BackupController;->a(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    const-string v0, "upTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/zui/launcher/backup/BackupController;->b(Lcom/zui/launcher/backup/BackupController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    iget-object p2, p0, Lcom/zui/launcher/backup/BackupController$f;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/zui/launcher/backup/BackupController;->c(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->o(Lcom/zui/launcher/backup/BackupController;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p2}, Lcom/zui/launcher/backup/BackupController;->a(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "time"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->o(Lcom/zui/launcher/backup/BackupController;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBackupTime"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p2}, Lcom/zui/launcher/backup/BackupController;->a(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "getFileTime onSuccess"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$f;->d:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->a(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$f;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$f;->c:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    :goto_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
