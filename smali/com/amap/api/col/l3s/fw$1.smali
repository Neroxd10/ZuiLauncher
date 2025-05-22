.class final Lcom/amap/api/col/l3s/fw$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fw;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fw$a;

.field final synthetic b:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

.field final synthetic c:Lcom/amap/api/col/l3s/fw;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fw;Lcom/amap/api/col/l3s/fw$a;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fw$1;->c:Lcom/amap/api/col/l3s/fw;

    iput-object p2, p0, Lcom/amap/api/col/l3s/fw$1;->a:Lcom/amap/api/col/l3s/fw$a;

    iput-object p3, p0, Lcom/amap/api/col/l3s/fw$1;->b:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/amap/api/col/l3s/fw$1;->a:Lcom/amap/api/col/l3s/fw$a;

    iget-object p1, p1, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fw$1;->a:Lcom/amap/api/col/l3s/fw$a;

    iget-object p1, p1, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fw$1;->a:Lcom/amap/api/col/l3s/fw$a;

    iget-object p1, p1, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/fw$1;->c:Lcom/amap/api/col/l3s/fw;

    invoke-static {p1}, Lcom/amap/api/col/l3s/fw;->a(Lcom/amap/api/col/l3s/fw;)Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fw$1;->b:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
