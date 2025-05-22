.class public abstract Lcom/zui/launcher/graphics/IconShape;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/graphics/IconShape$Squircle;,
        Lcom/zui/launcher/graphics/IconShape$TearDrop;,
        Lcom/zui/launcher/graphics/IconShape$RoundedSquare;,
        Lcom/zui/launcher/graphics/IconShape$Circle;,
        Lcom/zui/launcher/graphics/IconShape$b;,
        Lcom/zui/launcher/graphics/IconShape$c;
    }
.end annotation


# static fields
.field public static final DEFAULT_PATH_SIZE:I = 0x64

.field private static b:Lcom/zui/launcher/graphics/IconShape;

.field private static c:Landroid/graphics/Path;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/graphics/IconShape$Circle;

    invoke-direct {v0}, Lcom/zui/launcher/graphics/IconShape$Circle;-><init>()V

    sput-object v0, Lcom/zui/launcher/graphics/IconShape;->b:Lcom/zui/launcher/graphics/IconShape;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/graphics/IconShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->supportChangeShape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f16000a

    goto :goto_0

    :cond_0
    const v1, 0x7f160009

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    const-string v2, "shapes"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    new-array v5, v4, [I

    const v6, 0x7f04014a

    const/4 v7, 0x0

    aput v6, v5, v7

    new-instance v6, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v6, v7}, Lcom/zui/launcher/util/IntArray;-><init>(I)V

    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-ne v8, v3, :cond_3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_4

    :cond_3
    if-eq v8, v4, :cond_4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    invoke-static {v10, v11}, Lcom/zui/launcher/graphics/IconShape;->b(Ljava/lang/String;F)Lcom/zui/launcher/graphics/IconShape;

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, v8, v6}, Lcom/zui/launcher/util/Themes;->createValueMap(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/zui/launcher/util/IntArray;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v10, Lcom/zui/launcher/graphics/IconShape;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;F)Lcom/zui/launcher/graphics/IconShape;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Circle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "RoundedSquare"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "Squircle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "TearDrop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    new-instance p0, Lcom/zui/launcher/graphics/IconShape$Squircle;

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/IconShape$Squircle;-><init>(F)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shape type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/zui/launcher/graphics/IconShape$TearDrop;

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/IconShape$TearDrop;-><init>(F)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/zui/launcher/graphics/IconShape$RoundedSquare;

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/IconShape$RoundedSquare;-><init>(F)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/zui/launcher/graphics/IconShape$Circle;

    invoke-direct {p0}, Lcom/zui/launcher/graphics/IconShape$Circle;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f5ab76f -> :sswitch_3
        -0x2aba5404 -> :sswitch_2
        -0x1b5a6df6 -> :sswitch_1
        0x7851a8f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getNormalizationScale()F
    .locals 3

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->iconVisualSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public static getShape()Lcom/zui/launcher/graphics/IconShape;
    .locals 1

    sget-object v0, Lcom/zui/launcher/graphics/IconShape;->b:Lcom/zui/launcher/graphics/IconShape;

    return-object v0
.end method

.method public static getShapePath()Landroid/graphics/Path;
    .locals 4

    sget-object v0, Lcom/zui/launcher/graphics/IconShape;->c:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShape()Lcom/zui/launcher/graphics/IconShape;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/zui/launcher/graphics/IconShape;->addToPath(Landroid/graphics/Path;FFF)V

    sput-object v0, Lcom/zui/launcher/graphics/IconShape;->c:Landroid/graphics/Path;

    :cond_0
    sget-object v0, Lcom/zui/launcher/graphics/IconShape;->c:Landroid/graphics/Path;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/graphics/IconShape;->pickBestShape(Landroid/content/Context;)V

    return-void
.end method

.method protected static pickBestShape(Landroid/content/Context;)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    new-instance v0, Landroid/graphics/Region;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    new-instance v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5, v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v1, v1, v2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    invoke-static {p0}, Lcom/zui/launcher/graphics/IconShape;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move-object v9, v7

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zui/launcher/graphics/IconShape;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12, v12, v11}, Lcom/zui/launcher/graphics/IconShape;->addToPath(Landroid/graphics/Path;FFF)V

    invoke-virtual {v6, v5, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v11, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v3, v11}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-static {v6}, Lcom/zui/launcher/icons/GraphicsUtils;->getArea(Landroid/graphics/Region;)I

    move-result v11

    if-ge v11, v8, :cond_0

    move-object v9, v10

    move v8, v11

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    sput-object v9, Lcom/zui/launcher/graphics/IconShape;->b:Lcom/zui/launcher/graphics/IconShape;

    :cond_2
    const/16 p0, 0x64

    invoke-virtual {v4, v1, v1, p0, p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    new-instance p0, Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    sput-object p0, Lcom/zui/launcher/graphics/IconShape;->c:Landroid/graphics/Path;

    invoke-static {v4, v2, v7}, Lcom/zui/launcher/icons/IconNormalizer;->normalizeAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;)F

    return-void
.end method


# virtual methods
.method public abstract addToPath(Landroid/graphics/Path;FFF)V
.end method

.method public abstract createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/zui/launcher/views/ClipPathView;",
            ">(TT;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "FZ)",
            "Landroid/animation/Animator;"
        }
    .end annotation
.end method

.method public abstract drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
.end method

.method public enableShapeDetection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAttrValue(I)Landroid/util/TypedValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/graphics/IconShape;->a:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/TypedValue;

    :goto_0
    return-object p0
.end method
