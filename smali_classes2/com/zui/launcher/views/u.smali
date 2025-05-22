.class public final synthetic Lcom/zui/launcher/views/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/views/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/views/u;

    invoke-direct {v0}, Lcom/zui/launcher/views/u;-><init>()V

    sput-object v0, Lcom/zui/launcher/views/u;->a:Lcom/zui/launcher/views/u;

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

    check-cast p1, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$OnCloseListener;

    invoke-interface {p1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$OnCloseListener;->onSlideInViewClosed()V

    return-void
.end method
