.class Lcom/zui/launcher/backup/BackupController$i;
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

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$i;->b:Lcom/zui/launcher/backup/BackupController;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$i;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$i;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "no_launcher_backup"

    invoke-virtual {v0, p0, v1, v1, v2}, Lcom/zui/launcher/backup/BackupController;->sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V

    return-void
.end method
