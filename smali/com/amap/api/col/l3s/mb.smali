.class public final Lcom/amap/api/col/l3s/mb;
.super Lcom/amap/api/col/l3s/ma;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ma;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/mb;->b:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/mb;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/mb;->b:Z

    return-void
.end method


# virtual methods
.method protected final c()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/mb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/iy;->q(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/mb;->b:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method
