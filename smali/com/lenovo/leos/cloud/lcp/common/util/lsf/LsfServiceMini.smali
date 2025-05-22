.class public Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$b;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$b;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->b:Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    const-string v0, "butnet"

    const-string v1, "LsfServiceMini LenovoIDApi.init start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$a;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;)V

    invoke-static {v0, v1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->init(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->b:Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->setLogoutFinishListener(Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".android.intent.action.LENOVOUSER_STATUS"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public asyncAutoRegisterLogin(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-static {p3}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;->a(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;)Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    move-result-object p0

    invoke-static {p1, p2, p0, p4, p5}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStDataByQuickLogin(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public asyncGetST(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-static {p3}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;->a(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;)Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    move-result-object p0

    invoke-static {p1, p2, p0, p4, p5}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public checkUserPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, p3, v0, p2}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->checkAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastErrorString()Ljava/lang/String;
    .locals 0

    const-string p0, "LSF Mini SDK not supported getLastErrorString"

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST_Contact()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/AccountInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getPhoneNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/AccountInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getRegistLogcation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getRegistLogcation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getST(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerAddresses(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getServerAddresses(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerAddresses(Ljava/lang/String;Ljava/util/Locale;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getServerAddresses(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStData(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;Z)V
    .locals 0

    invoke-static {p3}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;->a(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;)Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    move-result-object p0

    invoke-static {p1, p2, p0, p4}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Z)V

    return-void
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->getStatus(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getStatus(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStatus(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LenovoIDApi.getStatus "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "butnet"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->ONLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getUkiInfo(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$c;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$c;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;)V

    invoke-static {p1, v0}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getUkiInfo(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "butnet"

    const-string p2, "getUkiInfo exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getUkiInfo(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->getUkiInfo(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;)V

    return-void
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST_Contact()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getUserId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/AccountInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST_Contact()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact.cloud.lps.lenovo.com"

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->getUserId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getUserId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/AccountInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isOnline()Z
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object p0

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showAccountPage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->showAccountPage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showNewUserPasswordNotification(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->showNewUserPasswordNotification(Landroid/content/Context;)V

    return-void
.end method

.method public showSettingPage(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->showSettingPage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
