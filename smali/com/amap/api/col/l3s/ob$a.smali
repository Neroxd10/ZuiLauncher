.class final Lcom/amap/api/col/l3s/ob$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3s/ob;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob$a;->a:Lcom/amap/api/col/l3s/ob;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ob$a;->a:Lcom/amap/api/col/l3s/ob;

    return-void
.end method

.method final a(Lcom/amap/api/col/l3s/ob;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob$a;->a:Lcom/amap/api/col/l3s/ob;

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$a;->a:Lcom/amap/api/col/l3s/ob;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob$a;->a:Lcom/amap/api/col/l3s/ob;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ob;->a(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
