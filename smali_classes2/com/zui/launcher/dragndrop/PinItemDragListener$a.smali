.class Lcom/zui/launcher/dragndrop/PinItemDragListener$a;
.super Lcom/zui/launcher/widget/PendingAddWidgetInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/PinItemDragListener;->createDragHelper()Lcom/zui/launcher/widget/PendingItemDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/PinItemDragListener;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;)V
    .locals 0

    iput-object p3, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener$a;->f:Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;

    invoke-direct {p0, p2}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener$a;->f:Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;

    return-object p0
.end method
