.class Lcom/zui/launcher/folder/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field public e:Lcom/zui/launcher/folder/e;

.field public f:Z

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Lcom/zui/launcher/WorkspaceItemInfo;


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/folder/f;->a:F

    iput p2, p0, Lcom/zui/launcher/folder/f;->b:F

    iput p3, p0, Lcom/zui/launcher/folder/f;->c:F

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/zui/launcher/folder/e;->d:[F

    const/4 v2, 0x1

    aget v2, v1, v2

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    aget v2, v1, v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v1, v1, p3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/folder/e;->d()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iput p1, p0, Lcom/zui/launcher/folder/f;->a:F

    iput p2, p0, Lcom/zui/launcher/folder/f;->b:F

    iput p3, p0, Lcom/zui/launcher/folder/f;->c:F

    return-void
.end method
