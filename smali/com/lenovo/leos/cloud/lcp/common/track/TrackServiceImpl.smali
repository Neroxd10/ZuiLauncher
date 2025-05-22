.class public final Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;


# static fields
.field private static e:Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;


# instance fields
.field private a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->LENOVO_SYNC_PACKAGE_NAME:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->a:Z

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string p0, "2.3.8"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    :cond_0
    const-string v0, "SPECIAL_TOKEN"

    const-string v1, "PJPRUFMX2B3H"

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->i()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->a:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->c()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SPECIAL_V_NAME"

    invoke-virtual {p1, v1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPECIAL_V_CODE"

    invoke-virtual {p1, v1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->a:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->f()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SPECIAL_CHANNEL"

    invoke-virtual {p1, v0, p0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    return-object p1
.end method

.method private e(Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->getExtraParam()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtras(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->getParamKey()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->getParamValue()[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->e:Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->e:Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->e:Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    return-object v0
.end method


# virtual methods
.method public TrackEvent(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    const-string v2, "dataNumber"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p2, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->g(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-void
.end method

.method public disableReport()V
    .locals 0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    return-void
.end method

.method public enableReport()V
    .locals 0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->enableReport()V

    return-void
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->d:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->d:Ljava/lang/String;

    return-object p0
.end method

.method g(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 6

    invoke-direct {p0, p4}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->d(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SYNCit"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getExtraParams()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SYNCit"

    invoke-static {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getApplicationToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->c:Ljava/lang/String;

    return-object p0
.end method

.method i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->b:Ljava/lang/String;

    return-object p0
.end method

.method public initialize()V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackServiceImpl"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isTrackerInitialized()Z
    .locals 0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result p0

    return p0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrackServiceImpl"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrackServiceImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackClickEvent(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "TrackServiceImpl"

    :try_start_0
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    const/4 v2, 0x1

    const-string v3, "userName"

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->g(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x4

    const-string v2, "dataNumber"

    invoke-virtual {v0, v1, v2, p4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->g(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->e(Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->g(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-void
.end method

.method public trackPagePause(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrackServiceImpl"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackPageResume(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrackServiceImpl"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackPause()V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackServiceImpl"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackResume()V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackServiceImpl"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackTaskEvent(Ljava/lang/String;III)V
    .locals 7

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->increaseBackgroundTask()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->getRootCauseMessage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->track(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrackServiceImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackUserAdvice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrackServiceImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public tractExternalEvent(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->increaseBackgroundTask()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->b()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil;->track(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
