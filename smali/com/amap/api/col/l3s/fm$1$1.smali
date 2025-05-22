.class final Lcom/amap/api/col/l3s/fm$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/col/l3s/fm$1;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fm$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fm$1$1;->c:Lcom/amap/api/col/l3s/fm$1;

    iput p2, p0, Lcom/amap/api/col/l3s/fm$1$1;->a:I

    iput p3, p0, Lcom/amap/api/col/l3s/fm$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm$1$1;->c:Lcom/amap/api/col/l3s/fm$1;

    iget-object v0, v0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fm;->a(Lcom/amap/api/col/l3s/fm;)I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3s/fm$1$1;->a:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/col/l3s/fm$1$1;->c:Lcom/amap/api/col/l3s/fm$1;

    iget-object v2, v2, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {v2}, Lcom/amap/api/col/l3s/fm;->b(Lcom/amap/api/col/l3s/fm;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm$1$1;->c:Lcom/amap/api/col/l3s/fm$1;

    iget-object v0, v0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    iget v1, p0, Lcom/amap/api/col/l3s/fm$1$1;->b:I

    invoke-static {v0}, Lcom/amap/api/col/l3s/fm;->c(Lcom/amap/api/col/l3s/fm;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amap/api/col/l3s/fm;->b:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/fm$1$1;->c:Lcom/amap/api/col/l3s/fm$1;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fm$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fm;->d(Lcom/amap/api/col/l3s/fm;)V

    return-void
.end method
