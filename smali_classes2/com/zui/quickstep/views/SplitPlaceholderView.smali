.class public Lcom/zui/quickstep/views/SplitPlaceholderView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final ALPHA_FLOAT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/views/SplitPlaceholderView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/zui/quickstep/util/SplitSelectStateController;

.field private b:Lcom/zui/quickstep/views/IconView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/quickstep/views/SplitPlaceholderView$a;

    const-string v1, "SplitViewAlpha"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/SplitPlaceholderView$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/SplitPlaceholderView;->ALPHA_FLOAT:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getSplitController()Lcom/zui/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/SplitPlaceholderView;->a:Lcom/zui/quickstep/util/SplitSelectStateController;

    return-object p0
.end method

.method public init(Lcom/zui/quickstep/util/SplitSelectStateController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/SplitPlaceholderView;->a:Lcom/zui/quickstep/util/SplitSelectStateController;

    return-void
.end method

.method public setIcon(Lcom/zui/quickstep/views/IconView;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/SplitPlaceholderView;->b:Lcom/zui/quickstep/views/IconView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/quickstep/views/IconView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/IconView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/SplitPlaceholderView;->b:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/SplitPlaceholderView;->b:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/IconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/zui/quickstep/views/SplitPlaceholderView;->b:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
