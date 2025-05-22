.class final Lcom/amap/api/col/l3s/cd$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amap/api/col/l3s/bz;

.field private d:Lcom/amap/api/col/l3s/cd$a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/ca;Lcom/amap/api/col/l3s/bz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cd$b;->c:Lcom/amap/api/col/l3s/bz;

    new-instance v0, Lcom/amap/api/col/l3s/cd$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/cd$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/cd$b;->d:Lcom/amap/api/col/l3s/cd$a;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/ca;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cd$b;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/ca;->u()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cd$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3s/cd$b;->c:Lcom/amap/api/col/l3s/bz;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cd$b;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lcom/amap/api/col/l3s/bz;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd$b;->c:Lcom/amap/api/col/l3s/bz;

    return-object p0
.end method

.method public final e()Lcom/amap/api/col/l3s/cd$a;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd$b;->d:Lcom/amap/api/col/l3s/cd$a;

    return-object p0
.end method

.method public final f()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd$b;->d:Lcom/amap/api/col/l3s/cd$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cd$a;->a:Z

    return-void
.end method
