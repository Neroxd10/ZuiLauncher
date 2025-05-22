.class Lcom/zui/launcher/backup/BackupController$j;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController;->y(Landroid/content/Context;)V
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

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/zui/launcher/backup/BackupController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$j;->d:Lcom/zui/launcher/backup/BackupController;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$j;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/launcher/backup/BackupController$j;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/zui/launcher/backup/BackupController$j;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$j;->d:Lcom/zui/launcher/backup/BackupController;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController$j;->b:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$j;->c:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1, p0}, Lcom/zui/launcher/backup/BackupController;->e(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController$j;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
