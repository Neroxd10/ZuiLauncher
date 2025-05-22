.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APP_LAST_TASK_TIME:Ljava/lang/String; = "APP_LAST_TASK_TIME"

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLocalNewAppsCache()V
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLocalAllAppList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->getLocalAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getLocalAppList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->localAppList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalNewApps()Ljava/util/List;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localNewAppInfos start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->getLocalAppList()Ljava/util/List;

    move-result-object v1

    const-string v2, "APP_LAST_TASK_TIME"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "AppInfoLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APP_LAST_TASK_TIME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    :goto_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppUtil;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localNewAppInfos end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppLoader;->a:Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
