.class Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->onFlingShowGlobalSearch(Landroid/view/View;ILcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherRootView;

.field final synthetic b:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;->a:Lcom/zui/launcher/LauncherRootView;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;->a:Lcom/zui/launcher/LauncherRootView;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;->a:Lcom/zui/launcher/LauncherRootView;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
