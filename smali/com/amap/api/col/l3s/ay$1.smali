.class final Lcom/amap/api/col/l3s/ay$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ay;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/col/l3s/ay;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    iget-object v1, v1, Lcom/amap/api/col/l3s/ay;->c:Landroid/content/Context;

    const-string v2, "infowindow_bg.9.png"

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/col/l3s/ay;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/col/l3s/ay;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    iget-object v2, v2, Lcom/amap/api/col/l3s/ay;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/col/l3s/ay;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/col/l3s/ay;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/col/l3s/ay;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    iget-object v2, v2, Lcom/amap/api/col/l3s/ay;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/col/l3s/ay;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->c(Lcom/amap/api/col/l3s/ay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->c(Lcom/amap/api/col/l3s/ay;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    iget-object v3, v3, Lcom/amap/api/col/l3s/ay;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/col/l3s/ay;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->d(Lcom/amap/api/col/l3s/ay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->d(Lcom/amap/api/col/l3s/ay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {p1}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/col/l3s/ay;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {p1}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/col/l3s/ay;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->c(Lcom/amap/api/col/l3s/ay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {p1}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/col/l3s/ay;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ay;->d(Lcom/amap/api/col/l3s/ay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "InfoWindowDelegate"

    const-string v1, "showInfoWindow decodeDrawableFromAsset"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ay$1;->a:Lcom/amap/api/col/l3s/ay;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/col/l3s/ay;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
