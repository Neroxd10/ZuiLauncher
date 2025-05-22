.class Lcom/zui/launcher/icons/ThemedIconDrawable$b;
.super Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/ThemedIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;IIZ)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-direct {p0, v0, v1, p4}, Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;IZ)V

    iput-object p1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable$b;->a:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iput p2, p0, Lcom/zui/launcher/icons/ThemedIconDrawable$b;->c:I

    iput p3, p0, Lcom/zui/launcher/icons/ThemedIconDrawable$b;->b:I

    return-void
.end method


# virtual methods
.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/ThemedIconDrawable$b;->newDrawable()Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable()Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 1

    new-instance v0, Lcom/zui/launcher/icons/ThemedIconDrawable;

    invoke-direct {v0, p0}, Lcom/zui/launcher/icons/ThemedIconDrawable;-><init>(Lcom/zui/launcher/icons/ThemedIconDrawable$b;)V

    return-object v0
.end method
