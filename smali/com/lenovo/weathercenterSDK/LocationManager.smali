.class public Lcom/lenovo/weathercenterSDK/LocationManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenterSDK/LocationManager$h;,
        Lcom/lenovo/weathercenterSDK/LocationManager$j;,
        Lcom/lenovo/weathercenterSDK/LocationManager$i;,
        Lcom/lenovo/weathercenterSDK/LocationManager$g;,
        Lcom/lenovo/weathercenterSDK/LocationManager$f;
    }
.end annotation


# static fields
.field private static final l:[B

.field private static m:Lcom/lenovo/weathercenterSDK/LocationManager;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenterSDK/listener/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/lenovo/weathercenter/ILocationData;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/lenovo/weathercenter/ILocationDataListener;

.field private i:Landroid/os/IBinder$DeathRecipient;

.field private j:Landroid/content/ServiceConnection;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/weathercenterSDK/LocationManager;->l:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    new-instance v0, Lcom/lenovo/weathercenterSDK/LocationManager$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/LocationManager$a;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->h:Lcom/lenovo/weathercenter/ILocationDataListener;

    new-instance v0, Lcom/lenovo/weathercenterSDK/LocationManager$b;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/LocationManager$b;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->i:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/lenovo/weathercenterSDK/LocationManager$c;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/LocationManager$c;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->j:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/lenovo/weathercenterSDK/LocationManager$d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/weathercenterSDK/LocationManager$d;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->k:Landroid/os/Handler;

    const-string v0, "enter LocationManager "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    const/16 v0, 0xbb9

    iput v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->n()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/LocationManager;ILcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/weathercenterSDK/LocationManager;->q(ILcom/lenovo/weathercenter/entity/CityDetail;)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/weathercenterSDK/LocationManager;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    return p1
.end method

.method static synthetic c(Lcom/lenovo/weathercenterSDK/LocationManager;ILjava/lang/Runnable;Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/weathercenterSDK/LocationManager;->o(ILjava/lang/Runnable;Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/weathercenterSDK/LocationManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenter/ILocationData;)Lcom/lenovo/weathercenter/ILocationData;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    return-object p1
.end method

.method static synthetic g(Lcom/lenovo/weathercenterSDK/LocationManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->i:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/weathercenterSDK/LocationManager;
    .locals 2

    const-string v0, "enter LocationManager getInstance "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/weathercenterSDK/LocationManager;->m:Lcom/lenovo/weathercenterSDK/LocationManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/lenovo/weathercenterSDK/LocationManager;->l:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/weathercenterSDK/LocationManager;->m:Lcom/lenovo/weathercenterSDK/LocationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-direct {v1, p0}, Lcom/lenovo/weathercenterSDK/LocationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/weathercenterSDK/LocationManager;->m:Lcom/lenovo/weathercenterSDK/LocationManager;

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
    sget-object p0, Lcom/lenovo/weathercenterSDK/LocationManager;->m:Lcom/lenovo/weathercenterSDK/LocationManager;

    return-object p0
.end method

.method static synthetic h(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationDataListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->h:Lcom/lenovo/weathercenter/ILocationDataListener;

    return-object p0
.end method

.method static synthetic i(Lcom/lenovo/weathercenterSDK/LocationManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/lenovo/weathercenterSDK/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->n()V

    return-void
.end method

.method static synthetic k(Lcom/lenovo/weathercenterSDK/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->t()V

    return-void
.end method

.method static synthetic l(Lcom/lenovo/weathercenterSDK/LocationManager;ILcom/lenovo/weathercenterSDK/listener/LocationListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/weathercenterSDK/LocationManager;->r(ILcom/lenovo/weathercenterSDK/listener/LocationListener;)V

    return-void
.end method

.method private declared-synchronized m(Ljava/lang/Runnable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->b:I

    iget v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    const/16 v2, 0xbb9

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->n()V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    const/16 v2, 0xbbb

    if-eq v1, v2, :cond_1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    instance-of v0, p1, Lcom/lenovo/weathercenterSDK/LocationManager$i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    instance-of v1, v1, Lcom/lenovo/weathercenterSDK/LocationManager$i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    instance-of v0, p1, Lcom/lenovo/weathercenterSDK/LocationManager$j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    instance-of v2, v1, Lcom/lenovo/weathercenterSDK/LocationManager$j;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/LocationManager$j;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/LocationManager$j;->a(Lcom/lenovo/weathercenterSDK/LocationManager$j;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/LocationManager$j;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/LocationManager$j;->a(Lcom/lenovo/weathercenterSDK/LocationManager$j;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/lenovo/weathercenterSDK/LocationManager$j;

    invoke-static {v3}, Lcom/lenovo/weathercenterSDK/LocationManager$j;->a(Lcom/lenovo/weathercenterSDK/LocationManager$j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/LocationManager$j;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/LocationManager$j;->b(Lcom/lenovo/weathercenterSDK/LocationManager$j;)Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;

    move-result-object v2

    check-cast v1, Lcom/lenovo/weathercenterSDK/LocationManager$j;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/LocationManager$j;->b(Lcom/lenovo/weathercenterSDK/LocationManager$j;)Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v1, :cond_4

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

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

.method private n()V
    .locals 4

    const-string v0, "enter  bindService "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->p()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationManager bindService return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/16 v0, 0xbba

    iput v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "bindService Exception:"

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService NullPointerException: mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized o(ILjava/lang/Runnable;Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    invoke-interface {p1}, Lcom/lenovo/weathercenter/ILocationData;->getCurrentLocation()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    new-instance v0, Lcom/lenovo/weathercenterSDK/LocationManager$h;

    invoke-direct {v0, p0, p4}, Lcom/lenovo/weathercenterSDK/LocationManager$h;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V

    invoke-interface {p1, p3, v0}, Lcom/lenovo/weathercenter/ILocationData;->searchCity(Ljava/lang/String;Lcom/lenovo/weathercenter/ICitySearchListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    const/16 p3, 0xbb9

    :try_start_2
    iput p3, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    invoke-direct {p0, p2}, Lcom/lenovo/weathercenterSDK/LocationManager;->m(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/lenovo/weathercenterSDK/LocationManager;->m(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
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

.method private p()Landroid/content/Intent;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "DataCenterLocationService"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lenovo.weathercenter"

    const-string v2, "com.lenovo.weathercenter.LocationDataService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method private declared-synchronized q(ILcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter loopAppLocationListener: mAppLocationListener.size() =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/weathercenterSDK/listener/LocationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter loopAppLocationListener: mAppListenerIte.next() =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    invoke-interface {v1, p1, p2}, Lcom/lenovo/weathercenterSDK/listener/LocationListener;->onLocationResult(ILcom/lenovo/weathercenter/entity/CityDetail;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "loopLocationLister: Exception"

    invoke-static {v3}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/16 v2, 0xc

    invoke-direct {p0, v2, v1}, Lcom/lenovo/weathercenterSDK/LocationManager;->r(ILcom/lenovo/weathercenterSDK/listener/LocationListener;)V

    const-string v1, "delete locationListener"

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized r(ILcom/lenovo/weathercenterSDK/listener/LocationListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter manageLocationListener listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    const/16 v1, 0xbbc

    if-eq v0, v1, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized s()Ljava/lang/Runnable;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, " enter removeTask "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

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
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, " enter mQueue run task "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQueue.size() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " runQueueTask:  mQueue.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->s()Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after runQueueTask: runnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "enter  destroy "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->h:Lcom/lenovo/weathercenter/ILocationDataListener;

    invoke-interface {v1, v2}, Lcom/lenovo/weathercenter/ILocationData;->unregister(Lcom/lenovo/weathercenter/ILocationDataListener;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    const-string v1, "after unregister(mAIDLLocationListener) "

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/16 v1, 0xbbc

    iput v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after unbind service: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "destroy: Exception"

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    sput-object v0, Lcom/lenovo/weathercenterSDK/LocationManager;->m:Lcom/lenovo/weathercenterSDK/LocationManager;

    const-string p0, "after destroy() "

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentLocation(Lcom/lenovo/weathercenterSDK/listener/LocationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/lenovo/weathercenterSDK/LocationManager$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/weathercenterSDK/LocationManager$f;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/LocationManager$a;)V

    new-instance v1, Lcom/lenovo/weathercenterSDK/LocationManager$e;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/weathercenterSDK/LocationManager$e;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/listener/LocationListener;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/weathercenterSDK/LocationManager$f;->a(Lcom/lenovo/weathercenterSDK/LocationManager$g;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public registWeatherListener(Lcom/lenovo/weathercenterSDK/listener/LocationListener;)V
    .locals 1

    const-string v0, "enter registWeatherListener "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/LocationManager;->r(ILcom/lenovo/weathercenterSDK/listener/LocationListener;)V

    return-void
.end method

.method public searchCity(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->netWorkCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/lenovo/weathercenterSDK/LocationManager$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/weathercenterSDK/LocationManager$j;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/LocationManager;->o(ILjava/lang/Runnable;Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p2, v0, p1, p0}, Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;->onSearchResult(ILjava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentLocation(DD)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager;->f:Lcom/lenovo/weathercenter/ILocationData;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/lenovo/weathercenter/ILocationData;->setCurrentLocation(DD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unRegistWeatherListener(Lcom/lenovo/weathercenterSDK/listener/LocationListener;)V
    .locals 1

    const-string v0, "enter unRegistWeatherListener "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/LocationManager;->r(ILcom/lenovo/weathercenterSDK/listener/LocationListener;)V

    return-void
.end method
