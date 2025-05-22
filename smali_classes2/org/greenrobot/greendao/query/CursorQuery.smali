.class public Lorg/greenrobot/greendao/query/CursorQuery;
.super Lorg/greenrobot/greendao/query/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/CursorQuery$b;
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
.field private final a:Lorg/greenrobot/greendao/query/CursorQuery$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/CursorQuery$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/CursorQuery$b;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/CursorQuery$b<",
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

    iput-object p1, p0, Lorg/greenrobot/greendao/query/CursorQuery;->a:Lorg/greenrobot/greendao/query/CursorQuery$b;

    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/query/CursorQuery$b;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILorg/greenrobot/greendao/query/CursorQuery$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/greenrobot/greendao/query/CursorQuery;-><init>(Lorg/greenrobot/greendao/query/CursorQuery$b;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static a(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/CursorQuery;
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
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT2;>;"
        }
    .end annotation

    new-instance v6, Lorg/greenrobot/greendao/query/CursorQuery$b;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/a;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/CursorQuery$b;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/b;->b()Lorg/greenrobot/greendao/query/a;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object p0
.end method

.method public static internalCreate(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;
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
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT2;>;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Lorg/greenrobot/greendao/query/CursorQuery;->a(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public forCurrentThread()Lorg/greenrobot/greendao/query/CursorQuery;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/query/CursorQuery;->a:Lorg/greenrobot/greendao/query/CursorQuery$b;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/b;->c(Lorg/greenrobot/greendao/query/a;)Lorg/greenrobot/greendao/query/a;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object p0
.end method

.method public query()Landroid/database/Cursor;
    .locals 2

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/a;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/a;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/a;->sql:Ljava/lang/String;

    iget-object p0, p0, Lorg/greenrobot/greendao/query/a;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
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

.method public setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/CursorQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/a;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/a;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object p0
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/c;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/c;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object p0
.end method

.method public setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/CursorQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/a;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/a;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CursorQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CursorQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CursorQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CursorQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p0

    return-object p0
.end method
