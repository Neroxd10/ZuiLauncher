.class Lcom/zui/launcher/views/FloatingIconView$d;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/FloatingIconView;->z(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/views/FloatingIconView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/FloatingIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$d;->a:Lcom/zui/launcher/views/FloatingIconView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$d;->a:Lcom/zui/launcher/views/FloatingIconView;

    invoke-static {p1}, Lcom/zui/launcher/views/FloatingIconView;->f(Lcom/zui/launcher/views/FloatingIconView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView$d;->a:Lcom/zui/launcher/views/FloatingIconView;

    invoke-static {p0}, Lcom/zui/launcher/views/FloatingIconView;->g(Lcom/zui/launcher/views/FloatingIconView;)F

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
