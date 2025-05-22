.class Lcom/zui/launcher/widget/picker/WidgetsFullSheet$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->D(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$b;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$b;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->e(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
