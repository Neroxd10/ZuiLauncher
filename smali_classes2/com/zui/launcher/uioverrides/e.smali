.class public final synthetic Lcom/zui/launcher/uioverrides/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/uioverrides/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/uioverrides/e;

    invoke-direct {v0}, Lcom/zui/launcher/uioverrides/e;-><init>()V

    sput-object v0, Lcom/zui/launcher/uioverrides/e;->a:Lcom/zui/launcher/uioverrides/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/uioverrides/RecentsViewStateForPadController;->d(Landroid/animation/ValueAnimator;)V

    return-void
.end method
