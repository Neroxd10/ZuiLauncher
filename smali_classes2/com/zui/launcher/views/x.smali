.class public final synthetic Lcom/zui/launcher/views/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/views/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/views/x;

    invoke-direct {v0}, Lcom/zui/launcher/views/x;-><init>()V

    sput-object v0, Lcom/zui/launcher/views/x;->a:Lcom/zui/launcher/views/x;

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

    invoke-static {p1}, Lcom/zui/launcher/views/OptionsPopupView;->startSettings(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
