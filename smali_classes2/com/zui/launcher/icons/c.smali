.class public final synthetic Lcom/zui/launcher/icons/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/BaseIconFactory;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Lcom/zui/launcher/icons/BitmapInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/BaseIconFactory;Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/BitmapInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/c;->a:Lcom/zui/launcher/icons/BaseIconFactory;

    iput-object p2, p0, Lcom/zui/launcher/icons/c;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/zui/launcher/icons/c;->c:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/c;->a:Lcom/zui/launcher/icons/BaseIconFactory;

    iget-object v1, p0, Lcom/zui/launcher/icons/c;->b:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/zui/launcher/icons/c;->c:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->b(Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/BitmapInfo;Landroid/graphics/Canvas;)V

    return-void
.end method
