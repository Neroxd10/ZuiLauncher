.class public Lcom/zui/launcher/graphics/TriangleShape;
.super Landroid/graphics/drawable/shapes/PathShape;
.source ""


# instance fields
.field private a:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    iput-object p1, p0, Lcom/zui/launcher/graphics/TriangleShape;->a:Landroid/graphics/Path;

    return-void
.end method

.method public static create(FFZ)Lcom/zui/launcher/graphics/TriangleShape;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    div-float p2, p0, v1

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    div-float p2, p0, v1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance p2, Lcom/zui/launcher/graphics/TriangleShape;

    invoke-direct {p2, v0, p0, p1}, Lcom/zui/launcher/graphics/TriangleShape;-><init>(Landroid/graphics/Path;FF)V

    return-object p2
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zui/launcher/graphics/TriangleShape;->a:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method
