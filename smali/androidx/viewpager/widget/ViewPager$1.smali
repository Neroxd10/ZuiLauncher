.class final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/viewpager/widget/ViewPager$ItemInfo;Landroidx/viewpager/widget/ViewPager$ItemInfo;)I
    .locals 0

    iget p0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget p1, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Landroidx/viewpager/widget/ViewPager$ItemInfo;Landroidx/viewpager/widget/ViewPager$ItemInfo;)I

    move-result p0

    return p0
.end method
