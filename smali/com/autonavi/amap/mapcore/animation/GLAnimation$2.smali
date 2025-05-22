.class Lcom/autonavi/amap/mapcore/animation/GLAnimation$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setListenerHandler(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation$2;->this$0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation$2;->this$0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iget-object p0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
