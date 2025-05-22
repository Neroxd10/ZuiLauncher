.class Lcom/amap/api/col/l3s/t$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/amap/api/col/l3s/t$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/t$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3s/t$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3s/t$a;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/t$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/col/l3s/t$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/t$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/amap/api/col/l3s/t$c;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/t$a;->f:Lcom/amap/api/col/l3s/t$c;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/t$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/t$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/t$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lcom/amap/api/col/l3s/t$c;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/t$a;->f:Lcom/amap/api/col/l3s/t$c;

    return-object p0
.end method
