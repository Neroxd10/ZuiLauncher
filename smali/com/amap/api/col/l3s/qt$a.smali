.class final Lcom/amap/api/col/l3s/qt$a;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/qt;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/qt;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/qt$a;->a:Lcom/amap/api/col/l3s/qt;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt$a;->a:Lcom/amap/api/col/l3s/qt;

    invoke-static {v0}, Lcom/amap/api/col/l3s/qt;->d(Lcom/amap/api/col/l3s/qt;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt$a;->a:Lcom/amap/api/col/l3s/qt;

    invoke-static {v0, p1}, Lcom/amap/api/col/l3s/qt;->a(Lcom/amap/api/col/l3s/qt;Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt$a;->a:Lcom/amap/api/col/l3s/qt;

    iput-object p1, v0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/amap/api/col/l3s/qt;->g:Z

    invoke-static {v0}, Lcom/amap/api/col/l3s/qt;->e(Lcom/amap/api/col/l3s/qt;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt$a;->a:Lcom/amap/api/col/l3s/qt;

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/qt;->a(Lcom/amap/api/col/l3s/qt;J)J

    :cond_0
    return-void
.end method
