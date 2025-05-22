.class public Lcom/lenovo/weathercenterSDK/AppManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenterSDK/AppManager$d;
    }
.end annotation


# static fields
.field public static DEBUG:Z = true

.field private static final j:[B

.field private static k:Lcom/lenovo/weathercenterSDK/AppManager;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Landroid/content/Context;

.field private e:Lcom/lenovo/weathercenter/IAppWeather;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/ServiceConnection;

.field private h:Landroid/os/IBinder$DeathRecipient;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/weathercenterSDK/AppManager;->j:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->c:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->e:Lcom/lenovo/weathercenter/IAppWeather;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->f:Ljava/util/List;

    new-instance v0, Lcom/lenovo/weathercenterSDK/AppManager$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/AppManager$a;-><init>(Lcom/lenovo/weathercenterSDK/AppManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->g:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/lenovo/weathercenterSDK/AppManager$b;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/AppManager$b;-><init>(Lcom/lenovo/weathercenterSDK/AppManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->h:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/lenovo/weathercenterSDK/AppManager$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/weathercenterSDK/AppManager$c;-><init>(Lcom/lenovo/weathercenterSDK/AppManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->i:Landroid/os/Handler;

    const/16 v0, 0xbb9

    iput v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->j()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/AppManager;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/weathercenterSDK/AppManager;)Lcom/lenovo/weathercenter/IAppWeather;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->e:Lcom/lenovo/weathercenter/IAppWeather;

    return-object p0
.end method

.method static synthetic d(Lcom/lenovo/weathercenterSDK/AppManager;Lcom/lenovo/weathercenter/IAppWeather;)Lcom/lenovo/weathercenter/IAppWeather;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->e:Lcom/lenovo/weathercenter/IAppWeather;

    return-object p1
.end method

.method static synthetic e(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->h:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/weathercenterSDK/AppManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->j()V

    return-void
.end method

.method static synthetic g(Lcom/lenovo/weathercenterSDK/AppManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->m()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/weathercenterSDK/AppManager;
    .locals 2

    sget-object v0, Lcom/lenovo/weathercenterSDK/AppManager;->k:Lcom/lenovo/weathercenterSDK/AppManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/lenovo/weathercenterSDK/AppManager;->j:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/weathercenterSDK/AppManager;->k:Lcom/lenovo/weathercenterSDK/AppManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-direct {v1, p0}, Lcom/lenovo/weathercenterSDK/AppManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/weathercenterSDK/AppManager;->k:Lcom/lenovo/weathercenterSDK/AppManager;

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
    sget-object p0, Lcom/lenovo/weathercenterSDK/AppManager;->k:Lcom/lenovo/weathercenterSDK/AppManager;

    return-object p0
.end method

.method static synthetic h(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->d:Landroid/content/Context;

    return-object p0
.end method

.method private declared-synchronized i(Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->b:I

    iget v1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    const/16 v2, 0xbb9

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->j()V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    const/16 v2, 0xbbb

    if-eq v1, v2, :cond_1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    instance-of v0, p1, Lcom/lenovo/weathercenterSDK/AppManager$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    instance-of v2, v1, Lcom/lenovo/weathercenterSDK/AppManager$d;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/AppManager$d;

    iget v2, v2, Lcom/lenovo/weathercenterSDK/AppManager$d;->b:I

    check-cast v1, Lcom/lenovo/weathercenterSDK/AppManager$d;

    iget v1, v1, Lcom/lenovo/weathercenterSDK/AppManager$d;->b:I

    if-ne v2, v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/lenovo/weathercenterSDK/AppManager$d;

    iget v1, v1, Lcom/lenovo/weathercenterSDK/AppManager$d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private j()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->n()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/AppManager;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbba

    iput v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized k(ILjava/lang/Runnable;Lcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->e:Lcom/lenovo/weathercenter/IAppWeather;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->e:Lcom/lenovo/weathercenter/IAppWeather;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->e:Lcom/lenovo/weathercenter/IAppWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/lenovo/weathercenter/entity/CityDetail;->getServerId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Lcom/lenovo/weathercenter/IAppWeather;->delNotifyCity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 p3, 0xbb9

    :try_start_2
    iput p3, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    invoke-direct {p0, p2}, Lcom/lenovo/weathercenterSDK/AppManager;->i(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/lenovo/weathercenterSDK/AppManager;->i(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized l()Ljava/lang/Runnable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/AppManager;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, " enter runQueueTask "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->l()Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()Landroid/content/Intent;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "WeatherCenterAppDataService"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lenovo.weathercenter"

    const-string v2, "com.lenovo.weathercenter.AppDataService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public delNotifyCity(Lcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zui.weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/weathercenterSDK/AppManager$d;

    const/16 v1, 0x5b

    invoke-direct {v0, p0, v1, p1}, Lcom/lenovo/weathercenterSDK/AppManager$d;-><init>(Lcom/lenovo/weathercenterSDK/AppManager;ILcom/lenovo/weathercenter/entity/CityDetail;)V

    invoke-direct {p0, v1, v0, p1}, Lcom/lenovo/weathercenterSDK/AppManager;->k(ILjava/lang/Runnable;Lcom/lenovo/weathercenter/entity/CityDetail;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->e:Lcom/lenovo/weathercenter/IAppWeather;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->e:Lcom/lenovo/weathercenter/IAppWeather;

    :cond_0
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/AppManager;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/16 v1, 0xbbc

    iput v1, p0, Lcom/lenovo/weathercenterSDK/AppManager;->a:I

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager;->d:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    sput-object v0, Lcom/lenovo/weathercenterSDK/AppManager;->k:Lcom/lenovo/weathercenterSDK/AppManager;

    return-void
.end method
