.class public final Lcom/amap/api/col/l3s/kj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/l3s/je;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/col/l3s/ny;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/kj;->c:Z

    const-string v0, "40C27E38DCAD404B5465362914090908"

    iput-object v0, p0, Lcom/amap/api/col/l3s/kj;->d:Ljava/lang/String;

    new-instance v1, Lcom/amap/api/col/l3s/ny;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3s/ny;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/kj;->e:Lcom/amap/api/col/l3s/ny;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/je$a;

    invoke-direct {v0, p3, p4, p3}, Lcom/amap/api/col/l3s/je$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/amap/api/col/l3s/je$a;->a([Ljava/lang/String;)Lcom/amap/api/col/l3s/je$a;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/amap/api/col/l3s/je$a;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/je$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amap/api/col/l3s/je$a;->a()Lcom/amap/api/col/l3s/je;

    move-result-object p3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/kj;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/col/l3s/kj;->b:Lcom/amap/api/col/l3s/je;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/kj;->c:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/kj;->e:Lcom/amap/api/col/l3s/ny;

    invoke-virtual {p0, p1, p3}, Lcom/amap/api/col/l3s/ny;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)V
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/l3s/kj;->e:Lcom/amap/api/col/l3s/ny;

    iget-object v1, p0, Lcom/amap/api/col/l3s/kj;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/ny;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    sget-object v0, Lcom/amap/api/col/l3s/kl$a;->a:Lcom/amap/api/col/l3s/kl;

    iget-object v2, p0, Lcom/amap/api/col/l3s/kj;->a:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/amap/api/col/l3s/kj;->c:Z

    iget-object v7, p0, Lcom/amap/api/col/l3s/kj;->b:Lcom/amap/api/col/l3s/je;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/amap/api/col/l3s/kl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/amap/api/col/l3s/je;)Z

    return-void
.end method
