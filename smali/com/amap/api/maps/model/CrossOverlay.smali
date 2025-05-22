.class public Lcom/amap/api/maps/model/CrossOverlay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/CrossOverlay$UpdateItem;,
        Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;,
        Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;
    }
.end annotation


# static fields
.field public static final UPDATE_TYPE_DATA:I


# instance fields
.field a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/CrossOverlayOptions;Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    iput-object p2, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setAttribute(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;->setAttribute(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setData([B)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;->setData([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setGenerateCrossImageListener(Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;->setGenerateCrossImageListener(Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setImageMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;->setImageMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setOnCrossVectorUpdateListener(Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;->setOnCrossVectorUpdateListener(Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
