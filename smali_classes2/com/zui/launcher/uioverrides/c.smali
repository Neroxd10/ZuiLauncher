.class public final synthetic Lcom/zui/launcher/uioverrides/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/UiThreadHelper$AsyncCommand;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/uioverrides/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/uioverrides/c;

    invoke-direct {v0}, Lcom/zui/launcher/uioverrides/c;-><init>()V

    sput-object v0, Lcom/zui/launcher/uioverrides/c;->a:Lcom/zui/launcher/uioverrides/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Landroid/content/Context;II)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->a(Landroid/content/Context;II)V

    return-void
.end method
