.class final Lorg/greenrobot/greendao/query/DeleteQuery$b;
.super Lorg/greenrobot/greendao/query/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/query/DeleteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/b<",
        "TT2;",
        "Lorg/greenrobot/greendao/query/DeleteQuery<",
        "TT2;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/b;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/DeleteQuery$b;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lorg/greenrobot/greendao/query/a;
    .locals 0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/DeleteQuery$b;->e()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p0

    return-object p0
.end method

.method protected e()Lorg/greenrobot/greendao/query/DeleteQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/DeleteQuery<",
            "TT2;>;"
        }
    .end annotation

    new-instance v6, Lorg/greenrobot/greendao/query/DeleteQuery;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/b;->b:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lorg/greenrobot/greendao/query/b;->c:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/DeleteQuery;-><init>(Lorg/greenrobot/greendao/query/DeleteQuery$b;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$a;)V

    return-object v6
.end method
