.class public Lorg/greenrobot/greendao/rx/RxQuery;
.super Lorg/greenrobot/greendao/rx/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/rx/a;"
    }
.end annotation

.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final a:Lorg/greenrobot/greendao/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/query/Query;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/greenrobot/greendao/rx/a;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery;->a:Lorg/greenrobot/greendao/query/Query;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/query/Query;Lrx/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/rx/a;-><init>(Lrx/Scheduler;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery;->a:Lorg/greenrobot/greendao/query/Query;

    return-void
.end method

.method static synthetic a(Lorg/greenrobot/greendao/rx/RxQuery;)Lorg/greenrobot/greendao/query/Query;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxQuery;->a:Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getScheduler()Lrx/Scheduler;
    .locals 0
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    invoke-super {p0}, Lorg/greenrobot/greendao/rx/a;->getScheduler()Lrx/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public list()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery$a;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery$a;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public oneByOne()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery$c;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery$c;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public unique()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery$b;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery$b;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
