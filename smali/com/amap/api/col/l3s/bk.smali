.class public final Lcom/amap/api/col/l3s/bk;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/l3s/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/bk;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3s/bw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/bk;->b:Lcom/amap/api/col/l3s/bw;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/amap/api/col/l3s/br;
    .locals 8

    const-string v0, "quanguo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "quanguogaiyaotu"

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bk;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/bh;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/amap/api/col/l3s/bk;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".zip.tmp.dt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    if-eqz v6, :cond_5

    invoke-static {v5}, Lcom/amap/api/col/l3s/ex;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/amap/api/col/l3s/br;

    invoke-direct {v5}, Lcom/amap/api/col/l3s/br;-><init>()V

    invoke-virtual {v5, v1}, Lcom/amap/api/col/l3s/br;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/bu;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v5

    :cond_4
    move-object v1, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method private a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bk;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bk;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/br;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/br;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bu;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bk;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_9

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v4, v2

    if-lez v4, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "a0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "m1.ans"

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    array-length v4, v2

    move v7, v0

    :goto_1
    if-ge v7, v4, :cond_7

    aget-object v8, v2, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    array-length v4, v2

    move v7, v0

    move v8, v7

    move v9, v8

    :goto_2
    if-ge v7, v4, :cond_6

    aget-object v10, v2, v7

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v8, v6

    :cond_4
    const-string v11, "m3.ans"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v9, v6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    move v6, v0

    :goto_3
    if-eqz v6, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "map/"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/bk;->b:Lcom/amap/api/col/l3s/bw;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/bw;->a()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "vmap/"

    invoke-direct {p0, v1, v3}, Lcom/amap/api/col/l3s/bk;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/l3s/bk;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/l3s/bk;->b(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bk;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3s/br;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/bu;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/amap/api/col/l3s/bu;->l:I

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v5, v6, :cond_a

    iget v5, v4, Lcom/amap/api/col/l3s/bu;->l:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v5, v4, Lcom/amap/api/col/l3s/bu;->l:I

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget v5, v4, Lcom/amap/api/col/l3s/bu;->l:I

    if-ne v5, v8, :cond_2

    goto :goto_3

    :cond_2
    iget v5, v4, Lcom/amap/api/col/l3s/bu;->l:I

    const/4 v9, 0x3

    if-ne v5, v9, :cond_0

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/bu;->g()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/bu;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lcom/amap/api/col/l3s/bu;->m:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v6, v8

    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/bu;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/l3s/ce;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v7, :cond_5

    iget-object v6, v4, Lcom/amap/api/col/l3s/bu;->m:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_1
    if-nez v8, :cond_0

    iget-object v5, p0, Lcom/amap/api/col/l3s/bk;->b:Lcom/amap/api/col/l3s/bw;

    :goto_2
    invoke-virtual {v5, v4}, Lcom/amap/api/col/l3s/bw;->b(Lcom/amap/api/col/l3s/br;)V

    goto :goto_0

    :cond_6
    :goto_3
    invoke-virtual {v4}, Lcom/amap/api/col/l3s/bu;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v4, Lcom/amap/api/col/l3s/bu;->m:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v6, v8

    :cond_8
    if-nez v6, :cond_9

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/bu;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/l3s/ce;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v7, :cond_9

    iget-object v6, v4, Lcom/amap/api/col/l3s/bu;->m:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    move v8, v6

    :goto_4
    if-nez v8, :cond_0

    iget-object v5, p0, Lcom/amap/api/col/l3s/bk;->b:Lcom/amap/api/col/l3s/bw;

    goto :goto_2

    :cond_a
    :goto_5
    iget-object v5, v4, Lcom/amap/api/col/l3s/bu;->m:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/bu;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3s/ce;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v7, :cond_b

    iget-object v5, v4, Lcom/amap/api/col/l3s/bu;->m:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    move v8, v5

    :goto_6
    if-nez v8, :cond_0

    iget-object v5, p0, Lcom/amap/api/col/l3s/bk;->b:Lcom/amap/api/col/l3s/bw;

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/bk;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/bk;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/br;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/amap/api/col/l3s/bk;->b:Lcom/amap/api/col/l3s/bw;

    invoke-virtual {v3, v1}, Lcom/amap/api/col/l3s/bw;->a(Lcom/amap/api/col/l3s/br;)V

    goto :goto_7

    :cond_e
    iget-object p0, p0, Lcom/amap/api/col/l3s/bk;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/bh;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bh;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
