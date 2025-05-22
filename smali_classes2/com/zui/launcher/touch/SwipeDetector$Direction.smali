.class public abstract Lcom/zui/launcher/touch/SwipeDetector$Direction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/SwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Direction"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F
.end method

.method abstract b(Landroid/view/MotionEvent;ILandroid/graphics/PointF;Z)F
.end method

.method abstract c(Landroid/view/VelocityTracker;Z)F
.end method

.method abstract d(F)Z
.end method

.method abstract e(F)Z
.end method
