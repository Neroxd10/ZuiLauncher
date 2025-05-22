.class public final synthetic Lcom/zui/launcher/dragndrop/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/SafeCloseable;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/dragndrop/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/dragndrop/h;

    invoke-direct {v0}, Lcom/zui/launcher/dragndrop/h;-><init>()V

    sput-object v0, Lcom/zui/launcher/dragndrop/h;->a:Lcom/zui/launcher/dragndrop/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/dragndrop/DraggableView;->a()V

    return-void
.end method
