.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SelectableAppInfo"


# instance fields
.field protected appDataSize:Ljava/lang/Long;

.field protected appInfo:Landroid/content/pm/ApplicationInfo;

.field protected appStatus:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field protected currentProgress:I

.field protected dataBackupTime:Ljava/lang/String;

.field protected formatVersionName:Ljava/lang/String;

.field protected icon:Landroid/graphics/drawable/Drawable;

.field protected iconUrl:Ljava/lang/String;

.field protected id:I

.field protected index:I

.field protected installStatus:I

.field protected installing:Z

.field protected isProgressing:Z

.field protected isSelectable:Z

.field protected name:Ljava/lang/String;

.field protected packageName:Ljava/lang/String;

.field protected selected:Z

.field protected size:J

.field protected versionAndSize:Ljava/lang/String;

.field protected versionName:Ljava/lang/String;

.field protected zipedDataSize:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->isSelectable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->installing:Z

    return-void
.end method


# virtual methods
.method public abstract asJson()Lorg/json/JSONObject;
.end method

.method public clearCacheData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->zipedDataSize:Ljava/lang/Long;

    return-void
.end method

.method public clearDataBackupTime()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->dataBackupTime:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getVersionCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getVersionCode()I

    move-result p1

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getAppDataSize()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appDataSize:Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appStatus:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    return-object p0
.end method

.method public declared-synchronized getAppVersion()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->formatVersionName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->formatVersionName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->formatVersionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentProgress()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->currentProgress:I

    return p0
.end method

.method public getDataBackupTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->dataBackupTime:Ljava/lang/String;

    return-object p0
.end method

.method public getFormatVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->formatVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->id:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->index:I

    return p0
.end method

.method public getInstallStatus()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->installStatus:I

    return p0
.end method

.method public getMBSize()D
    .locals 4

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppDataSize()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->getMBSize(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->selected:Z

    return p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->size:J

    return-wide v0
.end method

.method public getVersionAndSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->versionAndSize:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getVersionCode()I
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public getZipedAppDataSize()Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->zipedDataSize:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->zipedDataSize:Ljava/lang/Long;

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppDataSize()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appDataSize:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appStatus:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->currentProgress:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->dataBackupTime:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->formatVersionName:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->iconUrl:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->id:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->index:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->installing:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_7

    :cond_7
    move v3, v5

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->isProgressing:Z

    if-eqz v3, :cond_8

    move v3, v4

    goto :goto_8

    :cond_8
    move v3, v5

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->isSelectable:Z

    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_9

    :cond_9
    move v3, v5

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->selected:Z

    if-eqz v3, :cond_c

    goto :goto_c

    :cond_c
    move v4, v5

    :goto_c
    add-int/2addr v0, v4

    mul-int/2addr v0, v2

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->size:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->versionAndSize:Ljava/lang/String;

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->versionName:Ljava/lang/String;

    if-nez p0, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    return v0
.end method

.method public isInstalling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->installing:Z

    return p0
.end method

.method public isProgressing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->isProgressing:Z

    return p0
.end method

.method public isSelectable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->isSelectable:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->selected:Z

    return p0
.end method

.method public setAppDataSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appDataSize:Ljava/lang/Long;

    return-void
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appStatus:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    return-void
.end method

.method public setCurrentProgress(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->currentProgress:I

    return-void
.end method

.method public setDataBackupTime(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->dataBackupTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SelectableAppInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setFormatVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->formatVersionName:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->id:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->index:I

    return-void
.end method

.method public setInstallStatus(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->installStatus:I

    return-void
.end method

.method public setInstalling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->installing:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setProgressing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->isProgressing:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->isSelectable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->isSelectable:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->selected:Z

    :cond_0
    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->size:J

    return-void
.end method

.method public setVersionAndSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->versionAndSize:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setZipedAppDataSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->zipedDataSize:Ljava/lang/Long;

    return-void
.end method
