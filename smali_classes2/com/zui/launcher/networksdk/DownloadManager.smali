.class public Lcom/zui/launcher/networksdk/DownloadManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field static r:Lcom/zui/launcher/networksdk/DownloadManager;

.field private static s:Landroid/content/Context;


# instance fields
.field private a:I

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/networksdk/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

.field private f:Lokhttp3/OkHttpClient;

.field private g:Z

.field private h:Lcom/zui/launcher/networksdk/RetrofitDownloadService;

.field private final i:Landroid/os/Handler;

.field private j:I

.field private final k:Ljava/lang/Runnable;

.field private l:Z

.field private m:Landroid/content/Intent;

.field public mBound:Z

.field private n:Lcom/android/settings/core/impl/ICoreService;

.field private final o:Landroid/content/ServiceConnection;

.field private final p:Landroid/os/IBinder$DeathRecipient;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->g:Z

    new-instance v0, Lcom/zui/launcher/networksdk/a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/a;-><init>(Lcom/zui/launcher/networksdk/DownloadManager;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/zui/launcher/networksdk/DownloadManager$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/DownloadManager$b;-><init>(Lcom/zui/launcher/networksdk/DownloadManager;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->o:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/zui/launcher/networksdk/d;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/d;-><init>(Lcom/zui/launcher/networksdk/DownloadManager;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->p:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/zui/launcher/networksdk/b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/b;-><init>(Lcom/zui/launcher/networksdk/DownloadManager;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->q:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->l()V

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->initDao()V

    iget v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->a:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "http://apk6.lenovomm.com/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->f:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/zui/launcher/networksdk/RetrofitDownloadService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/RetrofitDownloadService;

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->h:Lcom/zui/launcher/networksdk/RetrofitDownloadService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->i:Landroid/os/Handler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.core.CoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->m:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->t()V

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->startConnectionToCurrentUser()V

    :cond_0
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/DownloadManager;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/zui/launcher/networksdk/DownloadManager;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->j:I

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/networksdk/DownloadManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/networksdk/DownloadManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/networksdk/DownloadManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->p:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/networksdk/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->j()V

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/networksdk/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->s()V

    return-void
.end method

.method public static final getInstance()Lcom/zui/launcher/networksdk/DownloadManager;
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/DownloadManager;->r:Lcom/zui/launcher/networksdk/DownloadManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->k()V

    :cond_0
    sget-object v0, Lcom/zui/launcher/networksdk/DownloadManager;->r:Lcom/zui/launcher/networksdk/DownloadManager;

    return-object v0
.end method

.method static synthetic h(Lcom/zui/launcher/networksdk/DownloadManager;Lcom/android/settings/core/impl/ICoreService;)Lcom/android/settings/core/impl/ICoreService;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->n:Lcom/android/settings/core/impl/ICoreService;

    return-object p1
.end method

.method private i(Lcom/zui/launcher/networksdk/download/DownloadTask;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setDownloadStatus(I)V

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->cancel(Ljava/lang/String;Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;)V

    iget-object p2, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/zui/launcher/networksdk/DownloadManager;->s:Landroid/content/Context;

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    return-void
.end method

.method private j()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/networksdk/DownloadManager;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launcher/networksdk/DownloadManager;->o:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->mBound:Z

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->n:Lcom/android/settings/core/impl/ICoreService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/networksdk/DownloadManager;->p:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->n:Lcom/android/settings/core/impl/ICoreService;

    :cond_1
    return-void
.end method

.method private static declared-synchronized k()V
    .locals 2

    const-class v0, Lcom/zui/launcher/networksdk/DownloadManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/networksdk/DownloadManager;->r:Lcom/zui/launcher/networksdk/DownloadManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-direct {v1}, Lcom/zui/launcher/networksdk/DownloadManager;-><init>()V

    sput-object v1, Lcom/zui/launcher/networksdk/DownloadManager;->r:Lcom/zui/launcher/networksdk/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private l()V
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/zui/launcher/networksdk/c;->a:Lcom/zui/launcher/networksdk/c;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->f:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private m()V
    .locals 6

    const-string v0, "DownloadManager"

    const-string v1, "internalConnectToCurrentUser."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->j()V

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot attempt connection, is enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->isEnabled()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zui/launcher/networksdk/DownloadManager;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    sget-object v1, Lcom/zui/launcher/networksdk/DownloadManager;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launcher/networksdk/DownloadManager;->m:Landroid/content/Intent;

    iget-object v3, p0, Lcom/zui/launcher/networksdk/DownloadManager;->o:Landroid/content/ServiceConnection;

    const v4, 0x2000001

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->getCurrentUserId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->mBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to bind because of security error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->mBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->i:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->q:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->s()V

    :goto_1
    return-void
.end method

.method private n(Lcom/zui/launcher/networksdk/download/DownloadTask;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getDownloadStatus()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic o(Lcom/zui/launcher/networksdk/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->m()V

    return-void
.end method

.method static synthetic p(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private r(Lcom/zui/launcher/networksdk/download/DownloadTask;Lcom/zui/launcher/networksdk/DownloadEntity;)Lcom/zui/launcher/networksdk/download/DownloadTask;
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    new-instance p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/zui/launcher/networksdk/DownloadEntity;->getDownloadStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setDownloadStatus(I)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/zui/launcher/networksdk/DownloadEntity;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setFileName(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/zui/launcher/networksdk/DownloadEntity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setFileType(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/zui/launcher/networksdk/DownloadEntity;->getSaveDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setSaveDirPath(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/zui/launcher/networksdk/DownloadEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setUrl(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/zui/launcher/networksdk/DownloadEntity;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setId(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setBuilder(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)V

    invoke-virtual {p2}, Lcom/zui/launcher/networksdk/DownloadEntity;->getCompletedSize()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setCompletedSize(J)V

    invoke-virtual {p2}, Lcom/zui/launcher/networksdk/DownloadEntity;->getTotalSize()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setTotalSize(J)V

    :cond_0
    return-object p1
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/networksdk/DownloadManager;->r:Lcom/zui/launcher/networksdk/DownloadManager;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/zui/launcher/networksdk/DownloadManager;->mBound:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/zui/launcher/networksdk/DownloadManager;->s:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/zui/launcher/networksdk/DownloadManager;->o:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    sget-object v0, Lcom/zui/launcher/networksdk/DownloadManager;->r:Lcom/zui/launcher/networksdk/DownloadManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zui/launcher/networksdk/DownloadManager;->mBound:Z

    :cond_1
    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00    # 600000.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    iget-object v2, p0, Lcom/zui/launcher/networksdk/DownloadManager;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zui/launcher/networksdk/DownloadManager;->k:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p0, Lcom/zui/launcher/networksdk/DownloadManager;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zui/launcher/networksdk/DownloadManager;->j:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect on attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->j:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private t()V
    .locals 4

    sget-object v0, Lcom/zui/launcher/networksdk/DownloadManager;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->m:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->getCurrentUserId()I

    move-result v2

    const/high16 v3, 0x100000

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->l:Z

    return-void
.end method


# virtual methods
.method public addDownloadTask(Lcom/zui/launcher/networksdk/download/DownloadTask;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->g:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->n(Lcom/zui/launcher/networksdk/download/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setDownloadDao(Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;)V

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->f:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setClient(Lokhttp3/OkHttpClient;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setDownloadStatus(I)V

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public cancelTask(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getDownloadStatus()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->i(Lcom/zui/launcher/networksdk/download/DownloadTask;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cleanupAfterDeath()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->startConnectionToCurrentUser()V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    return-void
.end method

.method public deleteDataAndFile(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->delete()V

    :cond_0
    return-void
.end method

.method public deleteDownloadTask(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->initDao()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->i(Lcom/zui/launcher/networksdk/download/DownloadTask;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->deleteDataAndFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DownloadManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->n:Lcom/android/settings/core/impl/ICoreService;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmInstallerIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->m:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmConnectionBackoffAttempts="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->j:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getClient()Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->f:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getDownloadPercent(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getDownLoadPercent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x64

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDownloadService()Lcom/zui/launcher/networksdk/RetrofitDownloadService;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->h:Lcom/zui/launcher/networksdk/RetrofitDownloadService;

    return-object p0
.end method

.method public getDownloadStatus(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getDownloadStatus()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/download/DownloadTask;

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/networksdk/DownloadManager;->e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zui/launcher/networksdk/DownloadEntity;->getDownloadStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    :cond_0
    new-instance v0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-direct {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->build()Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/networksdk/DownloadManager;->r(Lcom/zui/launcher/networksdk/download/DownloadTask;Lcom/zui/launcher/networksdk/DownloadEntity;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public hasTask(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initDao()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/zui/launcher/networksdk/greendao/DaoMaster$DevOpenHelper;

    sget-object v1, Lcom/zui/launcher/networksdk/DownloadManager;->s:Landroid/content/Context;

    const-string v2, "downloadDB"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/launcher/networksdk/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    new-instance v1, Lcom/zui/launcher/networksdk/greendao/DaoMaster;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zui/launcher/networksdk/greendao/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/zui/launcher/networksdk/greendao/DaoMaster;->newSession()Lcom/zui/launcher/networksdk/greendao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/greendao/DaoSession;->getDownloadEntityDao()Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->e:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->g:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    throw p0

    :cond_0
    :goto_1
    return-void
.end method

.method public installApk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->n:Lcom/android/settings/core/impl/ICoreService;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/zui/launcher/networksdk/DownloadManager$a;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager$a;-><init>(Lcom/zui/launcher/networksdk/DownloadManager;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Lcom/android/settings/core/impl/ICoreService;->install(Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->s()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->l:Z

    return p0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setDownloadStatus(I)V

    :cond_0
    return-void
.end method

.method public synthetic q()V
    .locals 2

    const-string v0, "DownloadManager"

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->s()V

    return-void
.end method

.method public restart(Lcom/zui/launcher/networksdk/download/DownloadTask;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->addDownloadTask(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    :cond_0
    return-void
.end method

.method public resume(Ljava/lang/String;Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setListener(Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->addDownloadTask(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    :cond_0
    return-void
.end method

.method public startConnectionToCurrentUser()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->i:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->m()V

    :goto_0
    return-void
.end method

.method public updateDownloadTask(Lcom/zui/launcher/networksdk/download/DownloadTask;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
