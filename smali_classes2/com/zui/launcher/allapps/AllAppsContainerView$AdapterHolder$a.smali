.class Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/SpringRelativeLayout$OnOverScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b(Landroid/view/View;Lcom/zui/launcher/util/ItemInfoMatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder$a;->a:Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollStateChange()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder$a;->a:Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/views/SpringRelativeLayout;->releaseOverScroll()V

    return-void
.end method
