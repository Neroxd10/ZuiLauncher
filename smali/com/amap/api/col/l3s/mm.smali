.class public final Lcom/amap/api/col/l3s/mm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/col/l3s/mm;->a:I

    iput-object p2, p0, Lcom/amap/api/col/l3s/mm;->b:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/mm;->a:I

    return p0
.end method

.method public final b()[B
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/mm;->b:[B

    return-object p0
.end method
