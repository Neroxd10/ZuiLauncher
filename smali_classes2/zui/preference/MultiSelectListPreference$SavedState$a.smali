.class final Lzui/preference/MultiSelectListPreference$SavedState$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/MultiSelectListPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lzui/preference/MultiSelectListPreference$SavedState;",
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
.method public a(Landroid/os/Parcel;)Lzui/preference/MultiSelectListPreference$SavedState;
    .locals 0

    new-instance p0, Lzui/preference/MultiSelectListPreference$SavedState;

    invoke-direct {p0, p1}, Lzui/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lzui/preference/MultiSelectListPreference$SavedState;
    .locals 0

    new-array p0, p1, [Lzui/preference/MultiSelectListPreference$SavedState;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lzui/preference/MultiSelectListPreference$SavedState$a;->a(Landroid/os/Parcel;)Lzui/preference/MultiSelectListPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lzui/preference/MultiSelectListPreference$SavedState$a;->b(I)[Lzui/preference/MultiSelectListPreference$SavedState;

    move-result-object p0

    return-object p0
.end method
