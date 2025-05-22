.class public final Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/pimapi/"

    const-string v2, "http://cloud.lenovo.com/pimapi/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpim001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/smsapi/"

    const-string v2, "http://cloud.lenovo.com/smsapi/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "rpms001"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v3, "http://223.202.19.37/mmsapi/"

    const-string v5, "http://cloud.lenovo.com/mmsapi/"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "rmms001"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/appapi/"

    const-string v2, "http://cloud.lenovo.com/appapi/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpca001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/photoapi/"

    const-string v2, "http://cloud.lenovo.com/photoapi/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpcp001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/docapi/"

    const-string v2, "http://cloud.lenovo.com/docapi/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpdo001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/active/"

    const-string v2, "http://cloud.lenovo.com/active/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpat001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/netdisk/"

    const-string v2, "http://cloud.lenovo.com/netdisk/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpng001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/fileapi/"

    const-string v2, "http://pimapi.lenovomm.com/fileapi/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpcf001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/calapi/"

    const-string v2, "http://pimapi.lenovomm.com/calapi/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpcd002"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.202.19.37/appconfig/"

    const-string v2, "http://cloud.lenovo.com/appconfig/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpco001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://123.150.177.8"

    const-string v2, "http://123.150.177.9"

    const-string v3, "http://125.39.185.143"

    const-string v4, "http://cos.lenovows.com"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rdisk001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "https://123.150.177.8"

    const-string v2, "https://123.150.177.9"

    const-string v3, "https://125.39.185.143"

    const-string v4, "https://air.lenovows.com"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rdisk002"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://223.6.251.130"

    const-string v2, "http://iocos.lenovows.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rdisk003"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://pbs.lenovomm.com/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpbs001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://fus.lenovomm.com/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rfus001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "https://pay.lenovomm.com/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpay001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://psb.lenovomm.com/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpsb001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "https://uss.lenovomm.com/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "russ001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://wth.lenovomm.com/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rwthr01"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    const-string v1, "http://ams.lenovomm.com/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "rapp001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a:Ljava/util/Map;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "rwebdsk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "rpbs001"

    return-object p0

    :cond_0
    const-string v0, "rfw0001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "rfus001"

    return-object p0

    :cond_1
    const-string v0, "pay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "rpay001"

    return-object p0

    :cond_2
    const-string v0, "psb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "rpsb001"

    return-object p0

    :cond_3
    const-string v0, "uss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "russ001"

    return-object p0

    :cond_4
    const-string v0, "wth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "rwthr01"

    :cond_5
    return-object p0
.end method

.method public static getActivitiesServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpat001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppCDNServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "racdn001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppConfigServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpco001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpca001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalendarsServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpcd002"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalllogServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpms001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpim001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirFileServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpcf001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDocServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpdo001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rmms001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetDiskServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpng001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetDiskServer1()[Ljava/lang/String;
    .locals 1

    const-string v0, "rdisk001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetDiskServer2()[Ljava/lang/String;
    .locals 1

    const-string v0, "rdisk002"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetDiskServer3()[Ljava/lang/String;
    .locals 1

    const-string v0, "rdisk003"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpcp001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const-string v0, "contact.cloud.lps.lenovo.com"

    const-string v1, "LDSUtil"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LcpConfigHub.init().getLenovoPsService().isOnline, cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LcpConfigHub.init().getLenovoPsService().getST, cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getRegistLogcation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LcpConfigHub.init().getLenovoPsService().getRegistLogcation, cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v0, v4

    :goto_0
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getServerAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LcpConfigHub.init().getLenovoPsService().getServerAddresses, no registLocation, cost:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    move-result-object v7

    new-instance v8, Ljava/util/Locale;

    const-string v9, ""

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, p0, v8}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;->getServerAddresses(Ljava/lang/String;Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LcpConfigHub.init().getLenovoPsService().getServerAddresses, has registLocation, cost:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v4, :cond_4

    array-length v0, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, v4, v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getServerAddresses,  cost:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_4
    :goto_4
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSmsServer()[Ljava/lang/String;
    .locals 1

    const-string v0, "rpms001"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
