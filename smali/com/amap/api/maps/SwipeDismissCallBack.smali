.class public Lcom/amap/api/maps/SwipeDismissCallBack;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/maps/SwipeDismissTouchListener$DismissCallbacks;


# instance fields
.field a:Lcom/amap/api/maps/SwipeDismissView;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/SwipeDismissView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/SwipeDismissCallBack;->a:Lcom/amap/api/maps/SwipeDismissView;

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/SwipeDismissCallBack;->a:Lcom/amap/api/maps/SwipeDismissView;

    iget-object p0, p0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/maps/WearMapView$OnDismissCallback;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onNotifySwipe()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/SwipeDismissCallBack;->a:Lcom/amap/api/maps/SwipeDismissView;

    iget-object p0, p0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/maps/WearMapView$OnDismissCallback;->onNotifySwipe()V

    :cond_0
    return-void
.end method
