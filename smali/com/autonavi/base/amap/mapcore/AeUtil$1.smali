.class final Lcom/autonavi/base/amap/mapcore/AeUtil$1;
.super Lcom/amap/api/col/l3s/md;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/amap/mapcore/AeUtil;->initResource(Landroid/content/Context;)Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/AeUtil$1;->val$currentPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/AeUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/md;-><init>()V

    return-void
.end method


# virtual methods
.method public final runTask()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/AeUtil$1;->val$currentPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/AeUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/autonavi/base/amap/mapcore/AeUtil;->access$000(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
