.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;
.source ""


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;->a:Landroid/content/Context;

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

    const-string p0, "CALENDAR_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CALENDAR_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "CALENDAR_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "BOOKMARK_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "BOOKMARK_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string p0, "BOOKMARK_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;
    .locals 1

    const-class p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public resolveJson(Lorg/json/JSONObject;)V
    .locals 6

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;->a()V

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

    if-lez p1, :cond_4

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "module"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "interval"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "network_strategy"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "contact"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, "CONTACT_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    const-string v2, "CONTACT_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "CONTACT_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    :goto_1
    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_0
    const-string v5, "sms"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "SMS_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    const-string v2, "SMS_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "SMS_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    goto :goto_1

    :cond_1
    const-string v5, "calendar"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "CALENDAR_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    const-string v2, "CALENDAR_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "CALENDAR_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    goto :goto_1

    :cond_2
    const-string v5, "bookmark"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BOOKMARK_IS_AUTO_SYNC_SERVER_CONFIG"

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Ljava/lang/String;Z)V

    const-string v2, "BOOKMARK_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    invoke-static {v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "BOOKMARK_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
