.class public final Lcom/amap/api/col/l3s/nf$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/nd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/nf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/col/l3s/nf$a;->a:I

    iput p2, p0, Lcom/amap/api/col/l3s/nf$a;->b:I

    iput p3, p0, Lcom/amap/api/col/l3s/nf$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3s/nf$a;->a:I

    iget p0, p0, Lcom/amap/api/col/l3s/nf$a;->b:I

    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/nf;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/nf$a;->c:I

    return p0
.end method
