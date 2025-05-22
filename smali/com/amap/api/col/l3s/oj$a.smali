.class final Lcom/amap/api/col/l3s/oj$a;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/oj;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/oj;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj$a;->a:Lcom/amap/api/col/l3s/oj;

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

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj$a;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {v0}, Lcom/amap/api/col/l3s/oj;->d(Lcom/amap/api/col/l3s/oj;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj$a;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {v0, p1}, Lcom/amap/api/col/l3s/oj;->a(Lcom/amap/api/col/l3s/oj;Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj$a;->a:Lcom/amap/api/col/l3s/oj;

    iput-object p1, v0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/amap/api/col/l3s/oj;->g:Z

    invoke-static {v0}, Lcom/amap/api/col/l3s/oj;->e(Lcom/amap/api/col/l3s/oj;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj$a;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/oj;->a(Lcom/amap/api/col/l3s/oj;J)J

    :cond_0
    return-void
.end method
