.class Lorg/greenrobot/greendao/rx/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
.end annotation


# instance fields
.field protected final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/greendao/rx/a;->scheduler:Lrx/Scheduler;

    return-void
.end method

.method constructor <init>(Lrx/Scheduler;)V
    .locals 0
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/a;->scheduler:Lrx/Scheduler;

    return-void
.end method


# virtual methods
.method public getScheduler()Lrx/Scheduler;
    .locals 0
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/a;->scheduler:Lrx/Scheduler;

    return-object p0
.end method

.method protected wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p1}, Lorg/greenrobot/greendao/rx/b;->a(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/rx/a;->wrap(Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method protected wrap(Lrx/Observable;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TR;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/a;->scheduler:Lrx/Scheduler;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method
