.class Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;
.super Lcom/lenovo/leos/cloud/lcp/common/service/ISyncService$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ISyncService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask(I)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->cancelTask(I)V

    return-void
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getActivityIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->a(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastTaskResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->getLastTaskResult()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastTaskResultForTaskType(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->getLastTaskResultForTaskType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportTaskTypeDescs()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->getSupportTaskTypeDescs()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportTaskTypes()[I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->getSupportTaskTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getSwitchDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getSwitchDesc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchFlag()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getSwitchFlag()Z

    move-result p0

    return p0
.end method

.method public isTaskRunning(I)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->isTaskRunning(I)Z

    move-result p0

    return p0
.end method

.method public setSwitchFlag(Z)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->setSwitchFlag(Z)V

    return-void
.end method

.method public startTask(I)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->startTask(I)V

    return-void
.end method
