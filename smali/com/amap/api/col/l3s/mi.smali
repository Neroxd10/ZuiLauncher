.class public final Lcom/amap/api/col/l3s/mi;
.super Lcom/amap/api/col/l3s/mf;
.source ""


# static fields
.field private static b:Lcom/amap/api/col/l3s/mi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/mi;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/mi;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/mi;->b:Lcom/amap/api/col/l3s/mi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x1400

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/mf;-><init>(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static b()Lcom/amap/api/col/l3s/mi;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/mi;->b:Lcom/amap/api/col/l3s/mi;

    return-object v0
.end method


# virtual methods
.method public final a([B[BLjava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/List<",
            "+",
            "Lcom/amap/api/col/l3s/mm;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/mf;->a()Lcom/amap/api/col/l3s/mf;

    iget-object v2, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v2, p1}, Lcom/amap/api/col/l3s/mp;->a(Lcom/amap/api/col/l3s/ph;[B)I

    move-result p1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3s/mm;

    iget-object v6, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/mm;->b()[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amap/api/col/l3s/mu;->a(Lcom/amap/api/col/l3s/ph;[B)I

    move-result v6

    iget-object v7, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/mm;->a()I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v7, v5, v6}, Lcom/amap/api/col/l3s/mu;->a(Lcom/amap/api/col/l3s/ph;BI)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {p3, v2}, Lcom/amap/api/col/l3s/mp;->a(Lcom/amap/api/col/l3s/ph;[I)I

    move-result p3

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v1, p2}, Lcom/amap/api/col/l3s/mp;->b(Lcom/amap/api/col/l3s/ph;[B)I

    move-result v3

    :cond_2
    iget-object p2, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {p2, p1, v3, p3}, Lcom/amap/api/col/l3s/mp;->a(Lcom/amap/api/col/l3s/ph;III)I

    move-result p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3s/ph;->c(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ph;->c()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ns;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final c()[B
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lcom/amap/api/col/l3s/mf;->a()Lcom/amap/api/col/l3s/mf;

    :try_start_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v5

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v6

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v8

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v9

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/mi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v10

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/mi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v11

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/np;->a(Ljava/lang/String;)J

    move-result-wide v12

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v14

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v15

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v16

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v17

    iget-object v3, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->a()B

    move-result v4

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->m()I

    move-result v1

    int-to-byte v7, v1

    invoke-static/range {v3 .. v17}, Lcom/amap/api/col/l3s/nr;->a(Lcom/amap/api/col/l3s/ph;BIIBIIIIJIIII)I

    move-result v1

    iget-object v2, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/ph;->c(I)V

    iget-object v0, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ph;->c()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ns;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
