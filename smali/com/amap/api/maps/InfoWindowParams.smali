.class public Lcom/amap/api/maps/InfoWindowParams;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INFOWINDOW_TYPE_IMAGE:I = 0x1

.field public static final INFOWINDOW_TYPE_VIEW:I = 0x2


# instance fields
.field private infoContent:Landroid/view/View;

.field private infoWindow:Landroid/view/View;

.field private infoWindowType:I

.field private mInfoWindowUpdateTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/maps/InfoWindowParams;->infoWindowType:I

    return-void
.end method


# virtual methods
.method public getInfoContents()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/InfoWindowParams;->infoContent:Landroid/view/View;

    return-object p0
.end method

.method public getInfoWindow()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/InfoWindowParams;->infoWindow:Landroid/view/View;

    return-object p0
.end method

.method public getInfoWindowType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/InfoWindowParams;->infoWindowType:I

    return p0
.end method

.method public getInfoWindowUpdateTime()J
    .locals 2

    iget p0, p0, Lcom/amap/api/maps/InfoWindowParams;->mInfoWindowUpdateTime:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public setInfoContent(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/InfoWindowParams;->infoContent:Landroid/view/View;

    return-void
.end method

.method public setInfoWindow(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/InfoWindowParams;->infoWindow:Landroid/view/View;

    return-void
.end method

.method public setInfoWindowType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/InfoWindowParams;->infoWindowType:I

    return-void
.end method

.method public setInfoWindowUpdateTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/InfoWindowParams;->mInfoWindowUpdateTime:I

    return-void
.end method
