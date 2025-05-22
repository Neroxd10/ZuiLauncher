.class public Lcom/zui/launcher/backup/NewCloudService;
.super Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;
    .locals 2

    new-instance v0, Lcom/zui/launcher/backup/NewCloudService$a;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/backup/NewCloudService$a;-><init>(Lcom/zui/launcher/backup/NewCloudService;Landroid/content/Context;)V

    return-object v0
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.zui.launcher"

    const-string v2, "com.zui.launcher.backup.BackupPreferenceActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method protected getAppCategory()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getAppCategory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getAppKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getAppKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchDesc()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getSwitchDesc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSwitchFlag()Z
    .locals 0

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getSwitchFlag()Z

    move-result p0

    return p0
.end method

.method public setSwitchFlag(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->setSwitchFlag(Z)V

    return-void
.end method
