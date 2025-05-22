.class final Lcom/amap/api/col/l3s/gb$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/gb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/gb;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    invoke-static {p1}, Lcom/amap/api/col/l3s/gb;->a(Lcom/amap/api/col/l3s/gb;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    invoke-static {p1}, Lcom/amap/api/col/l3s/gb;->b(Lcom/amap/api/col/l3s/gb;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/gb;->a(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    invoke-static {p1}, Lcom/amap/api/col/l3s/gb;->c(Lcom/amap/api/col/l3s/gb;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    const/high16 v2, 0x42be0000    # 95.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/offlineservice/a;->a(F)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    invoke-static {v1}, Lcom/amap/api/col/l3s/gb;->c(Lcom/amap/api/col/l3s/gb;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    invoke-static {p1}, Lcom/amap/api/col/l3s/gb;->a(Lcom/amap/api/col/l3s/gb;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb$1;->a:Lcom/amap/api/col/l3s/gb;

    const/high16 v1, 0x42d20000    # 105.0f

    invoke-virtual {p0, v1}, Lcom/amap/api/offlineservice/a;->a(F)I

    move-result p0

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
