.class Lcom/lenovo/weathercenterSDK/TravelManager$d;
.super Lcom/lenovo/weathercenter/ITravelListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/TravelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

.field final synthetic b:Lcom/lenovo/weathercenterSDK/TravelManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->b:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-direct {p0}, Lcom/lenovo/weathercenter/ITravelListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->a:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    return-void
.end method


# virtual methods
.method public onBusRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->b:Lcom/lenovo/weathercenterSDK/TravelManager;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->a:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    const/16 v1, 0x7d2

    invoke-static {v0, p0, v1, p1, p2}, Lcom/lenovo/weathercenterSDK/TravelManager;->c(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V

    return-void
.end method

.method public onDriveRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->b:Lcom/lenovo/weathercenterSDK/TravelManager;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->a:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    const/16 v1, 0x7d3

    invoke-static {v0, p0, v1, p1, p2}, Lcom/lenovo/weathercenterSDK/TravelManager;->c(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V

    return-void
.end method

.method public onRideRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->b:Lcom/lenovo/weathercenterSDK/TravelManager;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->a:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    const/16 v1, 0x7d5

    invoke-static {v0, p0, v1, p1, p2}, Lcom/lenovo/weathercenterSDK/TravelManager;->c(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V

    return-void
.end method

.method public onTravelError(I)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->b:Lcom/lenovo/weathercenterSDK/TravelManager;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->a:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, p1, v2}, Lcom/lenovo/weathercenterSDK/TravelManager;->c(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V

    return-void
.end method

.method public onWalkRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->b:Lcom/lenovo/weathercenterSDK/TravelManager;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$d;->a:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    const/16 v1, 0x7d4

    invoke-static {v0, p0, v1, p1, p2}, Lcom/lenovo/weathercenterSDK/TravelManager;->c(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;IILcom/lenovo/weathercenter/entity/Travel;)V

    return-void
.end method
