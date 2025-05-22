.class public Lcom/zui/launcher/util/ObjectWrapper;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/ObjectWrapper;->a:Ljava/lang/Object;

    return-void
.end method

.method public static unwrap(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Lcom/zui/launcher/util/ObjectWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zui/launcher/util/ObjectWrapper;

    invoke-virtual {p0}, Lcom/zui/launcher/util/ObjectWrapper;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/util/ObjectWrapper;->a:Ljava/lang/Object;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/util/ObjectWrapper;->a:Ljava/lang/Object;

    return-object p0
.end method
