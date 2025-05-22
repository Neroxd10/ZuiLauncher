.class public final synthetic Lcom/zui/launcher/anim/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/anim/SpringAnimationBuilder;

.field public final synthetic b:Landroid/util/FloatProperty;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/r;->a:Lcom/zui/launcher/anim/SpringAnimationBuilder;

    iput-object p2, p0, Lcom/zui/launcher/anim/r;->b:Landroid/util/FloatProperty;

    iput-object p3, p0, Lcom/zui/launcher/anim/r;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/anim/r;->a:Lcom/zui/launcher/anim/SpringAnimationBuilder;

    iget-object v1, p0, Lcom/zui/launcher/anim/r;->b:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/zui/launcher/anim/r;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->h(Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V

    return-void
.end method
