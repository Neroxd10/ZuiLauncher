.class final Lcom/amap/api/col/l3s/dx$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/amap/api/col/l3s/dx$b;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/amap/api/col/l3s/dx$b;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/dx$b;->a:Lcom/amap/api/col/l3s/dx;

    iget-object p0, p0, Lcom/amap/api/col/l3s/dx$b;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p1, p0}, Lcom/amap/api/col/l3s/dx;->c(Lcom/amap/api/col/l3s/dx;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
