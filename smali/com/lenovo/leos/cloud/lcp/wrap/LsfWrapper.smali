.class public Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$a;,
        Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$LsfPreference;,
        Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;
    }
.end annotation


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->a:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->b:Ljava/lang/String;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->start()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getST(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->stop()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LsfWrapper._getST fromserver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " timecost \t"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->wholeSpan()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " \trealm:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LsfWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static asyncGetST(Landroid/app/Activity;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;Z)V
    .locals 1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->b(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d()V

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;Z)V

    return-void
.end method

.method public static asyncGetST(Landroid/app/Activity;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->b(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d()V

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->asyncGetST(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static asyncRegisterLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->b(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d()V

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->asyncAutoRegisterLogin(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;ZLandroid/os/Bundle;)V

    return-void
.end method

.method static declared-synchronized b(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCachedST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCachedST(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastErrorString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getLastErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegistLogcation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getRegistLogcation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->c:Ljava/lang/String;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static getST(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->b(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getST(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getST_App()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST_App(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getST_App(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getST_CallLog()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST_CallLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getST_CallLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "sms.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getST_Contact()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST_Contact(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getST_Contact(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getST_Sms()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST_Sms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getST_Sms(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "sms.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerST(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerST_App()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST_App(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerST_App(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerST_CallLog()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST_CallLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerST_CallLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "sms.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerST_Contact()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST_Contact(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerST_Contact(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerST_Sms()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST_Sms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerST_Sms(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "sms.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->start()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    const-string p0, "0"

    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->stop()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LsfWrapper.getUserId timecost \t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->wholeSpan()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LsfWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->start()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->stop()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    return-object p0
.end method

.method public static getUserStatus()I
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserStatus(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getUserStatus(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->start()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getStatus(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->stop()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    return p0
.end method

.method public static isUserLogin()Z
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isUserLogin(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static logout()Z
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$a;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static printCallStack()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LsfWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static showAccountPage(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->showAccountPage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static showAccountPage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->b(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d()V

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->showAccountPage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
