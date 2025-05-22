.class public abstract Lcom/amap/api/col/l3s/mf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/amap/api/col/l3s/mh;

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/mf;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/amap/api/col/l3s/mh;

    iget-object v0, p0, Lcom/amap/api/col/l3s/mf;->b:Ljava/nio/ByteBuffer;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3s/mh;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3s/mf;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget-object v1, p0, Lcom/amap/api/col/l3s/mf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/ph;->a(Ljava/nio/ByteBuffer;)Lcom/amap/api/col/l3s/ph;

    return-object p0
.end method
