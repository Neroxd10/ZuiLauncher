.class Lcom/zui/launcher/graphics/ShadowDrawable$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/ShadowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Z

.field h:Landroid/graphics/Bitmap;

.field i:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/graphics/ShadowDrawable$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/graphics/ShadowDrawable$b;-><init>()V

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable$b;->a:I

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/zui/launcher/graphics/ShadowDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/graphics/ShadowDrawable;-><init>(Lcom/zui/launcher/graphics/ShadowDrawable$b;Lcom/zui/launcher/graphics/ShadowDrawable$a;)V

    return-object v0
.end method
