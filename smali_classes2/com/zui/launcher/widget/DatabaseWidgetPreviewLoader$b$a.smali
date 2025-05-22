.class Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->e(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iput-object p2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    invoke-static {v0}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->a(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object v0, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v0, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object v1, v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    invoke-static {v2}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->a(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    invoke-static {v0}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->b(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object v1, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v2, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;

    iget-object v0, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->g:[J

    iget-object v3, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->h(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;[JLandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->a:Landroid/graphics/Bitmap;

    iput-object p0, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->h:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object v0, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v0, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->b:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    iget-object v1, v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;->a:Landroid/graphics/Bitmap;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
