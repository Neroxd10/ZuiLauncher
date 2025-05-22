.class public Lcom/amap/api/col/l3s/dl$e;
.super Lcom/amap/api/col/l3s/dk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dk;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "aMVPMatrix"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dl$e;->a:I

    const-string p1, "aColor"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dl$e;->c:I

    const-string p1, "aVertex"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dk;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dl$e;->b:I

    return-void
.end method
