.class public abstract Lcom/zui/launcher/LauncherState$PageAlphaProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PageAlphaProvider"
.end annotation


# instance fields
.field public final interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public abstract getPageAlpha(I)F
.end method
