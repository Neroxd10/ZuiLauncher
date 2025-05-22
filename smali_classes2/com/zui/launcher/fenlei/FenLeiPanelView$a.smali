.class Lcom/zui/launcher/fenlei/FenLeiPanelView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/fenlei/FenLeiPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/fenlei/FenleiListView;

.field final synthetic b:Lcom/zui/launcher/fenlei/FenLeiPanelView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;Lcom/zui/launcher/fenlei/FenleiListView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iput-object p2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;->a:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;->a:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-virtual {p1}, Lcom/zui/launcher/fenlei/FenleiListView;->getAllItems()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->b(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/category/CategorySettings;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a(Lcom/zui/launcher/fenlei/FenLeiPanelView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/launcher/category/CategorySettings;->addFolderIgnorePackages(JLjava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {p1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->hideOneself()V

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {p0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->trackEventIgnoreClick()V

    return-void
.end method
