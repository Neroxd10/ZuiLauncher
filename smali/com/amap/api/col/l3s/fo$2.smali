.class final Lcom/amap/api/col/l3s/fo$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fo;->hideInfoWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fo;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fo;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo$2;->a:Lcom/amap/api/col/l3s/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$2;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->d(Lcom/amap/api/col/l3s/fo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$2;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->d(Lcom/amap/api/col/l3s/fo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$2;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->d(Lcom/amap/api/col/l3s/fo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$2;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->d(Lcom/amap/api/col/l3s/fo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$2;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->e(Lcom/amap/api/col/l3s/fo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo$2;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fo;->f(Lcom/amap/api/col/l3s/fo;)Landroid/view/View;

    :cond_0
    return-void
.end method
