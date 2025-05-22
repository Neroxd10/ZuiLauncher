.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/systemui/shared/system/RemoteTransitionCompat;",
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
.method public a(Landroid/os/Parcel;)Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    .locals 0

    new-instance p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    .locals 0

    new-array p0, p1, [Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$c;->a(Landroid/os/Parcel;)Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$c;->b(I)[Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    move-result-object p0

    return-object p0
.end method
