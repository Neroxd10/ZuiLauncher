.class public final synthetic Lcom/zui/launcher/touch/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/touch/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/touch/i;

    invoke-direct {v0}, Lcom/zui/launcher/touch/i;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/i;->a:Lcom/zui/launcher/touch/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/touch/ItemLongClickListener;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
