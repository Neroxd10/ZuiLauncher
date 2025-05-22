.class final Lcom/amap/api/col/l3s/fb$1;
.super Lcom/amap/api/col/l3s/ej;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/ej<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fb;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fb;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fb$1;->a:Lcom/amap/api/col/l3s/fb;

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/ej;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/col/l3s/fb;->a(Landroid/graphics/Bitmap;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method protected final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fb$1;->a:Lcom/amap/api/col/l3s/fb;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fb;->a(Lcom/amap/api/col/l3s/fb;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fb$1;->a:Lcom/amap/api/col/l3s/fb;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fb;->a(Lcom/amap/api/col/l3s/fb;)Ljava/util/HashMap;

    move-result-object p0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
