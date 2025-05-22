.class public Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;
    }
.end annotation


# static fields
.field private static c:Landroid/os/IBinder;

.field protected static taskHolderManager:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected createHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$a;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;Landroid/content/Context;)V

    return-object v0
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAppCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->b:Ljava/lang/String;

    return-object p0
.end method

.method protected getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected getBinder(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lcp.profile.appkey."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "lcp.profile.category."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->b:Ljava/lang/String;

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->c:Landroid/os/IBinder;

    if-nez p1, :cond_5

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$b;-><init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;)V

    sput-object p1, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->c:Landroid/os/IBinder;

    :cond_5
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->c:Landroid/os/IBinder;

    return-object p0

    :cond_6
    :goto_1
    const-string p0, "LogUtil"

    const-string p1, "AbsProfileCommonService \'appKey\' or \'category\' is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-object v1
.end method

.method protected getHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->taskHolderManager:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->createHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->taskHolderManager:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->taskHolderManager:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->setAppKey(Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->taskHolderManager:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->setCategory(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->taskHolderManager:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    return-object p0
.end method

.method public getSwitchDesc()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSwitchFlag()Z
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getSwitchKey()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getSwitchKey()Ljava/lang/String;
    .locals 0

    const-string p0, "profileCommonServiceSwitchKey"

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getBinder(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public setSwitchFlag(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->getSwitchKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method
