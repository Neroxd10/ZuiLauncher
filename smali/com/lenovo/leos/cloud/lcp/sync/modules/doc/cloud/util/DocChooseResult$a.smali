.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;",
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
.method public a(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;
    .locals 3

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;-><init>(ZLjava/util/List;Ljava/lang/String;I)V

    return-object p0
.end method

.method public b(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;
    .locals 0

    new-array p0, p1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult$a;->a(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult$a;->b(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    move-result-object p0

    return-object p0
.end method
