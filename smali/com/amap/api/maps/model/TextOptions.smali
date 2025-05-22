.class public final Lcom/amap/api/maps/model/TextOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TextOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private alignX:I

.field private alignY:I

.field private backgroundColor:I

.field private fontColor:I

.field private fontSize:I

.field private isVisible:Z

.field private object:Ljava/lang/Object;

.field private position:Lcom/amap/api/maps/model/LatLng;

.field private rotate:F

.field private text:Ljava/lang/String;

.field private typeface:Landroid/graphics/Typeface;

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/TextOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/TextOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/TextOptions;->CREATOR:Lcom/amap/api/maps/model/TextOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->typeface:Landroid/graphics/Typeface;

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->alignX:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->alignY:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->backgroundColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->fontColor:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->fontSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->zIndex:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/TextOptions;->isVisible:Z

    return-void
.end method


# virtual methods
.method public final align(II)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->alignX:I

    iput p2, p0, Lcom/amap/api/maps/model/TextOptions;->alignY:I

    return-object p0
.end method

.method public final backgroundColor(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->backgroundColor:I

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final fontColor(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->fontColor:I

    return-object p0
.end method

.method public final fontSize(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->fontSize:I

    return-object p0
.end method

.method public final getAlignX()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TextOptions;->alignX:I

    return p0
.end method

.method public final getAlignY()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TextOptions;->alignY:I

    return p0
.end method

.method public final getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TextOptions;->backgroundColor:I

    return p0
.end method

.method public final getFontColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TextOptions;->fontColor:I

    return p0
.end method

.method public final getFontSize()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TextOptions;->fontSize:I

    return p0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/TextOptions;->object:Ljava/lang/Object;

    return-object p0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/TextOptions;->position:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getRotate()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TextOptions;->rotate:F

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/TextOptions;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/TextOptions;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TextOptions;->zIndex:F

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/TextOptions;->isVisible:Z

    return p0
.end method

.method public final position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->position:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final rotate(F)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->rotate:F

    return-object p0
.end method

.method public final setObject(Ljava/lang/Object;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->object:Ljava/lang/Object;

    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->typeface:Landroid/graphics/Typeface;

    :cond_0
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/TextOptions;->isVisible:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, Lcom/amap/api/maps/model/TextOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->position:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-string v2, "lat"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->position:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-string v2, "lng"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/amap/api/maps/model/TextOptions;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amap/api/maps/model/TextOptions;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->rotate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->alignX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->alignY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->fontColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->fontSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->zIndex:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Lcom/amap/api/maps/model/TextOptions;->isVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amap/api/maps/model/TextOptions;->object:Ljava/lang/Object;

    instance-of p2, p2, Landroid/os/Parcelable;

    if-eqz p2, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/amap/api/maps/model/TextOptions;->object:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcelable;

    const-string v0, "obj"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->zIndex:F

    return-object p0
.end method
