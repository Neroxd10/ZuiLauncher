.class public final Lcom/amap/api/col/l3s/el;
.super Lcom/amap/api/col/l3s/fi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/el$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/fi<",
        "Lcom/amap/api/col/l3s/el$a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/amap/api/col/l3s/el$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fi;-><init>()V

    return-void
.end method

.method private b(I)Lcom/amap/api/col/l3s/el$a;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/fi;->a:Lcom/amap/api/col/l3s/fj;

    check-cast v0, Lcom/amap/api/col/l3s/el$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/el$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/el$a;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/amap/api/col/l3s/fj;->f:Lcom/amap/api/col/l3s/fj;

    iput-object v2, p0, Lcom/amap/api/col/l3s/fi;->a:Lcom/amap/api/col/l3s/fj;

    iput-object v1, v0, Lcom/amap/api/col/l3s/fj;->f:Lcom/amap/api/col/l3s/fj;

    :goto_0
    iget v2, v0, Lcom/amap/api/col/l3s/el$a;->e:I

    if-ge v2, p1, :cond_2

    const v2, 0x8000

    if-ge p1, v2, :cond_1

    move p1, v2

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3s/el$a;->a:Ljava/nio/ByteBuffer;

    iput p1, v0, Lcom/amap/api/col/l3s/el$a;->e:I

    iput-object v1, v0, Lcom/amap/api/col/l3s/el$a;->b:Ljava/nio/ShortBuffer;

    iput-object v1, v0, Lcom/amap/api/col/l3s/el$a;->d:Ljava/nio/IntBuffer;

    iput-object v1, v0, Lcom/amap/api/col/l3s/el$a;->c:Ljava/nio/FloatBuffer;

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/el;->b:Lcom/amap/api/col/l3s/el$a;

    iget-object v1, v0, Lcom/amap/api/col/l3s/fj;->f:Lcom/amap/api/col/l3s/fj;

    if-nez v1, :cond_3

    iput-object p1, v0, Lcom/amap/api/col/l3s/fj;->f:Lcom/amap/api/col/l3s/fj;

    iput-object v0, p0, Lcom/amap/api/col/l3s/el;->b:Lcom/amap/api/col/l3s/el$a;

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'item\' is a list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/el;->b(I)Lcom/amap/api/col/l3s/el$a;

    move-result-object p0

    iget-object p1, p0, Lcom/amap/api/col/l3s/el$a;->c:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/el$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/amap/api/col/l3s/el$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/el$a;->c:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/el$a;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/amap/api/col/l3s/el$a;->c:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/el;->b:Lcom/amap/api/col/l3s/el$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/fi;->a(Lcom/amap/api/col/l3s/fj;)Lcom/amap/api/col/l3s/fj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/el;->b:Lcom/amap/api/col/l3s/el$a;

    return-void
.end method

.method public final b()Ljava/nio/ShortBuffer;
    .locals 1

    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/el;->b(I)Lcom/amap/api/col/l3s/el$a;

    move-result-object p0

    iget-object v0, p0, Lcom/amap/api/col/l3s/el$a;->b:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/el$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/amap/api/col/l3s/el$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/el$a;->b:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/el$a;->b:Ljava/nio/ShortBuffer;

    return-object p0
.end method
