.class public final synthetic Lcom/zui/quickstep/views/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/views/s1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/views/s1;

    invoke-direct {v0}, Lcom/zui/quickstep/views/s1;-><init>()V

    sput-object v0, Lcom/zui/quickstep/views/s1;->a:Lcom/zui/quickstep/views/s1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    invoke-static {p1}, Lcom/zui/quickstep/views/TaskView;->o0(F)F

    move-result p0

    return p0
.end method
