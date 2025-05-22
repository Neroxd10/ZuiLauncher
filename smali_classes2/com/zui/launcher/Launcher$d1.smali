.class Lcom/zui/launcher/Launcher$d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->Z0(Ljava/lang/Long;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Landroid/graphics/Bitmap;

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$d1;->g:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$d1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/Launcher$d1;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/launcher/Launcher$d1;->c:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/zui/launcher/Launcher$d1;->d:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/zui/launcher/Launcher$d1;->e:F

    iput p7, p0, Lcom/zui/launcher/Launcher$d1;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/Launcher$d1;->g:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/Launcher$d1;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/Launcher$d1;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/zui/launcher/Launcher$d1;->c:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/zui/launcher/Launcher$d1;->d:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/zui/launcher/Launcher$d1;->e:F

    iget v6, p0, Lcom/zui/launcher/Launcher$d1;->f:F

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/Launcher;->W(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V

    return-void
.end method
