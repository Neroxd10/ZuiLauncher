.class public final synthetic Lcom/zui/launcher/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/FirstFrameAnimatorHelper$b;

.field public final synthetic b:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/FirstFrameAnimatorHelper$b;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/x;->a:Lcom/zui/launcher/FirstFrameAnimatorHelper$b;

    iput-object p2, p0, Lcom/zui/launcher/x;->b:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/x;->a:Lcom/zui/launcher/FirstFrameAnimatorHelper$b;

    iget-object p0, p0, Lcom/zui/launcher/x;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method
