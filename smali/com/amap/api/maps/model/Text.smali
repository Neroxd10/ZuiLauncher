.class public final Lcom/amap/api/maps/model/Text;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALIGN_BOTTOM:I = 0x10

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x4

.field public static final ALIGN_CENTER_VERTICAL:I = 0x20

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x8


# instance fields
.field private textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->destroy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/amap/api/maps/model/Text;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    check-cast p1, Lcom/amap/api/maps/model/Text;

    iget-object p1, p1, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public final getAlignX()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getAlignX()I

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

.method public final getAlignY()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getAlignY()I

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

.method public final getBackgroundColor()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getBackgroundColor()I

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

.method public final getFontColor()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getFontColor()I

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

.method public final getFontSize()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getFontSize()I

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

.method public final getId()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

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

.method public final getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getPosition()Lcom/amap/api/maps/model/LatLng;

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

.method public final getRotate()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getRotateAngle()F

    move-result p0

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getText()Ljava/lang/String;

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

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getTypeface()Landroid/graphics/Typeface;

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

.method public final getZIndex()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->hashCodeRemote()I

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

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

.method public final remove()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->remove()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setAlign(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setAlign(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setFontColor(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setFontColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setFontSize(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRotate(F)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setRotateAngle(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setZIndex(F)V

    return-void
.end method
