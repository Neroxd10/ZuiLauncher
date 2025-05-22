.class final Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;


# direct methods
.method private constructor <init>(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;->a:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;-><init>(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "MoveSmoothThread"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method
