.class final Lcom/amap/api/col/l3s/k$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/fm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/k;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/k;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$c;->a:Lcom/amap/api/col/l3s/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/k;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k$c;-><init>(Lcom/amap/api/col/l3s/k;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$c;->a:Lcom/amap/api/col/l3s/k;

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    iget-object v1, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    aget-object p1, v1, p1

    iput-object p1, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method
