.class public final synthetic Lcom/zui/launcher/dragndrop/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;

.field public final synthetic b:I

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;ILandroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/j;->a:Lcom/zui/launcher/Launcher;

    iput p2, p0, Lcom/zui/launcher/dragndrop/j;->b:I

    iput-object p3, p0, Lcom/zui/launcher/dragndrop/j;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/zui/launcher/dragndrop/j;->d:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/j;->a:Lcom/zui/launcher/Launcher;

    iget v1, p0, Lcom/zui/launcher/dragndrop/j;->b:I

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/j;->c:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/j;->d:Landroid/graphics/Point;

    invoke-static {v0, v1, v2, p0}, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->c(Lcom/zui/launcher/Launcher;ILandroid/graphics/Bitmap;Landroid/graphics/Point;)Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;

    move-result-object p0

    return-object p0
.end method
