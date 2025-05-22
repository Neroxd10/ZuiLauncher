.class Lcom/zui/launcher/settings/PreferenceHighlighter$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/PreferenceHighlighter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/settings/PreferenceHighlighter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/PreferenceHighlighter;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/PreferenceHighlighter$c;->a:Lcom/zui/launcher/settings/PreferenceHighlighter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/settings/PreferenceHighlighter$c;->a:Lcom/zui/launcher/settings/PreferenceHighlighter;

    invoke-static {p1}, Lcom/zui/launcher/settings/PreferenceHighlighter;->c(Lcom/zui/launcher/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter$c;->a:Lcom/zui/launcher/settings/PreferenceHighlighter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
