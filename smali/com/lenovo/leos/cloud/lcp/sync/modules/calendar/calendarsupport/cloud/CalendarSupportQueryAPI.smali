.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCloudInfo()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "v2/countinfo"

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8c03\u7528\u83b7\u53d6\u65e5\u5386\u4e91\u7aef\u6570\u91cf\u63a5\u53e31,\u8017\u65f6"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\u6beb\u79d2"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8c03\u7528\u83b7\u53d6\u65e5\u5386\u4e91\u7aef\u6570\u91cf\u63a5\u53e32,\u8017\u65f6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "event_version"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->setVersion(J)V

    const-string v7, "event_count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->setEventCount(I)V

    const-string v7, "reminder_count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->setReminderCount(I)V

    const-string v7, "birthday_count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->setBirthdayCount(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8c03\u7528\u83b7\u53d6\u65e5\u5386\u4e91\u7aef\u6570\u91cf\u63a5\u53e33,\u8017\u65f6"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u83b7\u53d6\u65e5\u5386\u4e91\u7aef\u6570\u91cf\u63a5\u53e3\u8017\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u6beb\u79d2\uff0c\u8fd4\u56de\u7ed3\u679c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v2
.end method

.method public getLastModifyTime()J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "v2/querymodifytime"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/CalendarSupportQueryAPI;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "currenttime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u83b7\u53d6\u670d\u52a1\u5668\u65f6\u95f4\u6233\u63a5\u53e3\u8017\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u6beb\u79d2\uff0c\u8fd4\u56de\u7ed3\u679c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    const-string v0, "\u670d\u52a1\u5668\u8fd4\u56de\u7684\u65f6\u95f4\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
