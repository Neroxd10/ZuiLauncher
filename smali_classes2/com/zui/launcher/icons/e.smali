.class public final synthetic Lcom/zui/launcher/icons/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/e;->a:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/zui/launcher/icons/e;->b:I

    iput p3, p0, Lcom/zui/launcher/icons/e;->c:I

    iput p4, p0, Lcom/zui/launcher/icons/e;->d:I

    iput p5, p0, Lcom/zui/launcher/icons/e;->e:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/icons/e;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/launcher/icons/e;->b:I

    iget v2, p0, Lcom/zui/launcher/icons/e;->c:I

    iget v3, p0, Lcom/zui/launcher/icons/e;->d:I

    iget v4, p0, Lcom/zui/launcher/icons/e;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/zui/launcher/icons/BitmapRenderer;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Canvas;)V

    return-void
.end method
