.class Lorg/greenrobot/greendao/query/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/d;->a:Lorg/greenrobot/greendao/AbstractDao;

    iput-object p2, p0, Lorg/greenrobot/greendao/query/d;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method varargs a(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/d;->d(Lorg/greenrobot/greendao/query/WhereCondition;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/query/d;->d(Lorg/greenrobot/greendao/query/WhereCondition;)V

    iget-object v2, p0, Lorg/greenrobot/greendao/query/d;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/greenrobot/greendao/query/d;->d(Lorg/greenrobot/greendao/query/WhereCondition;)V

    iget-object p0, p0, Lorg/greenrobot/greendao/query/d;->c:Ljava/lang/String;

    invoke-interface {p3, p1, p0}, Lorg/greenrobot/greendao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lorg/greenrobot/greendao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    return-void
.end method

.method c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/query/d;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Lorg/greenrobot/greendao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method d(Lorg/greenrobot/greendao/query/WhereCondition;)V
    .locals 1

    instance-of v0, p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    iget-object p1, p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/d;->e(Lorg/greenrobot/greendao/Property;)V

    :cond_0
    return-void
.end method

.method e(Lorg/greenrobot/greendao/Property;)V
    .locals 5

    iget-object v0, p0, Lorg/greenrobot/greendao/query/d;->a:Lorg/greenrobot/greendao/AbstractDao;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getProperties()[Lorg/greenrobot/greendao/Property;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not part of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/greenrobot/greendao/query/d;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method varargs f(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1, p2}, Lorg/greenrobot/greendao/query/d;->b(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1, p3}, Lorg/greenrobot/greendao/query/d;->b(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v2, p4, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1, v2}, Lorg/greenrobot/greendao/query/d;->b(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p0, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method g()Z
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/query/d;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method
