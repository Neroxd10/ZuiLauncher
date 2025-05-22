.class public final synthetic Lcom/zui/launcher/i3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/i3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/i3;

    invoke-direct {v0}, Lcom/zui/launcher/i3;-><init>()V

    sput-object v0, Lcom/zui/launcher/i3;->a:Lcom/zui/launcher/i3;

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

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    return-void
.end method
