.class final Lcom/amap/api/col/l3s/fm$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fm;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fm;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v1}, Lcom/amap/api/col/l3s/fm;->a(Lcom/amap/api/col/l3s/fm;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/amap/api/col/l3s/fm;->b(Lcom/amap/api/col/l3s/fm;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fm;->a(Lcom/amap/api/col/l3s/fm;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v1}, Lcom/amap/api/col/l3s/fm;->b(Lcom/amap/api/col/l3s/fm;)I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v1}, Lcom/amap/api/col/l3s/fm;->a(Lcom/amap/api/col/l3s/fm;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v2}, Lcom/amap/api/col/l3s/fm;->b(Lcom/amap/api/col/l3s/fm;)I

    move-result v2

    div-int/2addr v1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fm;->c(Lcom/amap/api/col/l3s/fm;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/col/l3s/fm;->b:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fm;->d(Lcom/amap/api/col/l3s/fm;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v2}, Lcom/amap/api/col/l3s/fm;->b(Lcom/amap/api/col/l3s/fm;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    new-instance v3, Lcom/amap/api/col/l3s/fm$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/col/l3s/fm$1$1;-><init>(Lcom/amap/api/col/l3s/fm$1;II)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    new-instance v3, Lcom/amap/api/col/l3s/fm$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/col/l3s/fm$1$2;-><init>(Lcom/amap/api/col/l3s/fm$1;II)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fm;->a(Lcom/amap/api/col/l3s/fm;I)I

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fm;->e(Lcom/amap/api/col/l3s/fm;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fm;->f(Lcom/amap/api/col/l3s/fm;)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
