.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$UpDownEvent;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$a;
    }
.end annotation


# static fields
.field static d:Ljava/lang/String;


# instance fields
.field a:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

.field b:J

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->a:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->c:I

    return-void
.end method

.method public static cloudCachePath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->d:Ljava/lang/String;

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

    const-string v0, "wpa_supplicant.cloud"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method d()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    const-string v1, "LeSyWifiKey"

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "LeSyWifiGroup"

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->setCategory(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "confMetaLastModify"

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "confMetaVersion"

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method e()I
    .locals 8

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->f()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    move-result-object v1

    const/16 v0, 0x4e20

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->setDefaulTimeout(I)V

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$UpDownEvent;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$UpDownEvent;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getAttachment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getSize()J

    move-result-wide v3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->cloudCachePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->download2File(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download wifi conf from cloud resultcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WIFICONF"

    invoke-static {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/exception/WifiConfEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/exception/WifiConfEx;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method declared-synchronized f()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->a:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    move-result-object v0

    const-string v1, "LeSyWifiKey"

    const-string v2, "LeSyWifiGroup"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryLatestProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->a:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->getLastError()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->a:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$a;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->b:J

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$a;->b()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->c:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/exception/WifiConfEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get lastmeta error , result code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/exception/WifiConfEx;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->a:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()V
    .locals 4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$UpDownEvent;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud$UpDownEvent;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->setDefaulTimeout(I)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->d()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    move-result-object p0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/entity/MetadataEntity;

    invoke-direct {v2, p0}, Lcom/lenovo/leos/cloud/lcp/file/entity/MetadataEntity;-><init>(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->cloudCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    invoke-direct {v3, v2, p0}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V

    invoke-virtual {v1, v0, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload wifi conf failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFICONF"

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/exception/WifiConfEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadCache2Cloud failed with code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/exception/WifiConfEx;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public lastModifyTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->f()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->b:J

    return-wide v0
.end method

.method public lastVersion()I
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->f()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->c:I

    return p0
.end method

.method public load()Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->cloudCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->cloudCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->a(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public newModifyTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->b:J

    return-void
.end method

.method public newVersion(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->c:I

    return-void
.end method

.method public persist(Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->cloudCachePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfFile;->b(Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfCloud;->g()V

    :cond_0
    return-void
.end method
