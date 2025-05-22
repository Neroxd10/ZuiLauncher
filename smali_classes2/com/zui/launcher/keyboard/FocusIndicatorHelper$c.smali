.class Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/keyboard/FocusIndicatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Z

.field private c:Z

.field final synthetic d:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/keyboard/FocusIndicatorHelper;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->d:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->c:Z

    iput-object p2, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->c:Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->d:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->setCurrentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;->c:Z

    :cond_0
    return-void
.end method
