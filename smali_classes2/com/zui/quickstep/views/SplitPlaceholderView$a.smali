.class Lcom/zui/quickstep/views/SplitPlaceholderView$a;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/SplitPlaceholderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/zui/quickstep/views/SplitPlaceholderView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/quickstep/views/SplitPlaceholderView;)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/quickstep/views/SplitPlaceholderView;F)V
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/quickstep/views/SplitPlaceholderView;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/SplitPlaceholderView$a;->a(Lcom/zui/quickstep/views/SplitPlaceholderView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/views/SplitPlaceholderView;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/views/SplitPlaceholderView$a;->b(Lcom/zui/quickstep/views/SplitPlaceholderView;F)V

    return-void
.end method
