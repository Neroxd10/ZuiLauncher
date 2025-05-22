.class Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$c;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$c;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->reset(Z)V

    return-void
.end method
