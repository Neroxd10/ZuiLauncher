.class Landroid/app/IZuiSystemMessageListener$Stub$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/IZuiSystemMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IZuiSystemMessageListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static b:Landroid/app/IZuiSystemMessageListener;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/IZuiSystemMessageListener$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/app/IZuiSystemMessageListener$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public onDoublePowerClicked(Z)V
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.IZuiSystemMessageListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/app/IZuiSystemMessageListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Landroid/app/IZuiSystemMessageListener$Stub;->getDefaultImpl()Landroid/app/IZuiSystemMessageListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/app/IZuiSystemMessageListener$Stub;->getDefaultImpl()Landroid/app/IZuiSystemMessageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IZuiSystemMessageListener;->onDoublePowerClicked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onLauncherGoForeground()V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.IZuiSystemMessageListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/IZuiSystemMessageListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/app/IZuiSystemMessageListener$Stub;->getDefaultImpl()Landroid/app/IZuiSystemMessageListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/app/IZuiSystemMessageListener$Stub;->getDefaultImpl()Landroid/app/IZuiSystemMessageListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IZuiSystemMessageListener;->onLauncherGoForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
