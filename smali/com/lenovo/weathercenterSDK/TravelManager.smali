.class public Lcom/lenovo/weathercenterSDK/TravelManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenterSDK/TravelManager$d;,
        Lcom/lenovo/weathercenterSDK/TravelManager$e;
    }
.end annotation


# static fields
.field private static final k:[B

.field private static l:Lcom/lenovo/weathercenterSDK/TravelManager;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenterSDK/listener/TravelListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/lenovo/weathercenter/ITravelData;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenterSDK/TravelManager$e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/IBinder$DeathRecipient;

.field private i:Landroid/content/ServiceConnection;

.field private j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/weathercenterSDK/TravelManager;->k:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->f:Lcom/lenovo/weathercenter/ITravelData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->g:Ljava/util/List;

    new-instance v0, Lcom/lenovo/weathercenterSDK/TravelManager$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/TravelManager$a;-><init>(Lcom/lenovo/weathercenterSDK/TravelManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->h:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/lenovo/weathercenterSDK/TravelManager$b;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/TravelManager$b;-><init>(Lcom/lenovo/weathercenterSDK/TravelManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->i:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/lenovo/weathercenterSDK/TravelManager$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/weathercenterSDK/TravelManager$c;-><init>(Lcom/lenovo/weathercenterSDK/TravelManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->j:Landroid/os/Handler;

    const/16 v0, 0xbb9

    iput v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->k()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/TravelManager;)Lcom/lenovo/weathercenter/ITravelData;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->f:Lcom/lenovo/weathercenter/ITravelData;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenter/ITravelData;)Lcom/lenovo/weathercenter/ITravelData;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->f:Lcom/lenovo/weathercenter/ITravelData;

    return-object p1
.end method

.method static synthetic c(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/weathercenterSDK/TravelManager;->q(Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/weathercenterSDK/TravelManager;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    return p1
.end method

.method static synthetic e(Lcom/lenovo/weathercenterSDK/TravelManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->h:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/weathercenterSDK/TravelManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/lenovo/weathercenterSDK/TravelManager;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/weathercenterSDK/TravelManager;->l(Landroid/os/Message;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/weathercenterSDK/TravelManager;
    .locals 2

    sget-object v0, Lcom/lenovo/weathercenterSDK/TravelManager;->l:Lcom/lenovo/weathercenterSDK/TravelManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/lenovo/weathercenterSDK/TravelManager;->k:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/weathercenterSDK/TravelManager;->l:Lcom/lenovo/weathercenterSDK/TravelManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-direct {v1, p0}, Lcom/lenovo/weathercenterSDK/TravelManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/weathercenterSDK/TravelManager;->l:Lcom/lenovo/weathercenterSDK/TravelManager;

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
    sget-object p0, Lcom/lenovo/weathercenterSDK/TravelManager;->l:Lcom/lenovo/weathercenterSDK/TravelManager;

    return-object p0
.end method

.method static synthetic h(Lcom/lenovo/weathercenterSDK/TravelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->k()V

    return-void
.end method

.method static synthetic i(Lcom/lenovo/weathercenterSDK/TravelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->p()V

    return-void
.end method

.method private declared-synchronized j(Lcom/lenovo/weathercenterSDK/TravelManager$e;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->b:I

    iget v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    const/16 v2, 0xbb9

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->k()V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    const/16 v2, 0xbbb

    if-eq v1, v2, :cond_1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->d(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->e(Lcom/lenovo/weathercenterSDK/TravelManager$e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->a(Lcom/lenovo/weathercenterSDK/TravelManager$e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->b(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->c(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/weathercenterSDK/TravelManager$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->d(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->e(Lcom/lenovo/weathercenterSDK/TravelManager$e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->a(Lcom/lenovo/weathercenterSDK/TravelManager$e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->b(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/TravelManager$e;->c(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->g:Ljava/util/List;

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

.method private k()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->r()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->i:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbba

    iput v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I
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

.method private declared-synchronized l(Landroid/os/Message;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "travel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lenovo/weathercenter/entity/Travel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    instance-of v2, p1, Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    if-eqz v2, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1, v1, v0}, Lcom/lenovo/weathercenterSDK/listener/TravelListener;->onRideRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1, v1, v0}, Lcom/lenovo/weathercenterSDK/listener/TravelListener;->onWalkRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1, v1, v0}, Lcom/lenovo/weathercenterSDK/listener/TravelListener;->onDriveRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p1, v1, v0}, Lcom/lenovo/weathercenterSDK/listener/TravelListener;->onBusRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1, v1}, Lcom/lenovo/weathercenterSDK/listener/TravelListener;->onTravelError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized m(ILjava/lang/String;Ljava/lang/String;IILcom/lenovo/weathercenterSDK/listener/TravelListener;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    new-instance v8, Lcom/lenovo/weathercenterSDK/TravelManager$e;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/weathercenterSDK/TravelManager$e;-><init>(Lcom/lenovo/weathercenterSDK/TravelManager;ILjava/lang/String;Ljava/lang/String;IILcom/lenovo/weathercenterSDK/listener/TravelListener;)V

    iget v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->f:Lcom/lenovo/weathercenter/ITravelData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->f:Lcom/lenovo/weathercenter/ITravelData;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->f:Lcom/lenovo/weathercenter/ITravelData;

    new-instance v7, Lcom/lenovo/weathercenterSDK/TravelManager$d;

    invoke-direct {v7, p0, p6}, Lcom/lenovo/weathercenterSDK/TravelManager$d;-><init>(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/lenovo/weathercenter/ITravelData;->loadTraffic(ILjava/lang/String;Ljava/lang/String;IILcom/lenovo/weathercenter/ITravelListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 p2, 0xbb9

    :try_start_2
    iput p2, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    invoke-direct {p0, v8}, Lcom/lenovo/weathercenterSDK/TravelManager;->j(Lcom/lenovo/weathercenterSDK/TravelManager$e;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :pswitch_1
    invoke-direct {p0, v8}, Lcom/lenovo/weathercenterSDK/TravelManager;->j(Lcom/lenovo/weathercenterSDK/TravelManager$e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized n(ILcom/lenovo/weathercenterSDK/listener/TravelListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    const/16 v1, 0xbbc

    if-eq v0, v1, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->e:Ljava/util/List;

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

.method private declared-synchronized o()Ljava/lang/Runnable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->g:Ljava/util/List;

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

.method private declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->o()Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->c:Ljava/util/concurrent/ExecutorService;

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

.method private declared-synchronized q(Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "error_code"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    const-string p2, "travel"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private r()Landroid/content/Intent;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "WeatherCenterTravelDataService"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lenovo.weathercenter"

    const-string v2, "com.lenovo.weathercenter.TravelDataService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->f:Lcom/lenovo/weathercenter/ITravelData;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->f:Lcom/lenovo/weathercenter/ITravelData;

    :cond_0
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/16 v1, 0xbbc

    iput v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->a:I

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->d:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    sput-object v0, Lcom/lenovo/weathercenterSDK/TravelManager;->l:Lcom/lenovo/weathercenterSDK/TravelManager;

    return-void
.end method

.method public loadTraffic(ILjava/lang/String;Ljava/lang/String;IILcom/lenovo/weathercenterSDK/listener/TravelListener;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->d:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->netWorkCode(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    invoke-direct/range {p0 .. p6}, Lcom/lenovo/weathercenterSDK/TravelManager;->m(ILjava/lang/String;Ljava/lang/String;IILcom/lenovo/weathercenterSDK/listener/TravelListener;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d1

    invoke-direct {p0, p6, p1, v0, v1}, Lcom/lenovo/weathercenterSDK/TravelManager;->q(Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V

    :goto_0
    return-void

    :cond_1
    throw v1
.end method

.method public registTravelListener(Lcom/lenovo/weathercenterSDK/listener/TravelListener;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/TravelManager;->n(ILcom/lenovo/weathercenterSDK/listener/TravelListener;)V

    return-void
.end method

.method public unregistTravelListener(Lcom/lenovo/weathercenterSDK/listener/TravelListener;)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/TravelManager;->n(ILcom/lenovo/weathercenterSDK/listener/TravelListener;)V

    return-void
.end method
