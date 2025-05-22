.class public final synthetic Lcom/zui/launcher/touch/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/touch/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/touch/k;

    invoke-direct {v0}, Lcom/zui/launcher/touch/k;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/k;->a:Lcom/zui/launcher/touch/k;

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

    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
