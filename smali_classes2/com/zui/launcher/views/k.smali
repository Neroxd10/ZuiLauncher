.class public final synthetic Lcom/zui/launcher/views/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/views/FloatingIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/views/FloatingIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/k;->a:Lcom/zui/launcher/views/FloatingIconView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/k;->a:Lcom/zui/launcher/views/FloatingIconView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/FloatingIconView;->r(Landroid/animation/ValueAnimator;)V

    return-void
.end method
