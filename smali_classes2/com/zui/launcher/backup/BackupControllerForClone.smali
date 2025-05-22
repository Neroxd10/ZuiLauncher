.class public Lcom/zui/launcher/backup/BackupControllerForClone;
.super Lcom/zui/launcher/backup/BackupController;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/backup/BackupController;-><init>()V

    return-void
.end method


# virtual methods
.method protected getReceiverFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.lenovo.zui.clone.launcher.backup"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public getReceiverPermission()Ljava/lang/String;
    .locals 0

    const-string p0, "com.zui.launcher.permission.SEND_MESSAGE"

    return-object p0
.end method
