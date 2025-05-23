.class public Lcom/amap/api/maps/model/NaviPara;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DRIVING_AVOID_CONGESTION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_NO_HIGHWAY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_NO_HIGHWAY_AVOID_CONGESTION:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_NO_HIGHWAY_AVOID_SHORT_MONEY:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_SAVE_MONEY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_SAVE_MONEY_AVOID_CONGESTION:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_SHORT_DISTANCE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private latLng:Lcom/amap/api/maps/model/LatLng;

.field private naviStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/NaviPara;->naviStyle:I

    return-void
.end method


# virtual methods
.method public getNaviStyle()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/NaviPara;->naviStyle:I

    return p0
.end method

.method public getTargetPoint()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/NaviPara;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public setNaviStyle(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/amap/api/maps/model/NaviPara;->naviStyle:I

    :cond_0
    return-void
.end method

.method public setTargetPoint(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/NaviPara;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method
