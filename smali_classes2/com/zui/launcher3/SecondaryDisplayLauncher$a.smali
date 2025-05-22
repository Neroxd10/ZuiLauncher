.class Lcom/zui/launcher3/SecondaryDisplayLauncher$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher3/SecondaryDisplayLauncher;->k(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher3/SecondaryDisplayLauncher;


# direct methods
.method constructor <init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher$a;->a:Lcom/zui/launcher3/SecondaryDisplayLauncher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher$a;->a:Lcom/zui/launcher3/SecondaryDisplayLauncher;

    invoke-static {p1}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->a(Lcom/zui/launcher3/SecondaryDisplayLauncher;)Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher$a;->a:Lcom/zui/launcher3/SecondaryDisplayLauncher;

    invoke-static {p0}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->b(Lcom/zui/launcher3/SecondaryDisplayLauncher;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method
