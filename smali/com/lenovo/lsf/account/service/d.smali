.class public abstract Lcom/lenovo/lsf/account/service/d;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/lenovo/lsf/account/service/e;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/lenovo/lsf/account/service/e;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lenovo.lsf.account.service.IUkiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/lsf/account/service/e;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lenovo/lsf/account/service/e;

    return-object v0

    :cond_1
    new-instance v0, Lcom/lenovo/lsf/account/service/c;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/service/c;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
