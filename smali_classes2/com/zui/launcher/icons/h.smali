.class public final synthetic Lcom/zui/launcher/icons/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/icons/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/icons/h;

    invoke-direct {v0}, Lcom/zui/launcher/icons/h;-><init>()V

    sput-object v0, Lcom/zui/launcher/icons/h;->a:Lcom/zui/launcher/icons/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/icons/GraphicsUtils;->b()V

    return-void
.end method
