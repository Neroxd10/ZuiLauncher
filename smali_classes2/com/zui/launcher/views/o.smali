.class public final synthetic Lcom/zui/launcher/views/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/views/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/views/o;

    invoke-direct {v0}, Lcom/zui/launcher/views/o;-><init>()V

    sput-object v0, Lcom/zui/launcher/views/o;->a:Lcom/zui/launcher/views/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/views/FloatingIconView;->p()V

    return-void
.end method
