.class final Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;
.super Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final b:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;-><init>(Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$a;)V

    iput-object p1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;->b:Landroid/graphics/Bitmap;

    return-void
.end method
