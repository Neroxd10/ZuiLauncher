.class public final Lcom/google/android/libraries/a/c;
.super Lcom/google/android/a/a;
.source ""

# interfaces
.implements Lcom/google/android/libraries/a/a;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-direct {p0, p1, v0}, Lcom/google/android/a/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Lcom/google/android/libraries/a/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/a/d;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;Z)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a_()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/a/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/a/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public final f()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/google/android/a/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return v0
.end method
