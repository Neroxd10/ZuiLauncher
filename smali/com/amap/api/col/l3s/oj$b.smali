.class final Lcom/amap/api/col/l3s/oj$b;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/oj;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/oj;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/oj;->f(Lcom/amap/api/col/l3s/oj;)Lcom/amap/api/col/l3s/ob;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/oj;->f(Lcom/amap/api/col/l3s/oj;)Lcom/amap/api/col/l3s/ob;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ob;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    iput-object p1, v0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    iget-object p1, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/col/l3s/oj;->g:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/oj;->e(Lcom/amap/api/col/l3s/oj;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/oj;->a(Lcom/amap/api/col/l3s/oj;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/oj;->i()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/amap/api/col/l3s/oj;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 3

    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    iget v1, v1, Lcom/amap/api/col/l3s/oj;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/l3s/pc;->a(I)I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/oj;->a(Lcom/amap/api/col/l3s/oj;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    iget v1, v1, Lcom/amap/api/col/l3s/oj;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/pc;->a(I)I

    move-result v0

    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/oj;->a(Lcom/amap/api/col/l3s/oj;I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/oj;->f(Lcom/amap/api/col/l3s/oj;)Lcom/amap/api/col/l3s/ob;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj$b;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/oj;->f(Lcom/amap/api/col/l3s/oj;)Lcom/amap/api/col/l3s/ob;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ob;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
