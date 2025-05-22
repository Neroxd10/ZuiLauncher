.class Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$c;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$c;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object v0, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v0, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$c;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object v1, v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$c;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object v2, v2, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->h:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$c;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->h:Landroid/graphics/Bitmap;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
