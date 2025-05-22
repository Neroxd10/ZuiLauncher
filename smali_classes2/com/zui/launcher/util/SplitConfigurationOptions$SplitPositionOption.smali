.class public Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/SplitConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitPositionOption"
.end annotation


# instance fields
.field public final mIconResId:I

.field public final mStagePosition:I

.field public final mStageType:I
    .annotation build Lcom/zui/launcher/util/SplitConfigurationOptions$StageType;
    .end annotation
.end field

.field public final mTextResId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;->mIconResId:I

    iput p2, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;->mTextResId:I

    iput p3, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;->mStagePosition:I

    iput p4, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;->mStageType:I

    return-void
.end method
