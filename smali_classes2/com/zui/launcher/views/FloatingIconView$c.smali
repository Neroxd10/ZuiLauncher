.class Lcom/zui/launcher/views/FloatingIconView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/views/FloatingIconView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/FloatingIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$c;->a:Lcom/zui/launcher/views/FloatingIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView$c;->a:Lcom/zui/launcher/views/FloatingIconView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/views/FloatingIconView;->e(Lcom/zui/launcher/views/FloatingIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
