.class Lorg/greenrobot/greendao/rx/RxTransaction$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxTransaction;->run(Ljava/lang/Runnable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lorg/greenrobot/greendao/rx/RxTransaction;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction$a;->b:Lorg/greenrobot/greendao/rx/RxTransaction;

    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxTransaction$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxTransaction$a;->b:Lorg/greenrobot/greendao/rx/RxTransaction;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxTransaction;->a(Lorg/greenrobot/greendao/rx/RxTransaction;)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxTransaction$a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/rx/RxTransaction$a;->a()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
