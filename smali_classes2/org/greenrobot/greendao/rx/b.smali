.class Lorg/greenrobot/greendao/rx/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
.end annotation


# direct methods
.method static a(Ljava/util/concurrent/Callable;)Lrx/Observable;
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

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/rx/b$a;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/b$a;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
