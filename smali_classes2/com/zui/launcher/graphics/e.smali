.class public final synthetic Lcom/zui/launcher/graphics/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/graphics/DragPreviewProvider;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/graphics/DragPreviewProvider;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/graphics/e;->a:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iput p2, p0, Lcom/zui/launcher/graphics/e;->b:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/graphics/e;->a:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget p0, p0, Lcom/zui/launcher/graphics/e;->b:F

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;->b(FLandroid/graphics/Canvas;)V

    return-void
.end method
