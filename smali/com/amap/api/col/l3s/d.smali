.class public final Lcom/amap/api/col/l3s/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/d$a;,
        Lcom/amap/api/col/l3s/d$b;,
        Lcom/amap/api/col/l3s/d$c;
    }
.end annotation


# static fields
.field private static D:Z = true

.field private static F:Z = false

.field public static volatile f:Z = false


# instance fields
.field private A:Landroid/content/Context;

.field private B:Z

.field private volatile C:Z

.field private E:Z

.field private G:Lcom/amap/api/col/l3s/h;

.field private H:Landroid/content/ServiceConnection;

.field private volatile I:Z

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field public b:Lcom/amap/api/col/l3s/d$c;

.field c:Lcom/amap/api/col/l3s/g;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field public g:Z

.field h:Lcom/amap/api/col/l3s/i;

.field i:Landroid/os/Messenger;

.field j:Landroid/os/Messenger;

.field k:Landroid/content/Intent;

.field l:I

.field m:Lcom/amap/api/col/l3s/d$b;

.field n:Z

.field o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field p:Ljava/lang/Object;

.field q:Lcom/amap/api/col/l3s/pa;

.field r:Z

.field s:Lcom/amap/api/col/l3s/e;

.field t:Ljava/lang/String;

.field u:Lcom/amap/api/location/AMapLocationQualityReport;

.field v:Z

.field w:Z

.field x:Lcom/amap/api/col/l3s/d$a;

