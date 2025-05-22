.class public final synthetic Lcom/zui/launcher/qsb/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/qsb/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/qsb/c;

    invoke-direct {v0}, Lcom/zui/launcher/qsb/c;-><init>()V

    sput-object v0, Lcom/zui/launcher/qsb/c;->a:Lcom/zui/launcher/qsb/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newView(Landroid/content/Context;)Lcom/zui/launcher/qsb/QsbWidgetHostView;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->d(Landroid/content/Context;)Lcom/zui/launcher/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method
