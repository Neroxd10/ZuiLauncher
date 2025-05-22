.class public interface abstract Lcom/zui/launcher/widget/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;
    }
.end annotation


# virtual methods
.method public abstract loadPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Landroid/os/CancellationSignal;
    .param p1    # Lcom/zui/launcher/views/ActivityContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
