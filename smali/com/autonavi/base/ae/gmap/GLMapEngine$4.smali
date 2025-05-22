.class Lcom/autonavi/base/ae/gmap/GLMapEngine$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/GLMapEngine;->networkStateChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/GLMapEngine;


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/GLMapEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$4;->this$0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$4;->this$0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-static {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->access$000(Lcom/autonavi/base/ae/gmap/GLMapEngine;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$4;->this$0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-boolean p0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isNetworkConnected:Z

    invoke-static {v0, v1, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->access$100(JI)V

    return-void
.end method
