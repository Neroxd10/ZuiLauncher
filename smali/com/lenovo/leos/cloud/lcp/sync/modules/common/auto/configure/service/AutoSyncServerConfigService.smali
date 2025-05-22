.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/AutoSyncServerConfigService;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/ConfigBaseService;
.source ""


# static fields
.field public static final KEY_AUTO_ENABLE:Ljava/lang/String; = "enable"

.field public static final KEY_AUTO_INTERNAL:Ljava/lang/String; = "interval"

.field public static final KEY_AUTO_MODULE:Ljava/lang/String; = "module"

.field public static final KEY_NETWORK_STRATEGY:Ljava/lang/String; = "network_strategy"

.field public static final VAL_MODULE_CALENDAR:Ljava/lang/String; = "calendar"

.field public static final VAL_MODULE_CALLLOG:Ljava/lang/String; = "callhistory"

.field public static final VAL_MODULE_CONTACT:Ljava/lang/String; = "contact"

.field public static final VAL_MODULE_SMS:Ljava/lang/String; = "sms"

.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/ConfigBaseService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/ConfigBaseService;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    const-string p0, "CONTACT_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CONTACT_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CONTACT_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "SMS_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "SMS_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "SMS_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CALLLOG_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CALLLOG_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CALLLOG_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CALENDAR_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CALENDAR_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CALENDAR_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/ConfigBaseService;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/AutoSyncServerConfigService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/AutoSyncServerConfigService;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/ConfigBaseService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/AutoSyncServerConfigService;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/AutoSyncServerConfigService;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/AutoSyncServerConfigService;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/ConfigBaseService;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/AutoSyncServerConfigService;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/ConfigBaseService;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public resolveJson(Lorg/json/JSONObject;)V
    .locals 8

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/configure/service/AutoSyncServerConfigService;->a()V

    const-string p0, "result"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "auto_config"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "module"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "interval"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "network_strategy"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mod:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",enable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",internal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",networkStrategyInt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CalendarAutoSyncTask"

    invoke-static {v7, v6}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "contact"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, "CONTACT_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    const-string v3, "CONTACT_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "CONTACT_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    :goto_1
    invoke-static {v3, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_0
    const-string v6, "sms"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v3, "SMS_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    const-string v3, "SMS_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "SMS_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    goto :goto_1

    :cond_1
    const-string v6, "callhistory"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v3, "CALLLOG_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    const-string v3, "CALLLOG_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "CALLLOG_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    goto :goto_1

    :cond_2
    const-string v6, "calendar"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "CALENDAR_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    const-string v3, "CALENDAR_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "CALENDAR_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
