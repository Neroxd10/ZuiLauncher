.class Lzui/widget/NumberPickerX$g;
.super Lzui/widget/NumberPickerX$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzui/widget/NumberPickerX$h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/NumberPickerX$a;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/NumberPickerX$g;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/Formatter;[Ljava/lang/Object;)V
    .locals 0

    const-string p0, "%03d"

    invoke-virtual {p1, p0, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method
