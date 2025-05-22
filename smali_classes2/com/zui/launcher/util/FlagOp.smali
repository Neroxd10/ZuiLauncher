.class public interface abstract Lcom/zui/launcher/util/FlagOp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_OP:Lcom/zui/launcher/util/FlagOp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/util/n;->a:Lcom/zui/launcher/util/n;

    sput-object v0, Lcom/zui/launcher/util/FlagOp;->NO_OP:Lcom/zui/launcher/util/FlagOp;

    return-void
.end method

.method public static synthetic a(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static addFlag(I)Lcom/zui/launcher/util/FlagOp;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/l;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/l;-><init>(I)V

    return-object v0
.end method

.method public static synthetic b(I)I
    .locals 0

    return p0
.end method

.method public static synthetic c(II)I
    .locals 0

    not-int p0, p0

    and-int/2addr p0, p1

    return p0
.end method

.method public static removeFlag(I)Lcom/zui/launcher/util/FlagOp;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/m;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/m;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract apply(I)I
.end method
