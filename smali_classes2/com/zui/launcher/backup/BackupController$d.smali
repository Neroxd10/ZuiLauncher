.class Lcom/zui/launcher/backup/BackupController$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController;->z(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$d;->b:Lcom/zui/launcher/backup/BackupController;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$d;->b:Lcom/zui/launcher/backup/BackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/backup/BackupController;->a(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/backup/BackupController;->sendTimeToCloudService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
