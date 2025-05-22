.class public final Lcom/amap/api/col/l3s/ng;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/l3s/nv;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/amap/api/col/l3s/nv;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/amap/api/col/l3s/nq;->b()V

    invoke-static {p4}, Lcom/amap/api/col/l3s/nq;->d(Ljava/lang/String;)V

    const-string p0, "74"

    invoke-static {p0}, Lcom/amap/api/col/l3s/nq;->f(Ljava/lang/String;)V

    const-string p0, "v74"

    invoke-static {p0}, Lcom/amap/api/col/l3s/nq;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amap/api/col/l3s/nq;->c(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/amap/api/col/l3s/nq;->b(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/amap/api/col/l3s/nh;->a(Lcom/amap/api/col/l3s/nv;)V

    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/mk$a;)Lcom/amap/api/col/l3s/mm;
    .locals 1

    invoke-static {}, Lcom/amap/api/col/l3s/mk;->a()Lcom/amap/api/col/l3s/mk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/mk;->a(Lcom/amap/api/col/l3s/mk$a;)Lcom/amap/api/col/l3s/mm;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/ni;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/amap/api/col/l3s/nf;->a(Ljava/util/List;)V

    return-void
.end method

.method public static a([B)Z
    .locals 0

    invoke-static {p0}, Lcom/amap/api/col/l3s/mn;->a([B)Z

    move-result p0

    return p0
.end method

.method public static a()[B
    .locals 1

    invoke-static {}, Lcom/amap/api/col/l3s/mi;->b()Lcom/amap/api/col/l3s/mi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/mi;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[BLjava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/mm;",
            ">;)[B"
        }
    .end annotation

    invoke-static {}, Lcom/amap/api/col/l3s/mi;->b()Lcom/amap/api/col/l3s/mi;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/col/l3s/mi;->a([B[BLjava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lcom/amap/api/col/l3s/nh;->a()V

    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/np;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/amap/api/col/l3s/nf;->b(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->a(I)V

    return-object p0
.end method

.method public final a(J)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/nq;->a(J)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->j(Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->l(Ljava/lang/String;)V

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->m(Ljava/lang/String;)V

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->n(Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->o(Ljava/lang/String;)V

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->p(Ljava/lang/String;)V

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/nq;->q(Ljava/lang/String;)V

    return-object p0
.end method
