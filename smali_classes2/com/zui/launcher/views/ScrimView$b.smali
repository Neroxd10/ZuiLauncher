.class Lcom/zui/launcher/views/ScrimView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/ScrimView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/zui/launcher/views/ScrimView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/ScrimView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/ScrimView$b;->b:Lcom/zui/launcher/views/ScrimView;

    iput-object p2, p0, Lcom/zui/launcher/views/ScrimView$b;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$b;->b:Lcom/zui/launcher/views/ScrimView;

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView$b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$b;->b:Lcom/zui/launcher/views/ScrimView;

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView$b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p0}, Lcom/zui/launcher/views/ScrimView;->b(Lcom/zui/launcher/views/ScrimView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
