.class public Lorg/greenrobot/greendao/query/Query;
.super Lorg/greenrobot/greendao/query/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/Query$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/greenrobot/greendao/query/Query$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/Query$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Lorg/greenrobot/greendao/rx/RxQuery;

.field private volatile c:Lorg/greenrobot/greendao/rx/RxQuery;


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/Query$b;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query$b<",
            "TT;>;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/c;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/Query;->a:Lorg/greenrobot/greendao/query/Query$b;

    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/query/Query$b;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILorg/greenrobot/greendao/query/Query$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/greenrobot/greendao/query/Query;-><init>(Lorg/greenrobot/greendao/query/Query$b;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static a(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/Query;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "II)",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT2;>;"
        }
    .end annotation

    new-instance v6, Lorg/greenrobot/greendao/query/Query$b;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/a;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/Query$b;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/b;->b()Lorg/greenrobot/greendao/query/a;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public static internalCreate(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT2;>;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Lorg/greenrobot/greendao/query/Query;->a(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public __InternalRx()Lorg/greenrobot/greendao/rx/RxQuery;
    .locals 2
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/query/Query;->c:Lorg/greenrobot/greendao/rx/RxQuery;

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery;

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/rx/RxQuery;-><init>(Lorg/greenrobot/greendao/query/Query;Lrx/Scheduler;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/Query;->c:Lorg/greenrobot/greendao/rx/RxQuery;

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/query/Query;->c:Lorg/greenrobot/greendao/rx/RxQuery;

    return-object p0
.end method

.method public __internalRxPlain()Lorg/greenrobot/greendao/rx/RxQuery;
    .locals 1
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/query/Query;->b:Lorg/greenrobot/greendao/rx/RxQuery;

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery;-><init>(Lorg/greenrobot/greendao/query/Query;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/Query;->b:Lorg/greenrobot/greendao/rx/RxQuery;

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/query/Query;->b:Lorg/greenrobot/greendao/rx/RxQuery;

    return-object p0
.end method

.method public forCurrentThread()Lorg/greenrobot/greendao/query/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/query/Query;->a:Lorg/greenrobot/greendao/query/Query$b;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/b;->c(Lorg/greenrobot/greendao/query/a;)Lorg/greenrobot/greendao/query/a;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public list()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/a;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/a;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/a;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/a;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object p0, p0, Lorg/greenrobot/greendao/query/a;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listIterator()Lorg/greenrobot/greendao/query/CloseableListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CloseableListIterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->listIteratorAutoClose()Lorg/greenrobot/greendao/query/CloseableListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listLazy()Lorg/greenrobot/greendao/query/LazyList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/LazyList<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/a;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/a;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/a;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/a;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lorg/greenrobot/greendao/query/LazyList;

    iget-object p0, p0, Lorg/greenrobot/greendao/query/a;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lorg/greenrobot/greendao/query/LazyList;-><init>(Lorg/greenrobot/greendao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/LazyList<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/a;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/a;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/a;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/a;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lorg/greenrobot/greendao/query/LazyList;

    iget-object p0, p0, Lorg/greenrobot/greendao/query/a;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/greenrobot/greendao/query/LazyList;-><init>(Lorg/greenrobot/greendao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public bridge synthetic setLimit(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/c;->setLimit(I)V

    return-void
.end method

.method public bridge synthetic setOffset(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/c;->setOffset(I)V

    return-void
.end method

.method public setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/a;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/a;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/c;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/c;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/a;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/a;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public unique()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/a;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/a;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/a;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/a;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object p0, p0, Lorg/greenrobot/greendao/query/a;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    const-string v0, "No entity found for query"

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
