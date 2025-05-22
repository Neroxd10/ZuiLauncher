.class public final synthetic Lcom/zui/launcher/widget/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

.field public final synthetic b:Lcom/zui/launcher/model/WidgetItem;

.field public final synthetic c:Landroid/util/Size;

.field public final synthetic d:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/d;->a:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    iput-object p2, p0, Lcom/zui/launcher/widget/d;->b:Lcom/zui/launcher/model/WidgetItem;

    iput-object p3, p0, Lcom/zui/launcher/widget/d;->c:Landroid/util/Size;

    iput-object p4, p0, Lcom/zui/launcher/widget/d;->d:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/d;->a:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    iget-object v1, p0, Lcom/zui/launcher/widget/d;->b:Lcom/zui/launcher/model/WidgetItem;

    iget-object v2, p0, Lcom/zui/launcher/widget/d;->c:Landroid/util/Size;

    iget-object p0, p0, Lcom/zui/launcher/widget/d;->d:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->c(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)V

    return-void
.end method
