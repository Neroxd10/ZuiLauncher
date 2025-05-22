.class Lcom/zui/launcher/views/SpringRelativeLayout$f;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/views/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/views/SpringRelativeLayout;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/views/SpringRelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout$f;->a:Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/views/SpringRelativeLayout;Lcom/zui/launcher/views/SpringRelativeLayout$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout$f;-><init>(Lcom/zui/launcher/views/SpringRelativeLayout;)V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/zui/launcher/views/SpringRelativeLayout$e;

    iget-object p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout$f;->a:Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, -0x41666666    # -0.3f

    invoke-direct {p1, p0, p2, v0}, Lcom/zui/launcher/views/SpringRelativeLayout$e;-><init>(Lcom/zui/launcher/views/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/zui/launcher/views/SpringRelativeLayout$e;

    iget-object p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout$f;->a:Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p1, p0, p2, v0}, Lcom/zui/launcher/views/SpringRelativeLayout$e;-><init>(Lcom/zui/launcher/views/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1
.end method
