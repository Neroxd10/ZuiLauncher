.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->getAllAppDirList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->getPhoneAppDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->b(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ".apk"

    invoke-static {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->getFileByDir(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_1
    :try_start_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-direct {v4, p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p0, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->e(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getVersionCode()I

    move-result v5

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getVersionCode()I

    move-result v6

    if-ne v5, v6, :cond_4

    instance-of v5, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    if-eqz v5, :cond_4

    move-object v3, v4

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->setDataZipFile(Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getDataSize()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppDataSize(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setZipedAppDataSize(Ljava/lang/Long;)V

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->recycleAppFileSpace(Ljava/io/File;)V

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public static deleteApkFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;)V
    .locals 1

    instance-of v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    :goto_0
    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->asFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->recycleAppFileSpace(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getVersionCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getVersionCode()I

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;

    const/4 v3, 0x1

    move v5, v1

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-static {v5, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->compareToVersionCode(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)I

    move-result v6

    if-lez v6, :cond_1

    invoke-static {v2, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->deleteApkFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;)V

    move-object v2, v5

    goto :goto_1

    :cond_1
    invoke-static {v5, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->deleteApkFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {v2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->compareToVersionCode(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)I

    move-result v5

    move v1, v3

    :cond_3
    if-eqz v1, :cond_6

    if-lez v5, :cond_4

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    invoke-static {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->deleteApkFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;)V

    goto :goto_2

    :cond_5
    invoke-static {v2, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->deleteApkFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;)V

    :goto_2
    return-object v0

    :cond_6
    :goto_3
    return-object v2

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static getFileByDir(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader$a;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstallAppList(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->tryToFoundAppDataList()Ljava/util/Map;

    move-result-object v1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->d(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppLoader;->c(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public static tryToFoundAppDataList()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->getAllAppDataDirList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    const-string v6, "(.*)[.]size(\\d*)[.]version(\\d*)[.]tar[.]gz"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;-><init>()V

    invoke-virtual {v7, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->setFile(Ljava/io/File;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->setDataSize(Ljava/lang/Long;)V

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->setVersionCode(I)V

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
