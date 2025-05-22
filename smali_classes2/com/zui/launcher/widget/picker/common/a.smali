.class public final synthetic Lcom/zui/launcher/widget/picker/common/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/WidgetCell;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/WidgetCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/common/a;->a:Lcom/zui/launcher/widget/WidgetCell;

    return-void
.end method


# virtual methods
.method public final onPreviewLoaded(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/common/a;->a:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    return-void
.end method
