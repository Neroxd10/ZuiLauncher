.class public final synthetic Lcom/zui/launcher/views/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/views/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/views/v;

    invoke-direct {v0}, Lcom/zui/launcher/views/v;-><init>()V

    sput-object v0, Lcom/zui/launcher/views/v;->a:Lcom/zui/launcher/views/v;

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

    check-cast p1, Lcom/zui/launcher/views/AbstractSlideInView$OnCloseListener;

    invoke-interface {p1}, Lcom/zui/launcher/views/AbstractSlideInView$OnCloseListener;->onSlideInViewClosed()V

    return-void
.end method
