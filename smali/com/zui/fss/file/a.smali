.class public Lcom/zui/fss/file/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile d:Lcom/zui/fss/file/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zui/fss/file/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/zui/fss/file/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/fss/file/a;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/zui/fss/file/a;->i()V

    return-void
.end method

.method static synthetic a(Lcom/zui/fss/file/a;Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/oss/OSSClient;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/fss/file/a;->b(Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/zui/fss/file/a;
    .locals 2

    sget-object v0, Lcom/zui/fss/file/a;->d:Lcom/zui/fss/file/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/zui/fss/file/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/fss/file/a;->d:Lcom/zui/fss/file/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/fss/file/a;

    invoke-direct {v1, p0}, Lcom/zui/fss/file/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zui/fss/file/a;->d:Lcom/zui/fss/file/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/zui/fss/file/a;->d:Lcom/zui/fss/file/a;

    return-object p0
.end method

.method private b(Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/oss/OSSClient;
    .locals 10

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "endpoint"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reqId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "accessKey"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "accessKeySecret"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "accessToken"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "accessExpiration"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    const/16 v3, 0x3a98

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zui/fss/file/p;

    invoke-direct {v0, p0, v2}, Lcom/zui/fss/file/p;-><init>(Lcom/zui/fss/file/a;Ljava/lang/String;)V

    new-instance v2, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object p0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    return-object v2

    :cond_1
    new-instance v0, Lcom/zui/fss/file/q;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/zui/fss/file/q;-><init>(Lcom/zui/fss/file/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object p0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    return-object v2
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/alibaba/sdk/android/oss/OSSClient;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 8

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    invoke-direct {v0, p6, p7}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p6, Lcom/zui/fss/file/l;

    move-object v1, p6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p7

    move-object v5, p5

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/zui/fss/file/l;-><init>(Lcom/zui/fss/file/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V

    invoke-virtual {p1, v0, p6}, Lcom/alibaba/sdk/android/oss/OSSClient;->asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/alibaba/sdk/android/oss/OSSClient;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 9

    move-object v1, p0

    move-object v6, p1

    move-object v0, p2

    move-object v4, p3

    move-object v2, p6

    move-object/from16 v5, p7

    if-eqz p8, :cond_1

    new-instance v7, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-direct {v7, p6, v5, p2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zui/fss/file/u;

    invoke-direct {v0, p0, p3}, Lcom/zui/fss/file/u;-><init>(Lcom/zui/fss/file/a;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/fss_record/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setRecordDirectory(Ljava/lang/String;)V

    const-wide/32 v2, 0x80000

    invoke-virtual {v7, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setPartSize(J)V

    new-instance v8, Lcom/zui/fss/file/x;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/zui/fss/file/x;-><init>(Lcom/zui/fss/file/a;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Lcom/alibaba/sdk/android/oss/OSSClient;->asyncResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v7, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-direct {v7, p6, v5, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zui/fss/file/d;

    invoke-direct {v0, p0, p3}, Lcom/zui/fss/file/d;-><init>(Lcom/zui/fss/file/a;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance v8, Lcom/zui/fss/file/g;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/zui/fss/file/g;-><init>(Lcom/zui/fss/file/a;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Lcom/alibaba/sdk/android/oss/OSSClient;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/zui/fss/file/a;Lcom/alibaba/sdk/android/oss/OSSClient;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/zui/fss/file/a;->c(Lcom/alibaba/sdk/android/oss/OSSClient;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/zui/fss/file/a;Lcom/alibaba/sdk/android/oss/OSSClient;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/zui/fss/file/a;->d(Lcom/alibaba/sdk/android/oss/OSSClient;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/zui/fss/file/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/file/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/zui/fss/file/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method private i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "ServerAddress"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zui/fss/b/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/zui/fss/file/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private k()Lcom/zui/fss/file/c;
    .locals 2

    new-instance v0, Lcom/zui/fss/file/c;

    invoke-direct {v0}, Lcom/zui/fss/file/c;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/fss/file/c;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/fss/file/a;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/zui/fss/file/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/zui/fss/file/a;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/fss/file/a;->o(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/zui/fss/file/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/fss/file/a;->n(Ljava/lang/String;)V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/fss/file/a;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/fss/file/a;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private o(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/fss/file/a;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/fss/file/a;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Fss"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTaskExsit ConcurrentModificationException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/zui/fss/api/IFssApi$ProgressCallback;Z)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zui/fss/api/IFssApi$ProgressCallback;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v7, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadFile fileKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\\"

    if-nez v2, :cond_1

    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/fss/file/a;->k()Lcom/zui/fss/file/c;

    move-result-object v8

    move-object v1, p0

    iget-object v0, v1, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v9

    new-instance v10, Lcom/zui/fss/file/m;

    move-object v0, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object v4, v8

    move/from16 v5, p8

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/zui/fss/file/m;-><init>(Lcom/zui/fss/file/a;Ljava/io/File;Lcom/zui/fss/api/IFssApi$ProgressCallback;Lcom/zui/fss/file/c;ZLjava/lang/String;)V

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/zui/fss/file/FssPermission$a;)Lcom/android/volley/Request;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/zui/fss/file/c;->c(Lcom/android/volley/Request;)V

    invoke-virtual {v8}, Lcom/zui/fss/file/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileKey contains / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fileKey contains \\ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const-string v1, "file key is invalid, contains \'/\' or \'\\\',  or too long!"

    move-object/from16 v2, p7

    invoke-interface {v2, p4, v0, v1}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFile fileKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\\"

    if-nez v2, :cond_2

    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-direct {p0}, Lcom/zui/fss/file/a;->k()Lcom/zui/fss/file/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v1

    new-instance v8, Lcom/zui/fss/file/n;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, v0

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/zui/fss/file/n;-><init>(Lcom/zui/fss/file/a;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Lcom/zui/fss/file/c;Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/file/FssPermission$a;)Lcom/android/volley/Request;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/fss/file/c;->c(Lcom/android/volley/Request;)V

    invoke-virtual {v0}, Lcom/zui/fss/file/c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fileKey contains / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", fileKey contains \\ "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    const-string p1, "file key is invalid, contains \'/\' or \'\\\',  or too long!"

    invoke-interface {p6, p4, p0, p1}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/fss/file/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/fss/file/c;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "really cancel task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/zui/fss/file/c;->e()V

    invoke-direct {p0, p1}, Lcom/zui/fss/file/a;->n(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/zui/fss/api/IFssApi$ListFilesCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v1

    new-instance v7, Lcom/zui/fss/file/r;

    invoke-direct {v7, p0, p6}, Lcom/zui/fss/file/r;-><init>(Lcom/zui/fss/file/a;Lcom/zui/fss/api/IFssApi$ListFilesCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/zui/fss/file/FssPermission$a;)Lcom/android/volley/Request;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$DeleteFileCallback;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFile fileKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\\"

    if-nez v2, :cond_1

    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v1

    new-instance v6, Lcom/zui/fss/file/s;

    invoke-direct {v6, p0, p5}, Lcom/zui/fss/file/s;-><init>(Lcom/zui/fss/file/a;Lcom/zui/fss/api/IFssApi$DeleteFileCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/zui/fss/file/FssPermission;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/file/FssPermission$a;)Lcom/android/volley/Request;

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fileKey contains / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", fileKey contains \\ "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    const-string p1, "file key is invalid, contains \'/\' or \'\\\',  or too long!"

    invoke-interface {p5, p4, p0, p1}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/fss/file/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v1

    new-instance v6, Lcom/zui/fss/file/t;

    invoke-direct {v6, p0, p5, p4}, Lcom/zui/fss/file/t;-><init>(Lcom/zui/fss/file/a;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/zui/fss/file/FssPermission;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/file/FssPermission$a;)Lcom/android/volley/Request;

    return-void
.end method
