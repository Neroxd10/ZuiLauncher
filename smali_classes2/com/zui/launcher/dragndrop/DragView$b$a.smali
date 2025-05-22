.class Lcom/zui/launcher/dragndrop/DragView$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Path;

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragView$b;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragView$b;Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$b$a;->b:Lcom/zui/launcher/dragndrop/DragView$b;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragView$b$a;->a:Landroid/graphics/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$b$a;->b:Lcom/zui/launcher/dragndrop/DragView$b;

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$b$a;->a:Landroid/graphics/Path;

    invoke-static {v0, v1}, Lcom/zui/launcher/dragndrop/DragView;->x(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$b$a;->b:Lcom/zui/launcher/dragndrop/DragView$b;

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragView$b;->a:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$b$a;->b:Lcom/zui/launcher/dragndrop/DragView$b;

    iget-object v1, v1, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {v1, v0}, Lcom/zui/launcher/dragndrop/DragView;->c(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/ColorMatrixColorFilter;)Landroid/graphics/ColorMatrixColorFilter;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$b$a;->b:Lcom/zui/launcher/dragndrop/DragView$b;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DragView;->d(Lcom/zui/launcher/dragndrop/DragView;)V

    return-void
.end method
