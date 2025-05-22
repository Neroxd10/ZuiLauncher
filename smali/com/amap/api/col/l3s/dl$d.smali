.class public final Lcom/amap/api/col/l3s/dl$d;
.super Lcom/amap/api/col/l3s/dk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public g:I

.field public h:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dk;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "aMVP"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dl$d;->a:I

    const-string p1, "getUniform"

    invoke-static {p1}, Lcom/amap/api/col/l3s/ef;->a(Ljava/lang/String;)V

    const-string p1, "aMapBearing"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dl$d;->h:I

    const-string p1, "aVertex"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dl$d;->b:I

    const-string p1, "aTextureCoord"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dl$d;->c:I

    const-string p1, "aBearingTiltAlpha"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dl$d;->g:I

    return-void
.end method
