.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->a:Landroid/content/Context;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;
    .locals 2

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getDataurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppDataSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->realsize:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getZipedAppDataSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataSize:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->isBackup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->backup:Z

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->checkSum:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->size:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->time:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getMatch()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->match:I

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getVersionCode()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->versionCode:I

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;
    .locals 2

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->value()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appStatus:I

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getDataBackupTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataBackupTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppDataSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataSize:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getExcludeDataDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->excludeDataDir:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getDataDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataDir:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPKMD5()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->checkSum:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->deleteAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;
    .locals 3

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;-><init>()V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setIconUrl(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->setDataurl(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->realsize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppDataSize(Ljava/lang/Long;)V

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setZipedAppDataSize(Ljava/lang/Long;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;-><init>()V

    iget-boolean v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->backup:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setBackup(Z)V

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->checkSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setMd5(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->size:J

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setSize(J)V

    iget-wide v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->time:J

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setTime(J)V

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setUrl(Ljava/lang/String;)V

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->match:I

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setMatch(I)V

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setVersionCode(I)V

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setVersionName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->setVersion(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;)V

    return-object p0
.end method

.method private e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->getAppInfoFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;-><init>()V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->checkSum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->setPKMD5(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->setDataDir(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->excludeDataDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->setExcludeDataDir(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataBackupTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setDataBackupTime(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppDataSize(Ljava/lang/Long;)V

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appStatus:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->CLOUD_RECOMMEND_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_COMPATIBLE_NEW:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_7
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_8
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_9
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    goto :goto_0

    :pswitch_a
    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    return-object v0
.end method


# virtual methods
.method public addCloudListAndDeleteOld(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->c()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->insert(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public addLocalListAndDeleteOld(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->c()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->insert(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getAll(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->queryAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method public isAppDataTask()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->queryByFirst()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
