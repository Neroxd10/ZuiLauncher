.class Lcom/zui/launcher/dragndrop/AddItemActivity2$a;
.super Landroid/view/View$DragShadowBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/AddItemActivity2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dragndrop/AddItemActivity2;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/AddItemActivity2;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2$a;->a:Lcom/zui/launcher/dragndrop/AddItemActivity2;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    const/16 p0, 0xa

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Point;->set(II)V

    const/4 p0, 0x5

    invoke-virtual {p2, p0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
