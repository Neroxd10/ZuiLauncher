.class Lcom/zui/launcher/XDockViewLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewLayout;->addItemView(Lcom/zui/launcher/ItemInfo;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/XDockViewLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewLayout$a;->a:Lcom/zui/launcher/XDockViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout$a;->a:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout$a;->a:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewLayout;->a(Lcom/zui/launcher/XDockViewLayout;)Lcom/zui/launcher/XDockView;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout$a;->a:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->calculateRtlRelativeX()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout$a;->a:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewLayout;->a(Lcom/zui/launcher/XDockViewLayout;)Lcom/zui/launcher/XDockView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :goto_0
    return-void
.end method
