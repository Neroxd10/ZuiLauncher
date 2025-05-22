.class public final Lcom/amap/api/col/l3s/cc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/cc;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3s/cc;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3s/cc;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/amap/api/col/l3s/cc;->d:I

    iput-object p4, p0, Lcom/amap/api/col/l3s/cc;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cc;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cc;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cc;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cc;->d:I

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cc;->e:Ljava/lang/String;

    return-object p0
.end method
