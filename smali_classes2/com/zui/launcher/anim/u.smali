.class public final synthetic Lcom/zui/launcher/anim/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/anim/SpringObjectAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/anim/SpringObjectAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/u;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/u;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/anim/SpringObjectAnimator;->f(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
