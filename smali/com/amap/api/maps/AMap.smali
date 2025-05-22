.class public final Lcom/amap/api/maps/AMap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/AMap$OnMapScreenShotListener;,
        Lcom/amap/api/maps/AMap$onMapPrintScreenListener;,
        Lcom/amap/api/maps/AMap$OnMultiPointClickListener;,
        Lcom/amap/api/maps/AMap$OnCacheRemoveListener;,
        Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;,
        Lcom/amap/api/maps/AMap$OnPOIClickListener;,
        Lcom/amap/api/maps/AMap$OnMapLoadedListener;,
        Lcom/amap/api/maps/AMap$OnMapTouchListener;,
        Lcom/amap/api/maps/AMap$OnMapClickListener;,
        Lcom/amap/api/maps/AMap$OnMapLongClickListener;,
        Lcom/amap/api/maps/AMap$OnCameraChangeListener;,
        Lcom/amap/api/maps/AMap$OnMarkerClickListener;,
        Lcom/amap/api/maps/AMap$OnPolylineClickListener;,
        Lcom/amap/api/maps/AMap$OnMarkerDragListener;,
        Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;,
        Lcom/amap/api/maps/AMap$CancelableCallback;,
        Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;,
        Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;,
        Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;,
        Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;,
        Lcom/amap/api/maps/AMap$InfoWindowAdapter;
    }
.end annotation


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh_cn"

.field private static final CLASSNAME:Ljava/lang/String; = "AMap"

.field public static final CUSTOM:Ljava/lang/String; = "custom"

.field public static final ENGLISH:Ljava/lang/String; = "en"

.field public static final LOCAL:Ljava/lang/String; = "local"

.field public static final LOCATION_TYPE_LOCATE:I = 0x1

.field public static final LOCATION_TYPE_MAP_FOLLOW:I = 0x2

.field public static final LOCATION_TYPE_MAP_ROTATE:I = 0x3

.field public static final MAP_TYPE_BUS:I = 0x5

.field public static final MAP_TYPE_NAVI:I = 0x4

.field public static final MAP_TYPE_NIGHT:I = 0x3

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2

.field public static final MASK_LAYER_NONE:I = -0x1

.field public static final MASK_LAYER_UNDER_LINE:I = 0x1

.field public static final MASK_LAYER_UNDER_MARKER:I = 0x0

.field public static final STYLE_CHINESE:Ljava/lang/String; = "style_zh_cn"


# instance fields
.field private final mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

.field private myTrafficStyle:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private projection:Lcom/amap/api/maps/Projection;

.field private uiSettings:Lcom/amap/api/maps/UiSettings;


# direct methods
.method protected constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "7.8.0"

    return-object v0
.end method


