.class public Lorg/greenrobot/greendao/rx/RxDao;
.super Lorg/greenrobot/greendao/rx/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/rx/a;"
    }
.end annotation

.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final a:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;)V"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/rx/RxDao;-><init>(Lorg/greenrobot/greendao/AbstractDao;Lrx/Scheduler;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Lrx/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/rx/a;-><init>(Lrx/Scheduler;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxDao;->a:Lorg/greenrobot/greendao/AbstractDao;

    return-void
.end method

.method static synthetic a(Lorg/greenrobot/greendao/rx/RxDao;)Lorg/greenrobot/greendao/AbstractDao;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxDao;->a:Lorg/greenrobot/greendao/AbstractDao;

    return-object p0
.end method


# virtual methods
.method public count()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$o;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxDao$o;-><init>(Lorg/greenrobot/greendao/rx/RxDao;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public delete(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$g;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$g;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public deleteAll()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$i;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxDao$i;-><init>(Lorg/greenrobot/greendao/rx/RxDao;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public deleteByKey(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$h;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$h;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public deleteByKeyInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TK;>;)",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$m;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$m;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public varargs deleteByKeyInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$n;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$n;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public deleteInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$j;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$j;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public varargs deleteInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$l;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$l;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getDao()Lorg/greenrobot/greendao/AbstractDao;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxDao;->a:Lorg/greenrobot/greendao/AbstractDao;

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

.method public insert(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$r;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$r;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public insertInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lrx/Observable<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$s;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$s;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public varargs insertInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$t;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$t;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public insertOrReplace(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$u;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$u;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lrx/Observable<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$v;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$v;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public varargs insertOrReplaceInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$w;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$w;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$p;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$p;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public loadAll()Lrx/Observable;
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

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$k;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxDao$k;-><init>(Lorg/greenrobot/greendao/rx/RxDao;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public refresh(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$q;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$q;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public save(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$a;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$a;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public saveInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lrx/Observable<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$b;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$b;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public varargs saveInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$c;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$c;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$d;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$d;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public updateInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lrx/Observable<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$e;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$e;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public varargs updateInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$f;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$f;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/a;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
