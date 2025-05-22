.class public final Lcom/amap/api/col/l3s/qi$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/qg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/qi;
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

    iput p1, p0, Lcom/amap/api/col/l3s/qi$a;->a:I

    iput p2, p0, Lcom/amap/api/col/l3s/qi$a;->b:I

    iput p3, p0, Lcom/amap/api/col/l3s/qi$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    iget v0, p0, Lcom/amap/api/col/l3s/qi$a;->a:I

    iget p0, p0, Lcom/amap/api/col/l3s/qi$a;->b:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/qi$a;->c:I

    return p0
.end method
