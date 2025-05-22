.class public Lorg/greenrobot/greendao/query/Join;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SRC:",
        "Ljava/lang/Object;",
        "DST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TDST;*>;"
        }
    .end annotation
.end field

.field final c:Lorg/greenrobot/greendao/Property;

.field final d:Lorg/greenrobot/greendao/Property;

.field final e:Ljava/lang/String;

.field final f:Lorg/greenrobot/greendao/query/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/d<",
            "TDST;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/greenrobot/greendao/Property;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TDST;*>;",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/Join;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/greenrobot/greendao/query/Join;->c:Lorg/greenrobot/greendao/Property;

    iput-object p3, p0, Lorg/greenrobot/greendao/query/Join;->b:Lorg/greenrobot/greendao/AbstractDao;

    iput-object p4, p0, Lorg/greenrobot/greendao/query/Join;->d:Lorg/greenrobot/greendao/Property;

    iput-object p5, p0, Lorg/greenrobot/greendao/query/Join;->e:Ljava/lang/String;

    new-instance p1, Lorg/greenrobot/greendao/query/d;

    invoke-direct {p1, p3, p5}, Lorg/greenrobot/greendao/query/d;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/Join;->f:Lorg/greenrobot/greendao/query/d;

    return-void
.end method


# virtual methods
.method public varargs and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 1

    iget-object p0, p0, Lorg/greenrobot/greendao/query/Join;->f:Lorg/greenrobot/greendao/query/d;

    const-string v0, " AND "

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/query/d;->f(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    return-object p0
.end method

.method public getTablePrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/query/Join;->e:Ljava/lang/String;

    return-object p0
.end method

.method public varargs or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 1

    iget-object p0, p0, Lorg/greenrobot/greendao/query/Join;->f:Lorg/greenrobot/greendao/query/d;

    const-string v0, " OR "

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/query/d;->f(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    return-object p0
.end method

.method public varargs where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "[",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")",
            "Lorg/greenrobot/greendao/query/Join<",
            "TSRC;TDST;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->f:Lorg/greenrobot/greendao/query/d;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/d;->a(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    return-object p0
.end method

.method public varargs whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "[",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")",
            "Lorg/greenrobot/greendao/query/Join<",
            "TSRC;TDST;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->f:Lorg/greenrobot/greendao/query/d;

    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/Join;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/d;->a(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    return-object p0
.end method
