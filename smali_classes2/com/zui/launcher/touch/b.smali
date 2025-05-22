.class public final synthetic Lcom/zui/launcher/touch/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/touch/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/touch/b;

    invoke-direct {v0}, Lcom/zui/launcher/touch/b;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/b;->a:Lcom/zui/launcher/touch/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;FF)V
    .locals 0

    check-cast p1, Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method
