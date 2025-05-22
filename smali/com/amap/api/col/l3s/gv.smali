.class final Lcom/amap/api/col/l3s/gv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/gv;->a:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/gv;->b:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/gv;->a:Z

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/gv;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/gv;->b:Z

    return p0
.end method
