.class public final synthetic Lcom/zui/quickstep/n4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/n4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/n4;

    invoke-direct {v0}, Lcom/zui/quickstep/n4;-><init>()V

    sput-object v0, Lcom/zui/quickstep/n4;->a:Lcom/zui/quickstep/n4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1, p2, p3}, Lcom/zui/quickstep/util/TaskViewSimulator;->setTaskRectTranslation(II)V

    return-void
.end method
