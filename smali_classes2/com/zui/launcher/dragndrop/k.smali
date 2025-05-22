.class public final synthetic Lcom/zui/launcher/dragndrop/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Lcom/zui/launcher/folder/FolderIcon;


# direct methods
.method public synthetic constructor <init>(FFLcom/zui/launcher/folder/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/dragndrop/k;->a:F

    iput p2, p0, Lcom/zui/launcher/dragndrop/k;->b:F

    iput-object p3, p0, Lcom/zui/launcher/dragndrop/k;->c:Lcom/zui/launcher/folder/FolderIcon;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/dragndrop/k;->a:F

    iget v1, p0, Lcom/zui/launcher/dragndrop/k;->b:F

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/k;->c:Lcom/zui/launcher/folder/FolderIcon;

    invoke-static {v0, v1, p0, p1}, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->b(FFLcom/zui/launcher/folder/FolderIcon;Landroid/graphics/Canvas;)V

    return-void
.end method
