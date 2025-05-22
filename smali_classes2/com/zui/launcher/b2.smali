.class public final synthetic Lcom/zui/launcher/b2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/b2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/b2;

    invoke-direct {v0}, Lcom/zui/launcher/b2;-><init>()V

    sput-object v0, Lcom/zui/launcher/b2;->a:Lcom/zui/launcher/b2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldIncludeView(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/PagedView;->l(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
