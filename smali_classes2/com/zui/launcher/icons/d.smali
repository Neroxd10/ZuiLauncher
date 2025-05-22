.class public final synthetic Lcom/zui/launcher/icons/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/BaseIconFactory;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/BaseIconFactory;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/d;->a:Lcom/zui/launcher/icons/BaseIconFactory;

    iput-object p2, p0, Lcom/zui/launcher/icons/d;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/zui/launcher/icons/d;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/d;->a:Lcom/zui/launcher/icons/BaseIconFactory;

    iget-object v1, p0, Lcom/zui/launcher/icons/d;->b:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/zui/launcher/icons/d;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->c(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    return-void
.end method
