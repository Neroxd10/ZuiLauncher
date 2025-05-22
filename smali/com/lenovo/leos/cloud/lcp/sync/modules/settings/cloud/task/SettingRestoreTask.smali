.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;
.source ""


# static fields
.field public static final PROBLEM_GET_SETTING_CLOUD_BEAN:Ljava/lang/String; = "PROBLEM_GET_SETTING_CLOUD_BEAN"

.field private static final i:Ljava/lang/String;


# instance fields
.field private f:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

.field private g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

.field private h:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingFileUtil;->getPackageFilePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->e(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v3

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v3

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0
.end method

.method private e(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 10

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x800

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v0, [B

    invoke-virtual {p1, v4, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v6, v5

    :goto_0
    if-lez v5, :cond_1

    invoke-virtual {p2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    long-to-float v5, v6

    long-to-float v8, p3

    div-float/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->notifySubProgress(F)V

    invoke-virtual {p1, v4, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p1, p0, v3

    aput-object p2, p0, v1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    new-array p3, v2, [Ljava/io/Closeable;

    aput-object p1, p3, v3

    aput-object p2, p3, v1

    invoke-static {p3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method private f()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->h:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "PROBLEM_GET_SETTING_CLOUD_BEAN"

    invoke-interface {v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->h:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->h:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cant find SettingCloudBean, can\'t do restore task!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g(Ljava/lang/Long;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v1/getdata?data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getAppConfigServer()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "contact.cloud.lps.lenovo.com"

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "data_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "attachment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "SettingProtocol.ITEM_DATA is null"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->d(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    :cond_1
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {p1, v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->putSettingValue(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dataValue don\'t null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected notifySubProgress(F)V
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->progressStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->i:Ljava/lang/String;

    const-string p1, "notifyStepProgress stepProgress paramter ERROR"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x42a00000    # 80.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr p1, v0

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    goto :goto_0

    :pswitch_3
    mul-float/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected startTask()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    const/16 v0, 0x65

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->f()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getDataId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->g(Ljava/lang/Long;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->h(Lorg/json/JSONObject;)V

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->close()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->removePackageFile()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build json error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v0, :cond_1

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_2

    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    :cond_2
    return-void

    :goto_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->close()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->removePackageFile()V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    throw v0
.end method
