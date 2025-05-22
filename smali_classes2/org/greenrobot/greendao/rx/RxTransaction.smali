.class public Lorg/greenrobot/greendao/rx/RxTransaction;
.super Lorg/greenrobot/greendao/rx/a;
.source ""


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final a:Lorg/greenrobot/greendao/AbstractDaoSession;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .locals 0

    invoke-direct {p0}, Lorg/greenrobot/greendao/rx/a;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->a:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;Lrx/Scheduler;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/rx/a;-><init>(Lrx/Scheduler;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->a:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-void
.end method

.method static synthetic a(Lorg/greenrobot/greendao/rx/RxTransaction;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->a:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-object p0
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxTransaction$b;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxTransaction$b;-><init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getDaoSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->a:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-object p0
.end method

.method public bridge synthetic getScheduler()Lrx/Scheduler;
    .locals 0
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    invoke-super {p0}, Lorg/greenrobot/greendao/rx/a;->getScheduler()Lrx/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public run(Ljava/lang/Runnable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxTransaction$a;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxTransaction$a;-><init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
