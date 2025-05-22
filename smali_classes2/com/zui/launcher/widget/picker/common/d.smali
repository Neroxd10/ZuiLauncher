.class public final synthetic Lcom/zui/launcher/widget/picker/common/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/picker/common/CommonAdapter;

.field public final synthetic b:Lcom/zui/launcher/model/WidgetItem;

.field public final synthetic c:Landroid/util/Size;

.field public final synthetic d:Lcom/zui/launcher/BaseActivity;

.field public final synthetic e:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

.field public final synthetic f:Lcom/zui/launcher/widget/WidgetCell;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/picker/common/CommonAdapter;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/BaseActivity;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;Lcom/zui/launcher/widget/WidgetCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/common/d;->a:Lcom/zui/launcher/widget/picker/common/CommonAdapter;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/common/d;->b:Lcom/zui/launcher/model/WidgetItem;

    iput-object p3, p0, Lcom/zui/launcher/widget/picker/common/d;->c:Landroid/util/Size;

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/common/d;->d:Lcom/zui/launcher/BaseActivity;

    iput-object p5, p0, Lcom/zui/launcher/widget/picker/common/d;->e:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

    iput-object p6, p0, Lcom/zui/launcher/widget/picker/common/d;->f:Lcom/zui/launcher/widget/WidgetCell;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/common/d;->a:Lcom/zui/launcher/widget/picker/common/CommonAdapter;

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/common/d;->b:Lcom/zui/launcher/model/WidgetItem;

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/common/d;->c:Landroid/util/Size;

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/common/d;->d:Lcom/zui/launcher/BaseActivity;

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/common/d;->e:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

    iget-object v5, p0, Lcom/zui/launcher/widget/picker/common/d;->f:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->a(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/BaseActivity;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;Lcom/zui/launcher/widget/WidgetCell;)V

    return-void
.end method
