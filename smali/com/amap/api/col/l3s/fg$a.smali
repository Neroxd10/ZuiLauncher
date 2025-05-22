.class final Lcom/amap/api/col/l3s/fg$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic e:Lcom/amap/api/col/l3s/fg;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/fg;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fg$a;->e:Lcom/amap/api/col/l3s/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/amap/api/col/l3s/fg$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3s/fg$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3s/fg$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/col/l3s/fg$a;->b:Ljava/lang/String;

    iput p2, p0, Lcom/amap/api/col/l3s/fg$a;->c:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/fg$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
