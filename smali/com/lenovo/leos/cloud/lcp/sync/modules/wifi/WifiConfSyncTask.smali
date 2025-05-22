.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->WIFICONF:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method private e(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;)Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;
    .locals 10

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->load()Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->load()Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;-><init>()V

    :cond_1
    const-string v3, "WIFICONF"

    const-string v4, "merging local & cloud wifi config."

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;->groups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;->lineProps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;

    iget-object v5, v2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;->properties:Ljava/util/Map;

    iget-object v6, v4, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->key:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;

    iget-object v4, v3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;->properties:Ljava/util/Map;

    iget-object v5, v3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->ssid:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;

    const/4 v5, 0x1

    if-nez v4, :cond_4

    iget-object v4, v2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;->properties:Ljava/util/Map;

    iget-object v6, v3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->ssid:Ljava/lang/String;

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->b:Z

    goto :goto_1

    :cond_4
    check-cast v4, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->lastModifyTime()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastModifyTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc;->timeCompare(JJ)I

    move-result v6

    if-lez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;Z)V

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private f(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;Z)V
    .locals 4

    iget-object p0, p3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, p3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    :cond_0
    iget-object p0, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    if-eqz p0, :cond_3

    iget-object p0, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;

    iget-object v0, p3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    iget-object v1, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    iget-object v3, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->key:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->b:Z

    :cond_2
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->value:Ljava/lang/String;

    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->value:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfGroup;->properties:Ljava/util/Map;

    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConfProp;->key:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->b:Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private g(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;IJ)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->newVersion(I)V

    invoke-virtual {p1, p4, p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->newModifyTime(J)V

    invoke-virtual {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->persist(Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;)V

    return-void
.end method


# virtual methods
.method d()V
    .locals 11

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;-><init>()V

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;-><init>()V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->lastVersion()I

    move-result v0

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastVersion()I

    move-result v2

    const-string v4, "time local:"

    const-string v5, " cloud:"

    const-string v6, "WIFICONF"

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->lastVersion()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cacheLastModifyTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastModifyTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " && same version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->lastVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->lastModifyTime()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastModifyTime()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-lez v0, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->isModifed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->cacheLastModifyTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastModifyTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " && diff version local:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->lastVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;)Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "merged wifi config. cloud changed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->b:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->b:Z

    const-string v4, " , modifyTime="

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfLocal;->lastVersion()I

    move-result v2

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastVersion()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persisting wifi config: ver="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    move-object v2, p0

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;IJ)V

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    move-object v0, p0

    move v3, v8

    move-wide v4, v9

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;IJ)V

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastVersion()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastModifyTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persisting local wifi config: ver="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastModifyTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastVersion()I

    move-result v4

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->lastModifyTime()J

    move-result-wide v5

    move-object v0, p0

    move v3, v4

    move-wide v4, v5

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method protected isTrackEvent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected startTask()V
    .locals 7

    const-string v0, " timecost:"

    const-string v1, "end wificonf sync  ---}}} result:"

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->start()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    move-result-object v2

    const-string v3, "WIFICONF"

    const-string v4, "start wificonf sync {{{---"

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    const v4, 0x7fffffff

    :try_start_0
    const-string v5, "checking root ..."

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->isRootRunning()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->isRooted()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "rooted device, do wifi sync."

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;->d()V

    goto :goto_1

    :cond_0
    const/16 v5, 0x2b

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const-string v5, "no root, can\'t r/w the wpa_supplicant.conf file"

    :goto_0
    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x2c

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const-string v5, "Processing root right now. Sync the wificonf later!"
    :try_end_0
    .catch Lorg/antlr/runtime/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->stop()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :catchall_0
    move-exception v5

    goto :goto_5

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->getResultCode()I

    move-result v6

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    throw v5

    :goto_3
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    const-string v5, "parse error"

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x28

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->stop()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->wholeSpan()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    return-void

    :goto_5
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->stop()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->wholeSpan()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    throw v5
.end method
