.class public Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/PagedOrientationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildBounds"
.end annotation


# instance fields
.field public final childPrimaryEnd:I

.field public final childSecondaryEnd:I

.field public final primaryDimension:I

.field public final secondaryDimension:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;->primaryDimension:I

    iput p2, p0, Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;->secondaryDimension:I

    iput p3, p0, Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    iput p4, p0, Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;->childSecondaryEnd:I

    return-void
.end method