# virtual methods
.method public final accelerateNetworkInChinese(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->accelerateNetworkInChinese(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addBuildingOverlay()Lcom/amap/api/maps/model/BuildingOverlay;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addBuildingOverlay()Lcom/amap/api/maps/model/BuildingOverlay;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addCrossOverlay(Lcom/amap/api/maps/model/CrossOverlayOptions;)Lcom/amap/api/maps/model/CrossOverlay;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addCrossVector(Lcom/amap/api/maps/model/CrossOverlayOptions;)Lcom/amap/api/maps/model/CrossOverlay;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addGL3DModel(Lcom/amap/api/maps/model/GL3DModelOptions;)Lcom/amap/api/maps/model/GL3DModel;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addGLModel(Lcom/amap/api/maps/model/GL3DModelOptions;)Lcom/amap/api/maps/model/GL3DModel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addHeatMapLayer(Lcom/amap/api/maps/model/HeatMapLayerOptions;)Lcom/amap/api/maps/model/HeatMapLayer;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addHeatMapLayer(Lcom/amap/api/maps/model/HeatMapLayerOptions;)Lcom/amap/api/maps/model/HeatMapLayer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addMultiPointOverlay(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/amap/api/maps/model/MultiPointOverlay;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addMultiPointOverlay(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/amap/api/maps/model/MultiPointOverlay;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final addParticleOverlay(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)Lcom/amap/api/maps/model/particle/ParticleOverlay;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addParticleOverlay(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)Lcom/amap/api/maps/model/particle/ParticleOverlay;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addRouteOverlay()Lcom/amap/api/maps/model/RouteOverlay;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addNaviRouteOverlay()Lcom/amap/api/maps/model/RouteOverlay;

    move-result-object p0

    return-object p0
.end method

.method public final addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    :try_start_0
    const-string v0, "AMap"

    const-string v1, "durationMs must be positive"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->animateCameraWithCallback(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final calculateZoomToSpanLevel(IIIILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->calculateZoomToSpanLevel(IIIILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final clear()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final clear(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->clear(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCurrentStyle()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCurrentWorldVectorMapStyle()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public final getInfoWindowAnimationManager()Lcom/amap/api/maps/InfoWindowAnimationManager;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getInfoWindowAnimationManager()Lcom/amap/api/maps/InfoWindowAnimationManager;

    move-result-object p0

    return-object p0
.end method

.method public final getMapContentApprovalNumber()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapContentApprovalNumber()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V

    return-void
.end method

.method public final getMapScreenMarkers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapScreenMarkers()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V

    return-void
.end method

.method public final getMapTextZIndex()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapTextZIndex()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getMapType()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapType()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public final getMaxZoomLevel()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result p0

    return p0
.end method

.method public final getMinZoomLevel()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result p0

    return p0
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMyLocation()Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMyLocationStyle()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMyLocationStyle()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMyTrafficStyle()Lcom/amap/api/maps/model/MyTrafficStyle;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->myTrafficStyle:Lcom/amap/api/maps/model/MyTrafficStyle;

    return-object p0
.end method

.method public final getNativeMapController()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getNativeMapController()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getP20MapCenter(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getSX()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getSY()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final getProjection()Lcom/amap/api/maps/Projection;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->projection:Lcom/amap/api/maps/Projection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getAMapProjection()Lcom/amap/api/maps/Projection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/AMap;->projection:Lcom/amap/api/maps/Projection;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->projection:Lcom/amap/api/maps/Projection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProjectionMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getProjectionMatrix()[F

    move-result-object p0

    return-object p0
.end method

.method public final getSatelliteImageApprovalNumber()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getSatelliteImageApprovalNumber()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScalePerPixel()F
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getScalePerPixel()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->uiSettings:Lcom/amap/api/maps/UiSettings;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getAMapUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/AMap;->uiSettings:Lcom/amap/api/maps/UiSettings;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->uiSettings:Lcom/amap/api/maps/UiSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getViewMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getViewMatrix()[F

    move-result-object p0

    return-object p0
.end method

.method public final getZoomToSpanLevel(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getZoomToSpanLevel(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result p0

    return p0
.end method

.method public final isMyLocationEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isMyLocationEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final isTouchPoiEnable()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isTouchPoiEnable()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public final isTrafficEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isTrafficEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final reloadMap()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->reloadMap()V

    return-void
.end method

.method public final removeOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removeOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removecache()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removecache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final resetMinMaxZoomPreference()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->resetMinMaxZoomPreference()V

    return-void
.end method

.method public final runOnDrawFrame()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAMapGestureListener(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setAMapGestureListener(Lcom/amap/api/maps/model/AMapGestureListener;)V

    return-void
.end method

.method public final setCommonInfoWindowAdapter(Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setInfoWindowAdapter(Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setConstructingRoadEnable(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setConstructingRoadEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setCustomMapStyle(Lcom/amap/api/maps/model/CustomMapStyleOptions;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setCustomMapStyle(Lcom/amap/api/maps/model/CustomMapStyleOptions;)V

    return-void
.end method

.method public final setCustomMapStyleID(Ljava/lang/String;)V
    .locals 0

    const-string p0, "amap"

    const-string p1, "\u8be5\u65b9\u6cd5\u5df2\u65e0\u6548\uff0c\u8bf7\u5230\u5b98\u7f51(lbs.amap.com)\u66f4\u65b0\u65b0\u7248\u6837\u5f0f\u6587\u4ef6\u5e76\u4f7f\u7528setCustomMapStyleOptions"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setCustomMapStylePath(Ljava/lang/String;)V
    .locals 0

    const-string p0, "amap"

    const-string p1, "\u8be5\u65b9\u6cd5\u5df2\u65e0\u6548\uff0c\u8bf7\u5230\u5b98\u7f51(lbs.amap.com)\u66f4\u65b0\u65b0\u7248\u6837\u5f0f\u6587\u4ef6\u5e76\u4f7f\u7528setCustomMapStyleOptions"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setCustomTextureResourcePath(Ljava/lang/String;)V
    .locals 0

    const-string p0, "amap"

    const-string p1, "\u8be5\u65b9\u6cd5\u5df2\u65e0\u6548\uff0c\u8bf7\u5230\u5b98\u7f51(lbs.amap.com)\u66f4\u65b0\u65b0\u7248\u6837\u5f0f\u6587\u4ef6\u5e76\u4f7f\u7528setCustomMapStyleOptions"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setLoadOfflineData(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setLoadOfflineData(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMapCustomEnable(Z)V
    .locals 0

    const-string p0, "amap"

    const-string p1, "\u8be5\u65b9\u6cd5\u5df2\u65e0\u6548\uff0c\u8bf7\u5230\u5b98\u7f51(lbs.amap.com)\u66f4\u65b0\u65b0\u7248\u6837\u5f0f\u6587\u4ef6\u5e76\u4f7f\u7528setCustomMapStyleOptions"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setMapLanguage(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMapLanguage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMapStatusLimits(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMapStatusLimits(Lcom/amap/api/maps/model/LatLngBounds;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMapTextZIndex(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMapTextZIndex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMapType(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMapType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMaskLayerParams(IIIIIJ)V
    .locals 8

    iget-object v0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMaskLayerParams(IIIIIJ)V

    return-void
.end method

.method public final setMaxZoomLevel(F)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMaxZoomLevel(F)V

    return-void
.end method

.method public final setMinZoomLevel(F)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMinZoomLevel(F)V

    return-void
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMyLocationRotateAngle(F)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMyLocationRotateAngle(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMyLocationType(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMyLocationType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/maps/AMap;->myTrafficStyle:Lcom/amap/api/maps/model/MyTrafficStyle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setNaviLabelEnable(ZII)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setNaviLabelEnable(ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnMaploadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnMultiPointClickListener(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnMultiPointClickListener(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setPointToCenter(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setCenterToPixel(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRenderFps(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRenderFps(I)V

    return-void
.end method

.method public final setRenderMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRenderMode(I)V

    return-void
.end method

.method public final setRoadArrowEnable(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRoadArrowEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTouchPoiEnable(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setTouchPoiEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTrafficEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setTrafficEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTrafficStyleWithTextureData([B)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setTrafficStyleWithTextureData([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setWorldVectorMapStyle(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setWorldVectorMapStyle(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showBuildings(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->set3DBuildingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showIndoorMap(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setIndoorEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showMapText(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMapTextEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final stopAnimation()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/AMap;->mapDelegate:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->stopAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
