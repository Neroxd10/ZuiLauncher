.class Lorg/greenrobot/greendao/rx/RxTransaction$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxTransaction;->call(Ljava/util/concurrent/Callable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Lorg/greenrobot/greendao/rx/RxTransaction;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction$b;->b:Lorg/greenrobot/greendao/rx/RxTransaction;

    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxTransaction$b;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxTransaction$b;->b:Lorg/greenrobot/greendao/rx/RxTransaction;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxTransaction;->a(Lorg/greenrobot/greendao/rx/RxTransaction;)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxTransaction$b;->a:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDaoSession;->callInTx(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
