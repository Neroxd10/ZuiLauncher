.class public Lcom/zui/launcher/reorder/Point3D;
.super Landroid/graphics/Point;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zui/launcher/reorder/Point3D;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public screen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/reorder/Point3D$a;

    invoke-direct {v0}, Lcom/zui/launcher/reorder/Point3D$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/reorder/Point3D;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput p1, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/reorder/Point3D;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget p1, p1, Lcom/zui/launcher/reorder/Point3D;->screen:I

    iput p1, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/zui/launcher/reorder/Point3D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/reorder/Point3D;

    iget v0, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    iget v2, p1, Lcom/zui/launcher/reorder/Point3D;->screen:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final equals3D(III)Z
    .locals 0

    invoke-super {p0, p2, p3}, Landroid/graphics/Point;->equals(II)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/graphics/Point;->x:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    mul-int/lit16 p0, p0, 0x175

    add-int/2addr v0, p0

    return v0
.end method

.method public final negate3D()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/Point;->negate()V

    iget v0, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    neg-int v0, v0

    iput v0, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    return-void
.end method

.method public final offset3D(III)V
    .locals 0

    invoke-super {p0, p2, p3}, Landroid/graphics/Point;->offset(II)V

    iget p2, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    return-void
.end method

.method public set(III)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    invoke-super {p0, p2, p3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point3D("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Lcom/zui/launcher/reorder/Point3D;->screen:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
