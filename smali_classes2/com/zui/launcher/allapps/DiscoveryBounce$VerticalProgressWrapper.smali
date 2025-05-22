.class public Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/DiscoveryBounce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerticalProgressWrapper"
.end annotation


# instance fields
.field private final a:F

.field private final b:Lcom/zui/launcher/allapps/AllAppsTransitionController;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/allapps/AllAppsTransitionController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;->b:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    iput p2, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;->a:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/allapps/AllAppsTransitionController;FLcom/zui/launcher/allapps/DiscoveryBounce$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;-><init>(Lcom/zui/launcher/allapps/AllAppsTransitionController;F)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;->b:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getProgress()F

    move-result v0

    iget p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;->a:F

    add-float/2addr v0, p0

    return v0
.end method

.method public setProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;->b:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    iget p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;->a:F

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->setProgress(F)V

    return-void
.end method
