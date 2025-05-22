.class public abstract Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TASK_TYPE_BACKUP:I = 0x1

.field public static final TASK_TYPE_RESTORE:I = 0x2


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->h(ILandroid/os/Bundle;)V

    return-void
.end method

.method private e(Ljava/io/InputStream;[B)I
    .locals 3

    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p0, :cond_0

    sub-int v1, p0, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 14

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->getResultStorageFile()Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    :goto_0
    const-wide/16 v9, 0x8

    add-long/2addr v4, v9

    cmp-long v11, v4, v2

    if-gez v11, :cond_6

    :try_start_1
    invoke-direct {p0, v8, v6}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->g(Ljava/io/FileInputStream;[I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    aget v11, v6, v11

    const/4 v12, 0x1

    aget v12, v6, v12

    if-eqz p1, :cond_3

    if-eq v12, p1, :cond_1

    int-to-long v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    goto :goto_1

    :cond_1
    new-array v9, v11, [B

    invoke-direct {p0, v8, v9}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->e(Ljava/io/InputStream;[B)I

    move-result v10

    if-eq v11, v10, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v9

    :goto_1
    int-to-long v9, v11

    add-long/2addr v4, v9

    goto :goto_0

    :cond_3
    int-to-long v12, v11

    add-long/2addr v4, v12

    add-long/2addr v9, v4

    cmp-long v9, v9, v2

    if-gez v9, :cond_4

    invoke-virtual {v8, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    goto :goto_0

    :cond_4
    new-array v2, v11, [B

    invoke-direct {p0, v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->e(Ljava/io/InputStream;[B)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v11, p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object v1

    :cond_7
    :try_start_3
    new-instance p0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v8, v7

    :goto_3
    :try_start_5
    const-string v0, "butnet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLastTaskResultForTaskType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exception"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_8

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_8
    return-object v7

    :catchall_1
    move-exception p0

    move-object v7, v8

    :goto_4
    if-eqz v7, :cond_9

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_9
    throw p0

    :cond_a
    :goto_5
    return-object v1
.end method

.method private g(Ljava/io/FileInputStream;[I)Z
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->e(Ljava/io/InputStream;[B)I

    move-result p0

    const/4 p1, 0x0

    if-eq v0, p0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read result header len:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "butnet"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    aput v0, p2, p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    const/4 p1, 0x1

    aput p0, p2, p1

    return p1
.end method

.method private h(ILandroid/os/Bundle;)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->getResultStorageFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    const-string p2, "butnet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTaskResult "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method


# virtual methods
.method public cancelTask(I)V
    .locals 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    move-result-object v0

    new-array p0, p0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->cancel([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    :cond_2
    return-void
.end method

.method protected genProblemResolver(I)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;
    .locals 0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)V

    return-object p1
.end method

.method public genProgressListener(I)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;-><init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;I)V

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->b:Ljava/lang/String;

    return-object p0
.end method

.method protected getBackupEntity()Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method public getLastTaskResult()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastTaskResultForTaskType(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProgressListener()Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getResultStorageFile()Ljava/io/File;
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "lcp-task-result.dat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportTaskTypeDescs()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportTaskTypes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public isTaskRunning(I)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public queryLatestProfile()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryLatestProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object p0

    return-object p0
.end method

.method public queryProfileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected final setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->b:Ljava/lang/String;

    return-void
.end method

.method protected abstract setBackupEntiy(Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->c:Ljava/lang/String;

    return-void
.end method

.method public startBackup()V
    .locals 4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->genProgressListener(I)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->genProblemResolver(I)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    new-array p0, v2, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const/4 v1, 0x0

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v2, p0, v1

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->backup([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startRestore()V
    .locals 4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->genProgressListener(I)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->genProblemResolver(I)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    const/4 v1, 0x0

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    aput-object v2, p0, v1

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->restore([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startTask(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->startRestore()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->startBackup()V

    :goto_0
    return-void
.end method
