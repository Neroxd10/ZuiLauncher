.class final Lcom/amap/api/col/l3s/hj;
.super Lcom/amap/api/col/l3s/hi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/hj$a;
    }
.end annotation


# instance fields
.field private a:D


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/hi;-><init>([Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hj;->a:D

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hj;->a:D

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/hj;->a:D

    return-wide v0
.end method

.method public final a(Lcom/amap/api/col/l3s/hh$a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/hi;->a(Lcom/amap/api/col/l3s/hh$a;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/hh$a;->d()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hj;->a:D

    :cond_0
    return-void
.end method

.method protected final a(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/amap/api/col/l3s/hh$b;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amap/api/col/l3s/hh$b;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/amap/api/col/l3s/hi;->a(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3s/hh$b;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p2, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    instance-of v1, p1, Lcom/amap/api/col/l3s/hj$a;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/amap/api/col/l3s/hj$a;

    iget-object v1, p2, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3s/hj$a;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method protected final b(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/amap/api/col/l3s/hh$b;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amap/api/col/l3s/hh$b;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/amap/api/col/l3s/hi;->b(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/hh$b;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p2, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    instance-of v3, v2, Lcom/amap/api/col/l3s/hj$a;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/amap/api/col/l3s/hj$a;

    iget-object v3, p2, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3s/hj$a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected final c(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/amap/api/col/l3s/hh$b;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amap/api/col/l3s/hh$b;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p2, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/amap/api/col/l3s/hi;->c(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/hh$b;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p2, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    instance-of v3, v2, Lcom/amap/api/col/l3s/hj$a;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/amap/api/col/l3s/hj$a;

    iget-object v3, p2, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3s/hj$a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method
