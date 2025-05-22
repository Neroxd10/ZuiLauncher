.class final Lcom/amap/api/col/l3s/fu$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fu;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

.field final synthetic b:Lcom/amap/api/col/l3s/fu;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fu;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fu$1;->b:Lcom/amap/api/col/l3s/fu;

    iput-object p2, p0, Lcom/amap/api/col/l3s/fu$1;->a:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/amap/api/col/l3s/fu$1;->b:Lcom/amap/api/col/l3s/fu;

    invoke-static {p1}, Lcom/amap/api/col/l3s/fu;->a(Lcom/amap/api/col/l3s/fu;)Lcom/amap/api/col/l3s/gb;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu$1;->a:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/gb;->a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-void
.end method
