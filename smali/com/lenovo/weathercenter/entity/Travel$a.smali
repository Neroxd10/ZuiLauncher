.class Lcom/lenovo/weathercenter/entity/Travel$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/entity/Travel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lenovo/weathercenter/entity/Travel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/lenovo/weathercenter/entity/Travel;
    .locals 0

    new-instance p0, Lcom/lenovo/weathercenter/entity/Travel;

    invoke-direct {p0, p1}, Lcom/lenovo/weathercenter/entity/Travel;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/lenovo/weathercenter/entity/Travel;
    .locals 0

    new-array p0, p1, [Lcom/lenovo/weathercenter/entity/Travel;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/weathercenter/entity/Travel$a;->a(Landroid/os/Parcel;)Lcom/lenovo/weathercenter/entity/Travel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/weathercenter/entity/Travel$a;->b(I)[Lcom/lenovo/weathercenter/entity/Travel;

    move-result-object p0

    return-object p0
.end method
