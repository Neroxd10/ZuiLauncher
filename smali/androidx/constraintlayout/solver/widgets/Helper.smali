.class public Landroidx/constraintlayout/solver/widgets/Helper;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source ""


# instance fields
.field protected mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mWidgetsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    return-void
.end method

.method public removeAllIds()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    return-void
.end method
