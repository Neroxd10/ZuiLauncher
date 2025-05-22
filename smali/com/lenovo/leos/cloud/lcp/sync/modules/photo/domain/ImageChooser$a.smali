.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
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
.method public a(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;
    .locals 2

    const-class p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;I)I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;Ljava/util/List;)Ljava/util/List;

    return-object v1
.end method

.method public b(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;
    .locals 0

    new-array p0, p1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser$a;->a(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser$a;->b(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object p0

    return-object p0
.end method
