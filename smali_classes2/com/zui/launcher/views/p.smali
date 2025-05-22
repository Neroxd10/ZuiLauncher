.class public final synthetic Lcom/zui/launcher/views/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/views/ScrimView;

.field public final synthetic b:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/views/ScrimView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/p;->a:Lcom/zui/launcher/views/ScrimView;

    iput-object p2, p0, Lcom/zui/launcher/views/p;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/p;->a:Lcom/zui/launcher/views/ScrimView;

    iget-object p0, p0, Lcom/zui/launcher/views/p;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/ScrimView;->h(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
