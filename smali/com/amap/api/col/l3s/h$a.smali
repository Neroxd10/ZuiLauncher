.class final Lcom/amap/api/col/l3s/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/h;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/h;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/h$a;->a:Lcom/amap/api/col/l3s/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/h$a;->a:Lcom/amap/api/col/l3s/h;

    invoke-static {v0}, Lcom/amap/api/col/l3s/h;->c(Lcom/amap/api/col/l3s/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/h$a;->a:Lcom/amap/api/col/l3s/h;

    invoke-static {p1}, Lcom/amap/api/col/l3s/h;->a(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/h;->a(Lcom/amap/api/col/l3s/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
