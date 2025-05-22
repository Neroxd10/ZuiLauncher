.class public final Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ERROR_NETWORK:I = -0x1

.field public static final ERROR_NO_ALBUM:I = 0x195

.field public static final ERROR_NO_SPACE:I = 0x193

.field public static final ERROR_PARAMS:I = 0x190

.field public static final ERROR_UNKNOWN:I = 0x1a1

.field private static a:[Ljava/lang/String;

.field private static b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getPhotoServer()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v1

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    const-string v3, "v2/netdisk/config"

    const-string v4, "photo.cloud.lps.lenovo.com"

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v1

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->a:[Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b()Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;
    .locals 3

    const-string v0, "com.lenovo.leos.cloud.lcp.common.track.TrackServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;

    return-object v0
.end method

.method private static c()Z
    .locals 3

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getPhotoServer()[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->a:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static initLenovoTrackService()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->b()Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->setTrackService(Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static loadPilotParameter()V
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->a()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    const-string v2, "keyid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setDeveloperKid(Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setDeveloperKey(Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setAppId(Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getNetDiskServer1()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setCosURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getNetDiskServer2()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setAirURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getNetDiskServer3()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setIocosURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized reaperRecord(Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 0

    const-class p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
