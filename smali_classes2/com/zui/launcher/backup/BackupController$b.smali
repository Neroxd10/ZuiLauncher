.class Lcom/zui/launcher/backup/BackupController$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/backup/BackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/backup/BackupController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/backup/BackupController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$b;->a:Lcom/zui/launcher/backup/BackupController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/launcher/backup/BackupController$m;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$b;->a:Lcom/zui/launcher/backup/BackupController;

    iget-object v0, p1, Lcom/zui/launcher/backup/BackupController$m;->a:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/zui/launcher/backup/BackupController$m;->b:Z

    iget-boolean v2, p1, Lcom/zui/launcher/backup/BackupController$m;->c:Z

    iget-object p1, p1, Lcom/zui/launcher/backup/BackupController$m;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/zui/launcher/backup/BackupController;->sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/zui/launcher/backup/BackupController$b;->a:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, [J

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    check-cast p0, [J

    aget-wide v6, p0, v1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/backup/BackupController;->sendBackupProgress(Landroid/content/Context;JJ)V

    :goto_0
    return-void
.end method
