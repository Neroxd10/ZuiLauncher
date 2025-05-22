.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;
.source ""


# static fields
.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;


# instance fields
.field a:Z

.field b:I

.field c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->a:Z

    return-void
.end method

.method public static cachePath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "wpa_supplicant.cache"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static confPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 6

    const-string p0, "WIFICONF"

    const-string v0, "copyCacheToRealConf"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->prepareDeputy()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->open()Z

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->wifiScanAlwaysEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->wifiScanAlwaysEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->wifiOn()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->wifiOn(Z)V

    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cp -f -p "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->confPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->runRootCommand(Ljava/lang/String;)Z

    const-string v2, "copy Cache To wpa_supplicants.conf"

    invoke-static {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->wifiOn(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    const-wide/16 v1, 0x2710

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->wifiScanAlwaysEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->close()V

    :cond_5
    throw p0
.end method


# virtual methods
.method public cacheLastModifyTime()J
    .locals 2

    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method e(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;

    iget-object v0, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;

    if-eqz v0, :cond_6

    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    if-eqz v2, :cond_5

    iget-object p2, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    iget-object v4, v2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->key:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->value:Ljava/lang/String;

    iget-object v2, v2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->value:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_4
    return v1

    :cond_5
    iget-object p2, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    if-eq p2, v0, :cond_2

    :cond_6
    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method f(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfPreference;->newLastSyncTime(J)V

    return-void
.end method

.method g()J
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfPreference;->lastSyncTime()J

    move-result-wide v0

    return-wide v0
.end method

.method h()V
    .locals 3

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v0

    const-string v1, "mount -o remount,rw /"

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->runRootCommand(Ljava/lang/String;)Z

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp -f -p "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->confPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->runRootCommand(Ljava/lang/String;)Z

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 666 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->runRootCommand(Ljava/lang/String;)Z

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->a:Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/exception/WifiConfEx;

    const/16 v0, 0x8

    const-string v1, "No wpa_supplicant.conf found"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/exception/WifiConfEx;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method i()V
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v0

    const-string v1, "mount -o remount,rw /"

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->runRootCommand(Ljava/lang/String;)Z

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->c:J

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc;->changeLastModifyTime(Ljava/lang/String;J)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 660 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->runRootCommand(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->d()V

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->f(J)V

    return-void
.end method

.method public isModifed()Z
    .locals 4

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->lastModifyTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc;->timeCompare(JJ)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->a(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->cloudCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->a(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;->groups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;->groups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->e(Ljava/util/List;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/antlr/runtime/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/antlr/runtime/RecognitionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public lastModifyTime()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cacheLastModifyTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public lastVersion()I
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfPreference;->lastSyncVersion()I

    move-result p0

    return p0
.end method

.method public load()Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->h()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->a(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    move-result-object p0

    return-object p0
.end method

.method public newModifyTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->c:J

    return-void
.end method

.method public newVersion(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->b:I

    return-void
.end method

.method public persist(Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cachePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->b(Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->i()V

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->b:I

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfPreference;->newLastSyncVersion(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->a:Z

    :cond_0
    return-void
.end method
