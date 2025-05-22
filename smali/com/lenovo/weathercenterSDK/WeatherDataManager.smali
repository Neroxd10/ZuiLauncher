.class public Lcom/lenovo/weathercenterSDK/WeatherDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;,
        Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;,
        Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;,
        Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;
    }
.end annotation


# static fields
.field private static final l:[B

.field private static m:Lcom/lenovo/weathercenterSDK/WeatherDataManager;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Landroid/content/Context;

.field private e:Lcom/lenovo/weathercenter/IWeather;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/lenovo/weathercenter/IWeatherListener;

.field private i:Landroid/os/IBinder$DeathRecipient;

.field private j:Landroid/content/ServiceConnection;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->l:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->c:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g:Ljava/util/List;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->h:Lcom/lenovo/weathercenter/IWeatherListener;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->i:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$c;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$c;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->j:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->k:Landroid/os/Handler;

    const/16 v0, 0xbb9

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->m()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->q(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->n(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/weathercenterSDK/WeatherDataManager;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    return p1
.end method

.method public static callWeatherApp(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zui.weather"

    const-string v3, "com.zui.weather.service.JobHandleService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic d(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeather;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    return-object p0
.end method

.method static synthetic e(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenter/IWeather;)Lcom/lenovo/weathercenter/IWeather;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    return-object p1
.end method

.method static synthetic f(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->i:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic g(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/weathercenterSDK/WeatherDataManager;
    .locals 2

    sget-object v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->m:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->l:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->m:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-direct {v1, p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->m:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

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
    sget-object p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->m:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    return-object p0
.end method

.method static synthetic h(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeatherListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->h:Lcom/lenovo/weathercenter/IWeatherListener;

    return-object p0
.end method

.method static synthetic i(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->m()V

    return-void
.end method

.method static synthetic k(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->t()V

    return-void
.end method

.method private declared-synchronized l(Ljava/lang/Runnable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter addTask mAddTaskCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->b:I

    iget v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    const/16 v2, 0xbb9

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->m()V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    const/16 v2, 0xbbb

    if-eq v1, v2, :cond_1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    instance-of v0, p1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    instance-of v2, v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;)Lcom/lenovo/weathercenterSDK/listener/HotcityListener;

    move-result-object v2

    check-cast v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;)Lcom/lenovo/weathercenterSDK/listener/HotcityListener;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v1, :cond_2

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    instance-of v0, p1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    instance-of v2, v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    invoke-static {v3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->b(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    invoke-static {v3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->b(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)I

    move-result v3

    if-ne v2, v3, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->c(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    move-result-object v2

    check-cast v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->c(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v1, :cond_4

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private m()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->v()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbba

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I
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

.method private n(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    :goto_0
    invoke-interface {p1, v0, p2, v1}, Lcom/lenovo/weathercenter/IWeather;->getWeather(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/lenovo/weathercenter/IWeather;->get24Hour(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/lenovo/weathercenter/IWeather;->getIndex(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/lenovo/weathercenter/IWeather;->getForecast(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/lenovo/weathercenter/IWeather;->getCondition(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/lenovo/weathercenter/IWeather;->getAlert(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/lenovo/weathercenter/IWeather;->getAir(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o(ILcom/lenovo/weathercenterSDK/listener/WeatherDataListener;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;)V
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    :try_start_0
    iget-object p0, p5, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->a:Ljava/util/List;

    invoke-interface {p2, p3, p4, p0}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->on24HourChanged(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p0, p5, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->f:Lcom/lenovo/weathercenter/entity/Index;

    invoke-interface {p2, p3, p4, p0}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onIndexChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Index;)V

    goto :goto_0

    :cond_1
    iget-object p0, p5, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->b:Ljava/util/List;

    invoke-interface {p2, p3, p4, p0}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onForecastChanged(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object p0, p5, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->e:Lcom/lenovo/weathercenter/entity/Condition;

    invoke-interface {p2, p3, p4, p0}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onConditionChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Condition;)V

    goto :goto_0

    :cond_3
    iget-object p0, p5, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->c:Ljava/util/List;

    invoke-interface {p2, p3, p4, p0}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onAlertChanged(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    iget-object p0, p5, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->d:Lcom/lenovo/weathercenter/entity/Air;

    invoke-interface {p2, p3, p4, p0}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onAirChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Air;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private declared-synchronized p(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;Lcom/lenovo/weathercenterSDK/listener/HotcityListener;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;

    invoke-direct {v1, p0, p4}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/HotcityListener;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    :goto_0
    iget v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-ne p1, v0, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    invoke-interface {p1}, Lcom/lenovo/weathercenter/IWeather;->getHotCitys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/lenovo/weathercenterSDK/listener/HotcityListener;->onHotcityResult(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->n(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/16 p2, 0xbb9

    :try_start_2
    iput p2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    invoke-direct {p0, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->l(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->l(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
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

.method private q(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V
    .locals 8

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    move-object v2, p0

    move v3, p4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->o(ILcom/lenovo/weathercenterSDK/listener/WeatherDataListener;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized r(ILcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    const/16 v1, 0xbbc

    if-eq v0, v1, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized s()Ljava/lang/Runnable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

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

.method private declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->s()Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->c:Ljava/util/concurrent/ExecutorService;

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

.method private u(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 7

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->netWorkCode(Landroid/content/Context;)I

    move-result v4

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-ne v4, v0, :cond_0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->p(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;Lcom/lenovo/weathercenterSDK/listener/HotcityListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    invoke-interface {p3, v4, p2, v1}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onForecastChanged(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {p3, v4, p2, v1}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onConditionChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Condition;)V

    invoke-interface {p3, v4, p2, v1}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onAirChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Air;)V

    invoke-interface {p3, v4, p2, v1}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->on24HourChanged(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {p3, v4, p2, v1}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onAlertChanged(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {p3, v4, p2, v1}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onIndexChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Index;)V

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    invoke-direct {v6, p0, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->o(ILcom/lenovo/weathercenterSDK/listener/WeatherDataListener;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private v()Landroid/content/Intent;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "DataCenterWeatherDataService"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lenovo.weathercenter"

    const-string v2, "com.lenovo.weathercenter.WeatherDataService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->h:Lcom/lenovo/weathercenter/IWeatherListener;

    invoke-interface {v2, v0, v3}, Lcom/lenovo/weathercenter/IWeather;->unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    iput-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e:Lcom/lenovo/weathercenter/IWeather;

    iput-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->h:Lcom/lenovo/weathercenter/IWeatherListener;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/16 v0, 0xbbc

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d:Landroid/content/Context;

    :cond_1
    sput-object v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->m:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    return-void
.end method

.method public get24Hour(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->u(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method public getAir(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->u(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method public getAlert(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->u(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method public getCondition(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->u(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method public getForecast(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->u(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method public getHotCitys(Lcom/lenovo/weathercenterSDK/listener/HotcityListener;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->p(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;Lcom/lenovo/weathercenterSDK/listener/HotcityListener;)V

    :cond_0
    return-void
.end method

.method public getIndex(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->u(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method public getWeather(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->u(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method public registWeatherListener(Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->r(ILcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method

.method public unRegistWeatherListener(Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->r(ILcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V

    return-void
.end method