.field y:Ljava/lang/String;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->B:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->C:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->e:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/d;->g:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->j:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->k:Landroid/content/Intent;

    iput v1, p0, Lcom/amap/api/col/l3s/d;->l:I

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/d;->E:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->m:Lcom/amap/api/col/l3s/d$b;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->n:Z

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v2, p0, Lcom/amap/api/col/l3s/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/d;->p:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->q:Lcom/amap/api/col/l3s/pa;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->r:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->s:Lcom/amap/api/col/l3s/e;

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->t:Ljava/lang/String;

    new-instance v2, Lcom/amap/api/col/l3s/d$1;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3s/d$1;-><init>(Lcom/amap/api/col/l3s/d;)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/d;->H:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->v:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->w:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->I:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->y:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/d;->z:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/d;->k:Landroid/content/Intent;

    const-string p1, "ALManager"

    if-nez p3, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/amap/api/col/l3s/d$c;

    iget-object p3, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/amap/api/col/l3s/d$c;-><init>(Lcom/amap/api/col/l3s/d;Landroid/os/Looper;)V

    :goto_0
    iput-object p2, p0, Lcom/amap/api/col/l3s/d;->b:Lcom/amap/api/col/l3s/d$c;

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/amap/api/col/l3s/d$c;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3s/d$c;-><init>(Lcom/amap/api/col/l3s/d;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/amap/api/col/l3s/d$c;

    invoke-direct {p2, p0, p3}, Lcom/amap/api/col/l3s/d$c;-><init>(Lcom/amap/api/col/l3s/d;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string p3, "init 1"

    invoke-static {p2, p1, p3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_1
    new-instance p2, Lcom/amap/api/col/l3s/i;

    iget-object p3, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/amap/api/col/l3s/i;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_2
    const-string p3, "init 2"

    invoke-static {p2, p1, p3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p2, Lcom/amap/api/col/l3s/d$b;

    const-string p3, "amapLocManagerThread"

    invoke-direct {p2, p3, p0}, Lcom/amap/api/col/l3s/d$b;-><init>(Ljava/lang/String;Lcom/amap/api/col/l3s/d;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/d;->m:Lcom/amap/api/col/l3s/d$b;

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/d;->m:Lcom/amap/api/col/l3s/d$b;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    iget-object p2, p0, Lcom/amap/api/col/l3s/d;->m:Lcom/amap/api/col/l3s/d$b;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/d;->a(Landroid/os/Looper;)Lcom/amap/api/col/l3s/d$a;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    const-string p3, "init 5"

    invoke-static {p2, p1, p3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    :try_start_3
    new-instance p2, Lcom/amap/api/col/l3s/g;

    iget-object p3, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->b:Lcom/amap/api/col/l3s/d$c;

    invoke-direct {p2, p3, v0}, Lcom/amap/api/col/l3s/g;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    const-string p3, "init 3"

    invoke-static {p2, p1, p3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/d;->q:Lcom/amap/api/col/l3s/pa;

    if-nez p1, :cond_2

    new-instance p1, Lcom/amap/api/col/l3s/pa;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/pa;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/d;->q:Lcom/amap/api/col/l3s/pa;

    :cond_2
    return-void
.end method

.method private a(Landroid/os/Looper;)Lcom/amap/api/col/l3s/d$a;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/amap/api/col/l3s/d$a;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/d$a;-><init>(Lcom/amap/api/col/l3s/d;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Lcom/amap/api/col/l3s/oa;)Lcom/amap/api/col/l3s/of;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/oa;->f()Lcom/amap/api/col/l3s/of;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "doFirstCacheLoc"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ow;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->t:Ljava/lang/String;

    :cond_1
    const-string v0, "c"

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->t:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/d;->j:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    instance-of p2, p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "sending message to a Handler on a dead thread"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    instance-of v1, p1, Landroid/os/RemoteException;

    if-nez v1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/d;->B:Z

    :cond_5
    const-string p0, "ALManager"

    const-string p2, "sendLocMessage"

    invoke-static {p1, p0, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->what:I

    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    invoke-virtual {p0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->o()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "amapapi"

    const-string p1, "-------------\u8c03\u7528\u540e\u53f0\u5b9a\u4f4d\u670d\u52a1\uff0c\u7f3a\u5c11\u6743\u9650\uff1aandroid.permission.FOREGROUND_SERVICE--------------"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "startForegroundService"

    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    iget-object p2, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/col/l3s/d;->z:Z

    :cond_2
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-class v1, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "loc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/location/AMapLocation;

    const-string v2, "nb"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/d;->y:Ljava/lang/String;

    const-string v2, "statics"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3s/nz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    const/4 v3, 0x0

    iput v3, v2, Lcom/amap/api/col/l3s/g;->w:I

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-object v1, Lcom/amap/api/col/l3s/g;->y:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p1, v0

    goto :goto_1

    :cond_0
    move-object p1, v0

    move-object v1, p1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->y:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/col/l3s/g;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_1
    const-string v2, "AmapLocationManager"

    const-string v3, "resultLbsLocationSuccess"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/col/l3s/nz;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->m()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/d;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/d;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/d;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/d;Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocation;

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/d;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "optBundle"

    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ow;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/d;->C:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V

    :cond_0
    iput-boolean v2, p0, Lcom/amap/api/col/l3s/d;->g:Z

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/col/l3s/nz;)V

    const/16 p1, 0x401

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/d;->a(I)V

    const-wide/32 v2, 0x493e0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "resultGpsLocationSuccess"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/d;Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-nez v0, :cond_1

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_2

    :cond_1
    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v2, v6

    if-ltz v0, :cond_2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v0, v2, v6

    if-gtz v0, :cond_2

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v4, v2

    if-ltz v0, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v4, v2

    if-lez v0, :cond_3

    :cond_2
    const-string v0, "errorLatLng"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/col/l3s/pa;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v0, "LatLng is error#0802"

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :cond_3
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/g;->b()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/pc;->c(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/pc;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/pc;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setSpeed(F)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_1
    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/d;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/col/l3s/nz;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/amap/api/location/AMapLocation;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v0, "amapLocation is null#0801"

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :cond_0
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lbs"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationQualityReport;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setGPSSatellites(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setGpsStatus(I)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/pc;->h(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationQualityReport;->setWifiAble(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/pc;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetworkType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_4

    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetUseTime(J)V

    :cond_5
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/nz;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetUseTime(J)V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    sget-boolean v1, Lcom/amap/api/col/l3s/d;->F:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setInstallHighDangerMockApp(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationQualityReport(Lcom/amap/api/location/AMapLocationQualityReport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/d;->C:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->y:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "loc"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "lastLocNb"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3f6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/amap/api/col/l3s/nz;->d(J)V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/amap/api/col/l3s/pa;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/col/l3s/nz;)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/amap/api/col/l3s/pa;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/d;->b:Lcom/amap/api/col/l3s/d$c;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0xa

    iput v0, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/amap/api/col/l3s/d;->b:Lcom/amap/api/col/l3s/d$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "ALManager"

    const-string v0, "handlerLocation part2"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/d;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->k()V

    const/16 p1, 0xe

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_a
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    const-string p2, "ALManager"

    const-string v0, "handlerLocation part3"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/d;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/amap/api/col/l3s/oa;)Lcom/amap/api/col/l3s/of;
    .locals 13

    const-string v0, "ALManager"

    new-instance v1, Lcom/amap/api/col/l3s/nz;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/nz;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/amap/api/col/l3s/nz;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/amap/api/col/l3s/iv;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    const-string v4, "apsLocation setAuthKey"

    invoke-static {v3, v0, v4}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/amap/api/col/l3s/iy;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    const-string v4, "apsLocation setUmidToken"

    invoke-static {v3, v0, v4}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    :cond_1
    :goto_1
    :try_start_5
    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/amap/api/col/l3s/oa;->a(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v3}, Lcom/amap/api/col/l3s/oa;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3s/oa;->b(Lcom/amap/api/col/l3s/nz;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :try_start_6
    const-string v4, "initApsBase"

    invoke-static {v3, v0, v4}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/amap/api/col/l3s/ov;->l()Z

    move-result v3

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/oa;)Lcom/amap/api/col/l3s/of;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4

    if-nez v3, :cond_2

    move v7, v6

    goto :goto_3

    :cond_2
    move v7, v5

    :goto_3
    :try_start_7
    invoke-virtual {p1, v7, v1}, Lcom/amap/api/col/l3s/oa;->a(ZLcom/amap/api/col/l3s/nz;)Lcom/amap/api/col/l3s/of;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_3

    :try_start_8
    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1, v4}, Lcom/amap/api/col/l3s/oa;->b(Lcom/amap/api/col/l3s/of;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v7

    :try_start_9
    const-string v8, "apsLocation:doFirstAddCache"

    invoke-static {v7, v0, v8}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_3
    :goto_4
    move v7, v6

    goto :goto_5

    :catchall_4
    move-exception v7

    :try_start_a
    const-string v8, "apsLocation:doFirstNetLocate"

    invoke-static {v7, v0, v8}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move v7, v5

    :goto_5
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/of;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object v12, v8

    move-object v8, v2

    move-object v2, v12

    goto :goto_6

    :catchall_5
    move-exception p0

    move-object v2, v4

    goto/16 :goto_a

    :cond_5
    move-object v8, v2

    :goto_6
    :try_start_b
    iget-object v9, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v9}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    iget-object v10, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v10}, Lcom/amap/api/location/AMapLocationClientOption;->getLastLocationLifeCycle()J

    move-result-wide v10

    invoke-virtual {v9, v2, v8, v10, v11}, Lcom/amap/api/col/l3s/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v8

    :try_start_c
    const-string v9, "fixLastLocation"

    invoke-static {v8, v0, v9}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_6
    :goto_7
    :try_start_d
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_7

    const-string v9, "loc"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "nb"

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/of;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "statics"

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_7
    invoke-direct {p0, v8}, Lcom/amap/api/col/l3s/d;->a(Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p0

    :try_start_e
    const-string v1, "apsLocation:callback"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    if-eqz v7, :cond_8

    if-eqz v3, :cond_8

    sget-boolean p0, Lcom/amap/api/col/l3s/d;->f:Z

    if-nez p0, :cond_8

    sput-boolean v6, Lcom/amap/api/col/l3s/d;->f:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/oa;->c()V

    new-instance p0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/oa;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    new-instance p0, Lcom/amap/api/col/l3s/nz;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/nz;-><init>()V

    invoke-virtual {p1, v6, p0}, Lcom/amap/api/col/l3s/oa;->a(ZLcom/amap/api/col/l3s/nz;)Lcom/amap/api/col/l3s/of;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    :try_start_10
    const-string v1, "apsLocation:doFirstNetLocate 2"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :cond_8
    :goto_9
    :try_start_11
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/oa;->d()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_b

    :catchall_9
    move-exception p0

    :goto_a
    :try_start_12
    const-string v1, "apsLocation"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    :try_start_13
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/oa;->d()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_a
    move-object v4, v2

    :catchall_b
    :goto_b
    return-object v4

    :catchall_c
    move-exception p0

    :try_start_14
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/oa;->d()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    :catchall_d
    throw p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/d;Landroid/os/Message;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    const-string v1, "lastLocNb"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/amap/api/col/l3s/i;->b:Lcom/amap/api/col/l3s/on;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/i;->b()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amap/api/col/l3s/i;->b:Lcom/amap/api/col/l3s/on;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/on;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-static {v1, v0}, Lcom/amap/api/col/l3s/pa;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/col/l3s/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/i;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "doSaveLastLocation"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/d;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->k()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/d;->E:Z

    return p1
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/amap/api/col/l3s/d;->F:Z

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->j()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/d;Landroid/os/Message;)V
    .locals 4

    const-string v0, "h"

    const-string v1, "i"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->n()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "g"

    const/4 v0, 0x1

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v3, v0}, Lcom/amap/api/col/l3s/d;->a(Landroid/content/Intent;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "doEnableBackgroundLocation"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->k()V

    return-void
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/d;Landroid/os/Message;)V
    .locals 2

    const-string v0, "j"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->n()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "g"

    const/4 v0, 0x2

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/amap/api/col/l3s/d;->a(Landroid/content/Intent;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "doDisableBackgroundLocation"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/d;)V
    .locals 8

    const-string v0, "ALManager"

    :try_start_0
    sget-boolean v1, Lcom/amap/api/col/l3s/d;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "optBundle"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    :try_start_1
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/d;->r:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/d;->I:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/d;->r:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/d;->B:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/d;->w:Z

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/d;->w:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    iput-boolean v4, p0, Lcom/amap/api/col/l3s/d;->w:Z

    const-string v5, "doLBSLocation reStartService"

    invoke-static {v1, v0, v5}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/d;->w:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ow;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "d"

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/g;->b()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v4, v1}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    :goto_1
    sput-boolean v3, Lcom/amap/api/col/l3s/d;->D:Z

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/d;->I:Z

    new-instance v1, Lcom/amap/api/col/l3s/oa;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/oa;-><init>()V

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/d;->b(Lcom/amap/api/col/l3s/oa;)Lcom/amap/api/col/l3s/of;

    move-result-object v1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->i()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "0"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_4

    :cond_3
    const-string v5, "1"

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ow;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "isCacheLoc"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/d;->C:Z

    if-eqz v1, :cond_5

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->l()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_6
    return-void

    :catchall_2
    move-exception v1

    :try_start_5
    const-string v2, "doLBSLocation"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->l()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_7
    return-void

    :catchall_4
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->l()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    :cond_8
    throw v0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/d;)V
    .locals 1

    const/16 v0, 0x401

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/d;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/d;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    :cond_0
    iput-object v1, v0, Lcom/amap/api/col/l3s/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/amap/api/col/l3s/g;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/l3s/g;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iget-object v2, v0, Lcom/amap/api/col/l3s/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/amap/api/col/l3s/g;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/amap/api/col/l3s/g;->y:Lcom/amap/api/location/AMapLocation;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/g;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/d;->C:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->k()V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->j()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->q:Lcom/amap/api/col/l3s/pa;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->q:Lcom/amap/api/col/l3s/pa;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->q:Lcom/amap/api/col/l3s/pa;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3s/pa;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->q:Lcom/amap/api/col/l3s/pa;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1, p0}, Lcom/amap/api/col/l3s/pa;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_5
    return-void
.end method

.method static synthetic h(Lcom/amap/api/col/l3s/d;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/d;->l:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ow;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/amap/api/col/l3s/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3s/d;->l:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ALManager"

    const-string v1, "startAssistantLocationImpl"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/amap/api/col/l3s/d;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ow;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ALManager"

    const-string v1, "stopAssistantLocationImpl"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    if-nez v3, :cond_1

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-int/2addr v1, v2

    const/16 v3, 0x32

    if-lt v1, v3, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/amap/api/location/AMapLocation;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/l3s/pc;->l(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1\uff0c\u5e76\u4e14manifest\u4e2dservice\u6807\u7b7e\u662f\u5426\u914d\u7f6e\u5728application\u6807\u7b7e\u5185#1003"

    :goto_0
    invoke-virtual {v4, v5}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "\u542f\u52a8ApsServcie\u5931\u8d25#1001"

    goto :goto_0

    :goto_1
    const-string v5, "loc"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->b:Lcom/amap/api/col/l3s/d$c;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v1

    const-string v2, "ALManager"

    const-string v3, "checkAPSManager"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->l(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_4

    const/16 p0, 0x837

    goto :goto_3

    :cond_4
    const/16 p0, 0x835

    :goto_3
    invoke-static {v1, p0}, Lcom/amap/api/col/l3s/pa;->a(Ljava/lang/String;I)V

    :cond_5
    return v0
.end method

.method private declared-synchronized j()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/d;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/d;->C:Z

    sget-object v1, Lcom/amap/api/col/l3s/d$2;->a:[I

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x3f8

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    const/16 v6, 0x3f7

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6, v5, v3, v4}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGpsFirstTimeout()J

    move-result-wide v3

    :cond_3
    invoke-direct {p0, v2, v5, v3, v4}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/d;->a(I)V

    invoke-direct {p0, v6, v5, v3, v4}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    const/16 v0, 0x3f9

    :try_start_3
    invoke-direct {p0, v0, v5, v3, v4}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 2

    const/16 v0, 0x401

    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/d;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/g;->a()V

    :cond_0
    const/16 v0, 0x3f8

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/d;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/d;->C:Z

    iput v0, p0, Lcom/amap/api/col/l3s/d;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ALManager"

    const-string v1, "stopLocation"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v0, v1, :cond_1

    const/16 v0, 0x3f8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    :goto_0
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->j:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->b:Lcom/amap/api/col/l3s/d$c;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->j:Landroid/os/Messenger;

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->n()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->H:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    const-string v0, "ALManager"

    const-string v1, "startServiceImpl"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method private n()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->k:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    const-class v2, Lcom/amap/api/location/APSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->k:Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "startServiceImpl p2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->k:Landroid/content/Intent;

    const-string v2, "a"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->k:Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "b"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->k:Landroid/content/Intent;

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->k:Landroid/content/Intent;

    return-object p0
.end method

.method private o()Z
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/pc;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "checkSelfPermission"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "android.permission.FOREGROUND_SERVICE"

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final a(ILandroid/app/Notification;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "i"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "h"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x3ff

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string p2, "disableBackgroundLocation"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/h;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/col/l3s/h;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/h;->a()V

    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    const/16 v0, 0x3fa

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "setLocationOption"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    const/16 v0, 0x3ea

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "setLocationListener"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "j"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x400

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "disableBackgroundLocation"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/d;->B:Z

    return p0
.end method

.method public final b()V
    .locals 4

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ALManager"

    const-string v1, "startLocation"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    const/16 v0, 0x3ed

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string v0, "unRegisterLocationListener"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ALManager"

    const-string v1, "stopLocation"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/h;->b()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    :cond_0
    const/16 v0, 0x3f3

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/d;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ALManager"

    const-string v1, "onDestroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()Lcom/amap/api/location/AMapLocation;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/i;->b()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "ALManager"

    const-string v2, "getLastKnownLocation"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final f()V
    .locals 4

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ALManager"

    const-string v1, "startAssistantLocation"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/h;->b()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/d;->G:Lcom/amap/api/col/l3s/h;

    :cond_0
    const/16 v0, 0x3f1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/l3s/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ALManager"

    const-string v1, "stopAssistantLocation"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 5

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/l3s/d;->a(ILandroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/d;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/d;->B:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/d;->r:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->k()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->q:Lcom/amap/api/col/l3s/pa;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3s/pa;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3s/pa;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->s:Lcom/amap/api/col/l3s/e;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/amap/api/col/l3s/e;->d:Lcom/amap/api/col/l3s/e$a;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->H:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/amap/api/col/l3s/d;->z:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->A:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/d;->n()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/d;->z:Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/d;->d:Ljava/util/ArrayList;

    :cond_4
    iput-object v1, p0, Lcom/amap/api/col/l3s/d;->H:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->p:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    iput-object v1, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/d;->m:Lcom/amap/api/col/l3s/d$b;

    if-eqz v2, :cond_7

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_6

    :try_start_2
    const-class v3, Landroid/os/HandlerThread;

    const-string v4, "quitSafely"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0}, Lcom/amap/api/col/l3s/oz;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->m:Lcom/amap/api/col/l3s/d$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :cond_7
    :goto_1
    iput-object v1, p0, Lcom/amap/api/col/l3s/d;->m:Lcom/amap/api/col/l3s/d$b;

    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->b:Lcom/amap/api/col/l3s/d$c;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/i;->c()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    :cond_9
    return-void

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method
