.class Lcom/zui/launcher/backup/BackupController$l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/api/IFssApi$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController$l;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/backup/BackupController$l;


# direct methods
.method constructor <init>(Lcom/zui/launcher/backup/BackupController$l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$l$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#######updateFilte onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".....errorMsg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->d(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/backup/FileMD5;->getFileMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MD5last"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->h(Lcom/zui/launcher/backup/BackupController;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object v0, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v1, p1, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/backup/BackupController;->h(Lcom/zui/launcher/backup/BackupController;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->j(Lcom/zui/launcher/backup/BackupController;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/backup/BackupController;->sendBackupProgress(Landroid/content/Context;JJ)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object v0, v0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v0}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/zui/launcher/backup/BackupController$m;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/backup/BackupController$m;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;ZZLjava/lang/String;)V

    invoke-virtual {v0, p2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x14

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onProgress(Ljava/lang/String;JJ)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#######onProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->h(Lcom/zui/launcher/backup/BackupController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1, p2, p3}, Lcom/zui/launcher/backup/BackupController;->i(Lcom/zui/launcher/backup/BackupController;J)J

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1, p4, p5}, Lcom/zui/launcher/backup/BackupController;->k(Lcom/zui/launcher/backup/BackupController;J)J

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object v1, v1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Landroid/util/Pair;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [J

    aput-wide p2, v5, v0

    const/4 p2, 0x1

    aput-wide p4, v5, p2

    invoke-direct {v4, p0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/zui/fss/api/FileMeta;)V
    .locals 8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#######onSuccess "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object v0, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/zui/launcher/backup/BackupController;->c(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->o(Lcom/zui/launcher/backup/BackupController;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$l$a;->a:Ljava/lang/String;

    const-string v1, "time"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->o(Lcom/zui/launcher/backup/BackupController;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->d(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/backup/FileMD5;->getFileMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MD5last"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->j(Lcom/zui/launcher/backup/BackupController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/backup/BackupController;->i(Lcom/zui/launcher/backup/BackupController;J)J

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->h(Lcom/zui/launcher/backup/BackupController;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object v0, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v1, p1, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/backup/BackupController;->h(Lcom/zui/launcher/backup/BackupController;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->j(Lcom/zui/launcher/backup/BackupController;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/backup/BackupController;->sendBackupProgress(Landroid/content/Context;JJ)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object v0, v0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {v0}, Lcom/zui/launcher/backup/BackupController;->l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/zui/launcher/backup/BackupController$m;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$l$a;->b:Lcom/zui/launcher/backup/BackupController$l;

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$l;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController$l;->a:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/backup/BackupController$m;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;ZZLjava/lang/String;)V

    invoke-virtual {v0, p2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x14

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
