.class public final synthetic Lcom/zui/launcher/globalsearch/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

.field public final synthetic b:Lcom/zui/launcher/Launcher;

.field public final synthetic c:Landroid/animation/ValueAnimator;

.field public final synthetic d:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/c;->a:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/c;->b:Lcom/zui/launcher/Launcher;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/c;->c:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/c;->d:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/c;->a:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/c;->b:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/c;->c:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->k(Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
