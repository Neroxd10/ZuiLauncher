.class public final synthetic Lcom/zui/launcher/e2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/e2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/e2;

    invoke-direct {v0}, Lcom/zui/launcher/e2;-><init>()V

    sput-object v0, Lcom/zui/launcher/e2;->a:Lcom/zui/launcher/e2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->u(Landroid/view/View;)V

    return-void
.end method
