.class final Lcom/amap/api/maps/SwipeDismissTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/SwipeDismissTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$1;->a:Lcom/amap/api/maps/SwipeDismissTouchListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$1;->a:Lcom/amap/api/maps/SwipeDismissTouchListener;

    invoke-static {p0}, Lcom/amap/api/maps/SwipeDismissTouchListener;->a(Lcom/amap/api/maps/SwipeDismissTouchListener;)V

    return-void
.end method
