.class Lcom/zui/quickstep/views/TaskMenuView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/TaskMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/TaskMenuView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/TaskMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView$a;->a:Lcom/zui/quickstep/views/TaskMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleUpdate(F)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView$a;->a:Lcom/zui/quickstep/views/TaskMenuView;

    invoke-static {v0}, Lcom/zui/quickstep/views/TaskMenuView;->a(Lcom/zui/quickstep/views/TaskMenuView;)Lcom/zui/quickstep/views/IconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView$a;->a:Lcom/zui/quickstep/views/TaskMenuView;

    invoke-static {p0}, Lcom/zui/quickstep/views/TaskMenuView;->b(Lcom/zui/quickstep/views/TaskMenuView;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setScale(F)V

    :cond_0
    return-void
.end method
