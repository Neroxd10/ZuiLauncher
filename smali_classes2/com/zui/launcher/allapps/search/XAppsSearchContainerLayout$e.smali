.class Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$e;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;Lcom/zui/launcher/allapps/AllTaskIconAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$e;->c:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    iput-object p2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$e;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    iput p3, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$e;->b:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$e;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->getItemViewType(I)I

    move-result p1

    invoke-static {p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->isEmptyView(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$e;->b:I

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
