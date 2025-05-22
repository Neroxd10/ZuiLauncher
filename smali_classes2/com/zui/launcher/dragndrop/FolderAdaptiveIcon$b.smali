.class Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final b:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final c:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final d:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p3, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->c:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p4, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    and-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->c:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    and-int/2addr p0, v0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v6, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->c:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;->d:Landroid/graphics/Path;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$a;)V

    return-object v6
.end method
