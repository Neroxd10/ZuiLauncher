.class Lcom/zui/launcher/backup/BackupController$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController;->getBackupTime(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$a;->b:Lcom/zui/launcher/backup/BackupController;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$a;->b:Lcom/zui/launcher/backup/BackupController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/backup/BackupController;->u(Lcom/zui/launcher/backup/BackupController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$a;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$a;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/zui/launcher/backup/BackupController;->p(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)I

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$a;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$a;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/zui/launcher/backup/BackupController;->c(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$a;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p1}, Lcom/zui/launcher/backup/BackupController;->m(Lcom/zui/launcher/backup/BackupController;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "time"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/zui/launcher/backup/BackupController;->b(Lcom/zui/launcher/backup/BackupController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$a;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/zui/launcher/backup/BackupController;->n(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$a;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$a;->a:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/backup/BackupController;->sendTimeToCloudService(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$a;->b:Lcom/zui/launcher/backup/BackupController;

    invoke-static {p0}, Lcom/zui/launcher/backup/BackupController;->t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController$a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
