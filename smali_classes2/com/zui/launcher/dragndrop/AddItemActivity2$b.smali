.class Lcom/zui/launcher/dragndrop/AddItemActivity2$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/AddItemActivity2;->d(Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/zui/launcher/model/WidgetItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/function/Supplier;

.field final synthetic b:Lcom/zui/launcher/dragndrop/AddItemActivity2;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/AddItemActivity2;Ljava/util/function/Supplier;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->b:Lcom/zui/launcher/dragndrop/AddItemActivity2;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->a:Ljava/util/function/Supplier;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/zui/launcher/model/WidgetItem;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->a:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/WidgetItem;

    return-object p0
.end method

.method protected b(Lcom/zui/launcher/model/WidgetItem;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->b:Lcom/zui/launcher/dragndrop/AddItemActivity2;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->b(Lcom/zui/launcher/dragndrop/AddItemActivity2;)Lcom/zui/launcher/widget/WidgetCell;

    move-result-object v0

    iget v1, p1, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget v2, p1, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/widget/WidgetCell;->setPreviewSize(II)Landroid/util/Size;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->b:Lcom/zui/launcher/dragndrop/AddItemActivity2;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->b(Lcom/zui/launcher/dragndrop/AddItemActivity2;)Lcom/zui/launcher/widget/WidgetCell;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->b:Lcom/zui/launcher/dragndrop/AddItemActivity2;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->c(Lcom/zui/launcher/dragndrop/AddItemActivity2;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/widget/WidgetCell;->applyFromCellItem(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/widget/WidgetPreviewLoader;)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->b:Lcom/zui/launcher/dragndrop/AddItemActivity2;

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->b(Lcom/zui/launcher/dragndrop/AddItemActivity2;)Lcom/zui/launcher/widget/WidgetCell;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/WidgetCell;->ensurePreview()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->a([Ljava/lang/Void;)Lcom/zui/launcher/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;->b(Lcom/zui/launcher/model/WidgetItem;)V

    return-void
.end method
