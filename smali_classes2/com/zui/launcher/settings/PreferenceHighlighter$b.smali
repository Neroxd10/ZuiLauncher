.class Lcom/zui/launcher/settings/PreferenceHighlighter$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/PreferenceHighlighter;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
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

    iput-object p1, p0, Lcom/zui/launcher/settings/PreferenceHighlighter$b;->a:Lcom/zui/launcher/settings/PreferenceHighlighter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter$b;->a:Lcom/zui/launcher/settings/PreferenceHighlighter;

    invoke-static {p0}, Lcom/zui/launcher/settings/PreferenceHighlighter;->d(Lcom/zui/launcher/settings/PreferenceHighlighter;)V

    return-void
.end method
